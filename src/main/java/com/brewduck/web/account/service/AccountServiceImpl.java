package com.brewduck.web.account.service;

import com.brewduck.framework.crypto.SimpleCrypto;
import com.brewduck.framework.mail.MailService;
import com.brewduck.web.account.dao.AccountDao;
import com.brewduck.web.domain.Account;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * <pre>
 * 계정 서비스 구현체.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
@Service("accountService")
public class AccountServiceImpl implements AccountService {
    private static Logger LOGGER = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Autowired
    private AccountDao accountDao;


    @Override
    public Account selectAccount(Account account) {
        return accountDao.selectAccount(account);
    }

    @Override
    public List<Account> selectAccountList(Account account) {
        return accountDao.selectAccountList(account);
    }

    @Override
    public int selectAccountId() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        // 로그인 안하고 호출하면 계정 ID는 0으로 세팅
        if (authentication == null) {
            return 0;
        }

        Account accountByEmail = new Account();
        accountByEmail.setEmail( authentication.getName() );

        Account account = this.selectAccount(accountByEmail);
        return account.getId();
    }

    @Transactional
    @Override
    public int insertAccount(Account account) {
        int insertCount = 0;
        int duplicateEmail = -99;

        String authKey = null;
        boolean result = false;

        Account currentAccount = accountDao.selectAccount(account);

        // 이메일 조회시 회원 정보 없으면 가입 처리
        if (currentAccount == null) {
            // 회원 가입 후 UserId 리턴
            insertCount = accountDao.insertAccount(account);
            LOGGER.info("insertCount : " + insertCount);
            LOGGER.info("가입 UserId : " + account.getId());

            // 가입 완료 후 이메일 전송
            if (insertCount > 0) {
                try {
                    authKey = SimpleCrypto.encrypt(
                                    SimpleCrypto.seed,
                                    String.valueOf(account.getId())
                                );
                    LOGGER.info("가입 인증키 : " + authKey);
                } catch (Exception e) {
                    throw new RuntimeException("이메일 인증키 암호화하는 도중에 오류가 발생하였습니다.", e);
                }

                if (authKey != null) {
                    MailService mailService = new MailService();
                    result = mailService.sendMail(
                                    account.getEmail(),
                                    "[브루덕] 회원 가입을 축하드립니다.",
                                    authKey
                                );

                    // 이메일 전송이 실패되면 회원 가입 롤백
                    if ( ! result ) {
                        throw new RuntimeException("이메일 발송 실패하였습니다.");
                    }
                }
            }
        }
        // 동일한 이메일이 존재하는지 체크
        else if (currentAccount.getEmail().equalsIgnoreCase(account.getEmail())) {
            return duplicateEmail;
        }
        else {
            LOGGER.info("회원 가입 처리");
        }

        return insertCount;
    }

    @Override
    public int updateAccount(Account account) {
        return accountDao.updateAccount(account);
    }
}
