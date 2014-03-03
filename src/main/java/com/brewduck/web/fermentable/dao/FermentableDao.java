package com.brewduck.web.fermentable.dao;

import com.brewduck.web.domain.Fermentable;

import java.util.List;

/**
 * <pre>
 * 맥주 맥아 DAO 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014-02-20
 */
public interface FermentableDao {

    /**
     * <pre>
     * 맥주 맥아 목록 조회.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 맥주 맥아 목록
     */
    public List<Fermentable> selectFermentableList(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 상세 조회.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 맥주 맥아
     */
    public Fermentable selectFermentableDetail(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 저장.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 저장 성공 횟수
     */
    public Integer insertFermentable(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 수정.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 수정 성공 횟수
     */
    public Integer updateFermentable(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 삭제.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 삭제 성공 횟수
     */
    public Integer deleteFermentable(Fermentable fermentable);

}
