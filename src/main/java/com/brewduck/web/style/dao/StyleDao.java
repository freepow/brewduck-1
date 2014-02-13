package com.brewduck.web.style.dao;

import com.brewduck.web.domain.Style;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 DAO 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014-02-14
 */
public interface StyleDao {

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 맥주 스타일 목록
     */
    public List<Style> selectStyleList(Style style);

    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 맥주 스타일
     */
    public Style selectStyleDetail(Style style);

    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 저장 성공 횟수
     */
    public Integer insertStyle(Style style);

    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 수정 성공 횟수
    */
    public Integer updateStyle(Style style);

    /**
     * <pre>
     * 맥주 스타일 삭제.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 삭제 성공 횟수
     */
    public Integer deleteStyle(Style style);

}
