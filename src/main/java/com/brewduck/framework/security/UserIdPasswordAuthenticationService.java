package com.brewduck.framework.security;

import com.brewduck.framework.exception.AuthenticationNotException;
import com.brewduck.framework.exception.PasswordMismatchException;
import com.brewduck.framework.exception.UserNotFoundException;
import com.brewduck.web.account.service.AccountService;
import com.brewduck.web.domain.Account;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * <pre>
 * 회원 인증 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Service(value = "authenticationService")
public class UserIdPasswordAuthenticationService implements AuthenticationService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserIdPasswordAuthenticationService.class);

    @Autowired
    AccountService accountService;

    @Override
    public void login(String email, String password) throws UserNotFoundException, AuthenticationNotException, PasswordMismatchException {
        if (StringUtils.isEmpty(email)) {
            LOGGER.error("이메일 정보가 존재하지 않습니다.");
            throw new UserNotFoundException("이메일 정보가 존재하지 않습니다.");
        }

        Account account = accountService.selectAccount(new Account(email, password));
        if (account == null) {
            LOGGER.error("회원 정보가 존재하지 않습니다.");
            throw new UserNotFoundException("회원 정보가 존재하지 않습니다.");
        }

        // 향후에는 패스워드 암호화 필요
        // 이메일 인증 회원인지 체크 필요
        // throw new AuthenticationNotException("### 이메일 인증이 필요합니다.");
        if ( ! account.getPassword().equals(password)) {
            LOGGER.error("비밀번호가 틀렸습니다.");
            throw new PasswordMismatchException("비밀번호가 틀렸습니다.");
        }
    }
}
