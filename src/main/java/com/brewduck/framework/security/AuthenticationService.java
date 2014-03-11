package com.brewduck.framework.security;

import com.brewduck.framework.exception.AuthenticationNotException;
import com.brewduck.framework.exception.PasswordMismatchException;
import com.brewduck.framework.exception.UserNotFoundException;

/**
 * <pre>
 * 회원 인증 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
public interface AuthenticationService {

    void login(String userId, String password) throws UserNotFoundException, AuthenticationNotException, PasswordMismatchException;

}
