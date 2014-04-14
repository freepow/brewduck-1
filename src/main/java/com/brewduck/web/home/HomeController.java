package com.brewduck.web.home;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.account.service.AccountService;
import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;


/**
 * The Class AccountController.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;

    @Autowired
    private CommonService commonService;

    /**
     * 회원 가입 페이지
     *
     * @return
     */
    @RequestMapping(value = "/")
    public String home(Model model) {
        // Account account = AuthenticationUtils.getUser();

        // model.addAttribute("account", account);

        //return "home";
        return "blank";
    }

    @RequestMapping(value = "/sample", method = RequestMethod.GET)
    public String sample(Model model,
                       HttpServletRequest request) {
        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "sample";
    }

    @RequestMapping(value = "/default", method = RequestMethod.GET)
    public String basic(Model model,
                             HttpServletRequest request) {


        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        logger.warn("this is default page");

        return "decorators/default";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Model model,
                        HttpServletRequest request) {

        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "test";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String write(Model model,
                       HttpServletRequest request) {

        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "write";
    }
}