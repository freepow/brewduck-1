package com.brewduck.web.account.dao;

import com.brewduck.web.domain.Account;

import java.util.List;


/**
 * <pre>
 * 계정 DAO 인터페이스.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
public interface AccountDao {

    /**
     * 회원 정보 조회
     *
     * @param account
     * @return 회원 정보
     */
    public Account selectAccount(Account account);

    /**
     * 회원 정보 목록 조회
     *
     * @param account
     * @return 회원 정보 목록
     */
	public List<Account> selectAccountList(Account account);

    /**
     * 회원 가입
     *
     * @param account
     * @return 회원 가입 여부
     */
    public int insertAccount(Account account);

    /**
     * 회원 정보 수정
     *
     * @param account
     * @return 회원 수정 여부
     */
    public int updateAccount(Account account);

}
