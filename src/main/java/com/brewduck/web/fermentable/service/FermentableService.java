package com.brewduck.web.fermentable.service;

import com.brewduck.web.domain.Fermentable;

import java.util.List;

/**
 * <pre>
 * 맥주 맥아 Service 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.20
 */
public interface FermentableService {

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
     * 맥주 맥아 국가 별 갯수 조회.
     * </pre>
     *
     * @return 맥주 맥아 내용
     */
    public Fermentable countFermentableOrigin();
    /**
     * <pre>
     * 맥주 맥아 상세 조회.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 맥주 맥아 내용
     */
    public Fermentable selectFermentableDetail(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 저장.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 저장 성공 여부
     */
    public Boolean insertFermentable(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 수정.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 수정 성공 여부
     */
    public Boolean updateFermentable(Fermentable fermentable);

    /**
     * <pre>
     * 맥주 맥아 삭제.
     * </pre>
     *
     * @param fermentable 맥주 맥아
     * @return 삭제 성공 여부
     */
    public Boolean deleteFermentable(Fermentable fermentable);

}
