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
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * <pre>
 * 계정 Controller.
 * </pre>
 *
 * -------------------
 * 작성 내역
 * -------------------
 * 작성자 : 임세환
 * 작성일 : 2013.12.11
 * -------------------
 * 수정자 : jaeger
 * 수정일 : 2014.02.14
 * -------------------
 */
@Controller
@RequestMapping(value = "/account")
public class AccountController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountController.class);
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
    public String signin(Model model) {
        LOGGER.info("회원 가입 페이지");

        return "account/signup";
    }

    /**
     * 회원 가입 처리
     *
     * @param account
     * @param result
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String join(@ModelAttribute("account") @Validated(Account.Join.class) Account account,
                       BindingResult result,
                       RedirectAttributes redirectAttributes) {
        LOGGER.info("회원 가입 처리");

        // 필수값 미입력시 가입 페이지로 전환
        if (result.hasErrors()) {
            LOGGER.info("가입 실패 : {}", account.toString());
            return "account/signup";
        }

        if (account.getEmail().equals(account.getReEmail()) == false) {
            redirectAttributes.addFlashAttribute("message", "이메일 주소가 동일하지 않습니다.");
            LOGGER.error("이메일 주소가 동일하지 않습니다.");

            return "redirect:/account/signup";
        }
        if (account.getPassword().equals(account.getRePassword()) == false) {
            redirectAttributes.addFlashAttribute("message", "비빌번호가 동일하지 않습니다.");
            LOGGER.error("비빌번호가 동일하지 않습니다.");

            return "redirect:/account/signup";
        }

        int insertCount = accountService.insertAccount(account);

        int duplicateEmail = -99;
        if (insertCount == duplicateEmail) {
            redirectAttributes.addFlashAttribute("message", "동일한 이메일이 존재합니다.");
            LOGGER.error("동일한 이메일이 존재합니다.");

            return "redirect:/account/signup";
        }

        if (insertCount == 0) {
            redirectAttributes.addFlashAttribute("message", "회원 가입 중 저장이 실패하였습니다.");
            LOGGER.error("회원 가입 중 저장이 실패하였습니다.");

            return "redirect:/account/signup";
        }

        return "redirect:/account/confirm";
    }

    /**
     * 가입 완료 페이지
     *
     * @return
     */
    @RequestMapping(value = "/confirm", method = RequestMethod.GET)
    public String confirm() {
        LOGGER.info("가입 완료 페이지");
        return "account/confirm";
    }


    /**
     * 로그인 페이지
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model
                       ,@RequestParam(value = "login_error"  , required = false) String loginError
                       ,@RequestParam(value = "error_message", required = false) String errorMessage) {
        LOGGER.info("로그인 페이지");

        model.addAttribute("loginError"  , loginError  );
        model.addAttribute("errorMessage", errorMessage);

        return "account/login";
    }

    /**
     * 로그아웃
     *
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        LOGGER.info("로그아웃");

        return "account/logout";
    }

    /**
     * 로그인 인증
     *
     * @param request
     * @param response
     * @param account
     * @param result
     * @throws java.io.IOException
     * @throws javax.servlet.ServletException
     */
    @RequestMapping(value = "/authentication", method = RequestMethod.POST)
    public void login(HttpServletRequest  request
                     ,HttpServletResponse response
                     ,@ModelAttribute("account") @Validated(Account.Login.class) Account account
                     ,BindingResult result) throws IOException, ServletException {
        LOGGER.info("로그인 인증 프로세스 시작 : {}", account.toString());

        // 필수값 미입력시 로그인 페이지로 전환
        if (result.hasErrors()) {
            LOGGER.info("로그인 실패     : {}", account.toString());
            LOGGER.info("로그인 실패 이유 : {}", result.getAllErrors().toString());
        }

        String email    = account.getEmail();
        String password = account.getPassword();

        LOGGER.info("email    : {}", email   );
        LOGGER.info("password : {}", password);

        // 계정과 암호로 토큰 생성
        UsernamePasswordAuthenticationToken authRequest
                            = new UsernamePasswordAuthenticationToken(email, password);

        // 인증
        Authentication authentication = authenticationManager.authenticate(authRequest);

        SecurityContext securityContext = new SecurityContextImpl();
        securityContext.setAuthentication(authentication);

        SecurityContextHolder.setContext(securityContext);

        // 세션에 저장
        HttpSession session = request.getSession();
        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, securityContext);

        // 로그인 성공 처리
        UserAuthenticationSuccessHandler successHandler = new UserAuthenticationSuccessHandler();
        successHandler.onAuthenticationSuccess(request, response, authentication);

        LOGGER.info("Login Success : {}", email);
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
            LOGGER.info("userId : " + userId);
        } catch (Exception e) {
            LOGGER.error("이메일 인증키 복호화를 실패하였습니다.", e);
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
            model.addAttribute("message", "회원 정보가 존재하지 않습니다.");
            return "redirect:/account/signup";
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

}
