/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.account.dao;

import com.brewduck.framework.exception.DBHandleException;
import com.brewduck.web.domain.Account;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
public interface AccountDao {

    /**
     * 회원 정보 조회
     *
     * @param account
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    public Account selectAccount(Account account) throws DataAccessException;

    /**
     * 회원 정보 목록 조회
     *
     * @param account
     * @return
     * @throws DBHandleException
     */
	public List<Account> selectAccountList(Account account) throws DataAccessException;

    /**
     * 회원 가입
     *
     * @param account
     * @throws DBHandleException
     */
    public int insertAccount(Account account) throws DataAccessException;

    /**
     * 회원 정보 수정
     *
     * @param account
     * @return
     */
    public int updateAccount(Account account) throws DataAccessException;
}
