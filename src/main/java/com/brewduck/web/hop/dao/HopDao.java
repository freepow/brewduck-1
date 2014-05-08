package com.brewduck.web.hop.dao;

import com.brewduck.web.domain.Hop;

import java.util.List;


/**
 * <pre>
 * 맥주 홉 DAO 인터페이스.
 * </pre>
 *
 * @author  chacha
 * @version 1.0, 2014-02-16
 */
public interface HopDao {

    /**
     * <pre>
     * 맥주 홉 목록 조회.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 맥주 홉 목록
     */
    public List<Hop> selectHopList(Hop hop);

    /**
     * <pre>
     * 맥주 레시피 홉 목록 조회.
     * </pre>
     *
     * @param name 맥주 레시피 이름
     * @return 맥주 홉 목록
     */
    public List<Hop> selectRecipeHopList(String name);


    /**
     * <pre>
     * 홉 아로마 리스트
     * </pre>
     *
     * @return 맥주 홉 목록
     */
    public List<Hop> selectHopAromaList(Hop hop);

    /**
     * <pre>
     * 홉 아로마 리스트
     * </pre>
     *
     * @return 맥주 홉 목록
     */
    public List<Hop> selectAromaList();


    /**
     * <pre>
     * 홉 대체 리스트
     * </pre>
     *
     * @return 맥주 홉 목록
     */
    public List<Hop> selectHopSubstitutesList(Hop hop);

    /**
     * <pre>
     * 홉 사용용도 리스트
     * </pre>
     *
     * @return 맥주 홉 목록
     */
    public List<Hop> selectHopUsedForList(Hop hop);



    /**
     * <pre>
     * 맥주 홉 상세 조회.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 맥주 홉
     */
    public Hop selectHopDetail(Hop hop);

    /**
     * <pre>
     * 맥주 홉 랜덤 조회.
     * </pre>
     *
     * @return 맥주 홉
     */
    public Hop selectRandomHop();



    /**
     * <pre>
     * 맥주 홉 국가 별 갯수 조회.
     * </pre>
     *
     * @return 맥주 홉
     */
    public Hop countHopOrigin();

    /**
     * <pre>
     * 맥주 홉 저장.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 저장 성공 횟수
     */
    public Integer insertHop(Hop hop);

    /**
     * <pre>
     * 맥주 홉 수정.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 수정 성공 횟수
     */
    public Integer updateHop(Hop hop);

    /**
     * <pre>
     * 맥주 홉 수정.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 수정 성공 횟수
     */
    public Integer updateViewCount(Hop hop);



    /**
     * <pre>
     * 맥주 홉 삭제.
     * </pre>
     *
     * @param hop 맥주 홉
     * @return 삭제 성공 횟수
     */
    public Integer deleteHop(Hop hop);

}
