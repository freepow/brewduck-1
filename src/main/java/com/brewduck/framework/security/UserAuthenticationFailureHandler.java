package com.brewduck.framework.security;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
    Logger logger = LoggerFactory.getLogger(UserAuthenticationFailureHandler.class);

    public static final String DEFAULT_FAIL_TARGET_PARAMETER = "spring-security-fail-redirect";


    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException, ServletException {
        logger.debug("### Login Failed!!");

        RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
        String entryUrl = request.getParameter(DEFAULT_FAIL_TARGET_PARAMETER);
        if (entryUrl == null) {
            entryUrl = request.getHeader("Referer");
        }

        String forwardUrl = "http://localhost:8080/account/login?login_error=false";

        logger.debug("### Login Error Message : {}", exception.getMessage(), exception);
        saveException(request, exception);

        logger.debug("### entryUrl : {}", entryUrl);
        logger.debug("### forwardUrl : {}", forwardUrl);

        redirectStrategy.sendRedirect(request, response, createForwardUrl(entryUrl, forwardUrl));
    }

    private String createForwardUrl(String entryUrl, String forwardUrl) {
        if (StringUtils.isBlank(forwardUrl)) {
            return entryUrl;
        }

        return entryUrl + "&forwardUrl=" + forwardUrl;
    }
}
