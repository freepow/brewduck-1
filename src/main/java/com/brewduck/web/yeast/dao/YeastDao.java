package com.brewduck.web.yeast.dao;

import com.brewduck.web.domain.Yeast;

import java.util.List;

/**
 * <pre>
 * 맥주 이스트 DAO 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014-02-14
 */
public interface YeastDao {

    /**
     * <pre>
     * 맥주 이스트 목록 조회.
     * </pre>
     *
     * @param yeast 맥주 이스트
     * @return 맥주 이스트 목록
     */
    public List<Yeast> selectYeastList(Yeast yeast);

    /**
     * <pre>
     * 맥주 이스트 상세 내용 조회.
     * </pre>
     *
     * @param yeast 맥주 이스트
     * @return 맥주 이스트 상세 내용
     */
    public Yeast selectYeastDetail(Yeast yeast);

    /**
     * <pre>
     * 맥주 이스트 저장.
     * </pre>
     *
     * @param yeast 맥주 이스트
     * @return 저장 성공 횟수
     */
    public Integer insertYeast(Yeast yeast);

    /**
     * <pre>
     * 맥주 이스트 수정.
     * </pre>
     *
     * @param yeast 맥주 이스트
     * @return 수정 성공 횟수
     */
    public Integer updateYeast(Yeast yeast);

    /**
     * <pre>
     * 맥주 이스트 삭제.
     * </pre>
     *
     * @param yeast 맥주 이스트
     * @return 삭제 성공 횟수
     */
    public Integer deleteYeast(Yeast yeast);

}
