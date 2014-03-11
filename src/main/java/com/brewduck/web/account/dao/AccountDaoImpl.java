package com.brewduck.web.account.dao;

import com.brewduck.web.domain.Account;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <pre>
 * 계정 DAO 구현체.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
@Repository("accountDao")
public class AccountDaoImpl implements AccountDao {
    private static final Logger logger = LoggerFactory.getLogger(AccountDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    @Override
    public List<Account> selectAccountList(Account account) {
        return sqlSessionTemplate.selectList("Account.selectAccountList", account);
    }

    @Override
    public Account selectAccount(Account account) {
        return sqlSessionTemplate.selectOne("Account.selectAccount", account);
    }

    @Override
    public int insertAccount(Account account) {
        return sqlSessionTemplate.insert("Account.insertAccount", account);
    }

    @Override
    public int updateAccount(Account account) {
        return sqlSessionTemplate.update("Account.updateAccount", account);
    }
}