/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.account.dao;

import com.brewduck.web.domain.Account;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Repository("accountDao")
public class AccountDaoImpl implements AccountDao {
    private static final Logger logger = LoggerFactory.getLogger(AccountDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    /**
     * 회원 목록 조회
     *
     * @param account
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    @Override
    public List<Account> selectAccountList(Account account) throws DataAccessException {
        return sqlSessionTemplate.selectList("Account.selectAccountList", account);
    }

    /**
     * 회원 정보 조회
     *
     * @param account
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    @Override
    public Account selectAccount(Account account) throws DataAccessException {
        return sqlSessionTemplate.selectOne("Account.selectAccount", account);
    }

    /**
     * 회원 가입
     *
     * @param account
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    @Override
    public int insertAccount(Account account) throws DataAccessException {
        return sqlSessionTemplate.insert("Account.insertAccount", account);
    }

    /**
     * 회원 정보 수정
     *
     * @param account
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    @Override
    public int updateAccount(Account account) throws DataAccessException {
        return sqlSessionTemplate.update("Account.updateAccount", account);
    }


}