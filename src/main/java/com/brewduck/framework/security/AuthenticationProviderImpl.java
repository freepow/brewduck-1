package com.brewduck.framework.security;

import com.brewduck.framework.exception.AuthenticationNotException;
import com.brewduck.framework.exception.PasswordMismatchException;
import com.brewduck.framework.exception.UserNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.util.Assert;


/**
 * <pre>
 * 회원 인증 제공자 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
public class AuthenticationProviderImpl implements AuthenticationProvider, InitializingBean {
    private static final Logger LOGGER = LoggerFactory.getLogger(AuthenticationProviderImpl.class);

    private AuthenticationService authenticationService;
    private UserDetailsService userDetailsService;

    public void setAuthenticationService(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        Assert.notNull(this.authenticationService, "AuthenticationService is Mandatory.");
        Assert.notNull(this.userDetailsService, "UserDetailsService is Mandatory.");
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String email = authentication.getPrincipal().toString();
        String password = authentication.getCredentials().toString();

        this.login(email, password);

        UserDetails userDetails = userDetailsService.loadUserByUsername(email);
        return new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));
    }

    private void login(String email, String password) {
        LOGGER.info("Login Email    : {}", email   );
        LOGGER.info("Login Password : {}", password);

        try {
            authenticationService.login(email, password);
        } catch (UserNotFoundException e) {
            throw new UsernameNotFoundException(e.getMessage(), e);
        } catch (AuthenticationException e) {
            throw new BadCredentialsException(e.getMessage(), e);
        } catch (PasswordMismatchException e) {
            throw new BadCredentialsException(e.getMessage(), e);
        /*
        } catch(AuthenticationNotException e) {
            throw new AuthenticationNotException(e.getMessage(), e);
        */
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
