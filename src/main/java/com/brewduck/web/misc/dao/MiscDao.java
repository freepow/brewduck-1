package com.brewduck.web.misc.dao;

import com.brewduck.web.domain.Misc;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 DAO 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014-02-14
 */
public interface MiscDao {

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param misc 맥주 스타일
     * @return 맥주 스타일 목록
     */
    public List<Misc> selectMiscList(Misc misc);

    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     *
     * @param misc 맥주 스타일
     * @return 맥주 스타일
     */
    public Misc selectMiscDetail(Misc misc);

    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     *
     * @param misc 맥주 스타일
     * @return 저장 성공 횟수
     */
    public Integer insertMisc(Misc misc);

    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     *
     * @param misc 맥주 스타일
     * @return 수정 성공 횟수
    */
    public Integer updateMisc(Misc misc);

    /**
     * <pre>
     * 맥주 스타일 삭제.
     * </pre>
     *
     * @param misc 맥주 스타일
     * @return 삭제 성공 횟수
     */
    public Integer deleteMisc(Misc misc);

}
