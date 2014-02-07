package com.brewduck.web.account.controller;

import com.brewduck.framework.crypto.SimpleCrypto;
import com.brewduck.framework.security.LoginAuthorityType;
import com.brewduck.framework.security.UserAuthenticationSuccessHandler;
import com.brewduck.web.account.service.AccountService;
import com.brewduck.web.domain.Account;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;


/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/account")
public class AccountController {

    private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
    private static String ENABLE  = "ENABLE";   // 계정 활성화
    private static String DISABLE = "DISABLE";  // 계정 비활성화

    @Autowired
    private AccountService accountService;

    @Autowired
    @Qualifier(value = "authenticationManager")
    private AuthenticationManager authenticationManager;


    /**
     * 회원 가입 페이지
     *
     * @return
     */
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signin(Model model,
                         HttpServletRequest request) {
        logger.debug("회원 가입 페이지");
        Account account = new Account();
        model.addAttribute("account", account);

        return "account/signup";
    }

    /**
     * 회원 가입 처리
     *
     * @param account
     * @param result
     * @param model
     * @return
     */
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    @ResponseBody
    public String join(@ModelAttribute @Valid Account account,
                       BindingResult result,
                       Model model) {

        logger.info("회원 가입");

        // 필수값 미입력시 가입 페이지로 전환
        if (result.hasErrors()) {
            logger.info("가입 실패 : {}", account.toString());
            return "account/signup";
        }

        int insertCount = accountService.insertAccount(account);

        int duplicateEmail = -99;
        if (insertCount == duplicateEmail) {
            logger.error("동일한 이메일이 존재합니다.");
            model.addAttribute("message", "동일한 이메일이 존재합니다.");
            return "account/signin";
        }

        if (insertCount == 0) {
            logger.error("회원 가입 중 저장이 실패하였습니다.");
            model.addAttribute("message", "회원 가입 중 저장이 실패하였습니다.");
            return "account/signin";
        }

        return "redirect:/account/confirm";

/*
        // 관리자 추가 결과값 설정
        Map<String, Object> resultMap = new HashMap<String, Object>();

        resultMap.put("code", result);
        if (result == -21) {
            resultMap.put("message", "DB 입력 실패.");
        }

        return resultMap;
*/
    }

    /**
     * 가입 완료 페이지
     *
     * @return
     */
    @RequestMapping(value = "/confirm", method = RequestMethod.GET)
    public String confirm() {
        logger.debug("### 가입 완료 페이지");
        return "account/confirm";
    }


    /**
     * 로그인 페이지
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        logger.debug("### 로그인 페이지");

        return "account/login";
    }

    /**
     * 로그인 페이지
     *
     * @return
     */
    @RequestMapping(value = "/loginPopup", method = RequestMethod.GET)
    public String loginPopup() {
        return "account/login_popup";
    }

    /**
     * 로그아웃
     *
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        logger.debug("### 로그아웃");
        return "account/logout";
    }

    /**
     * 로그인 인증
     *
     * @param request
     * @param response
     * @param email
     * @param password
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    private void login(HttpServletRequest request,
                       HttpServletResponse response,
                       String email,
                       String password) throws IOException, ServletException {
        logger.debug("로그인 인증 프로세스 시작");
        logger.debug("username : " + email);
        logger.debug("password : " + password);

        // 계정과 암호로 토큰 생성
        UsernamePasswordAuthenticationToken authRequest =
                        new UsernamePasswordAuthenticationToken(email, password);
        // 인증
        Authentication authentication = authenticationManager.authenticate(authRequest);

        // 세션에 저장
        SecurityContext securityContext = new SecurityContextImpl();
        securityContext.setAuthentication(authentication);
        SecurityContextHolder.setContext(securityContext);

        HttpSession session = request.getSession();
        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, securityContext);

        // 로그인 성공 처리
        UserAuthenticationSuccessHandler handler = new UserAuthenticationSuccessHandler();
        handler.onAuthenticationSuccess(request, response, authentication);
    }

    /**
     * 이메일 인증키로 계정 활성화
     *
     * @param model
     * @param authKey
     * @return
     */
    @RequestMapping(value = "/activation/{authKey}", method = RequestMethod.GET)
    public String activation(Model model,
                             @PathVariable("authKey") String authKey) {
        int result = 0;
        String userId = null;

        try {
            // authKey(userId) 복호화
            userId = SimpleCrypto.decrypt(SimpleCrypto.seed, authKey);
            logger.info("userId : " + userId);
        } catch (Exception e) {
            logger.error("이메일 인증키 복호화를 실패하였습니다.", e);
            result = -1;
        }

        Account account = new Account();
        account.setId( Integer.parseInt(userId) );
        account.setAuthority(LoginAuthorityType.ROLE_USER.name());    // ROLE_USER
        account.setActivation(ENABLE);    // 계정 활성화(ENABLE)

        // UserId로 회원 존재하는 체크
        Account currentAccount = accountService.selectAccount(account);

        // 회원이 존재하지 않으면 가입 페이지로 이동
        if (currentAccount == null) {
            return "redirect:/account/signin";
        }

        // 회원이 존재하면 userId로 해당 계정 활성화 업데이트
        result = accountService.updateAccount(account);

        if (result == -1) {
            model.addAttribute("message", "이메일 인증키 복호화를 실패하였습니다.");
        } else if (result == 0) {
            model.addAttribute("message", "회원 정보 수정이 실패하였습니다.");
        }

        return "redirect:/";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Account test() {
        logger.warn("start of json");
        Account account = new Account();
        account.setEmail("hukoru@naver.com");

        Account responseAccount = accountService.selectAccount(account);
        logger.debug("Response Account : " + responseAccount);

        return responseAccount;
    }

    @RequestMapping(value = "/test", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Account test(@RequestBody Account requestAccount) {
        logger.debug("### Request Account : " + requestAccount);

        return requestAccount;
    }

}
