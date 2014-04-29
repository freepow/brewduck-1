package com.brewduck.web.misc.service;

import com.brewduck.web.domain.Misc;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 Service 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
public interface MiscService {

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 맥주 스타일 목록
     */
    public List<Misc> selectMiscList(Misc style);

    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 맥주 스타일 내용
     */
    public Misc selectMiscDetail(Misc style);

    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 저장 성공 여부
     */
    public Boolean insertMisc(Misc style);

    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 수정 성공 여부
     */
    public Boolean updateMisc(Misc style);

    /**
     * <pre>
     * 맥주 스타일 삭제.
     * </pre>
     *
     * @param style 맥주 스타일
     * @return 삭제 성공 여부
     */
    public Boolean deleteMisc(Misc style);

}
