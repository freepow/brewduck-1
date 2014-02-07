/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.service;

import com.brewduck.web.domain.Common;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
public interface CommonService {

    //업로드 이미지 정보 저장
    public int insertImage(Common common) throws RuntimeException;

    public int selectImageId() throws RuntimeException;

    public int selectMovieId() throws RuntimeException;
    //성별 리스트
    public List<Common> selectGenderList() throws RuntimeException;

    //월 리스트
    public List<Common> selectMonthList() throws RuntimeException;

    //메인 카테고리 리스트
    public List<Common> selectMainCategoryList() throws RuntimeException;

    //서브 카테고리 리스트
    public List<Common> selectSubCategoryList(Common common) throws RuntimeException;

    //지역(시,군) 리스트
    public List<Common> selectMainAreaList() throws RuntimeException;

    //지역(동,읍) 리스트
    public List<Common> selectSubAreaList(Common common) throws RuntimeException;

    //메인 카테고리 리스트
    public Common selectMainCategory(Common common) throws RuntimeException;

    //서브 카테고리 리스트
    public Common selectSubCategory(Common common) throws RuntimeException;
}
