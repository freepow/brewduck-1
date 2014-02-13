package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;


/**
 * <pre>
 * 스타일 Value Object.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.10
 */
public class Style implements Serializable {
    private static final long serialVersionUID = 1L;

    // 스타일 영문명
    private String name;
    // 스타일 한글명
    private String koreanName;
    // 스타일 카테고리
    private String category;
    // 스타일 버전 (1)
    private Integer version;
    // 스타일 카테고리 수 (1)
    private String categoryNumber;
    // 스타일 문자 (A)
    private String styleLetter;
    // 스타일 가이드 (AHA)
    private String styleGuide;
    // 스타일 종류 (Lager, Ale, Mead, Wheat, Mixed or Cider)
    private String type;
    // 초기 비중, 최소값
    private Double ogMin;
    // 초기 비중, 최대값
    private Double ogMax;
    // 최종 비중, 최소값
    private Double fgMin;
    // 최종 비중, 최대값
    private Double fgMax;
    // 쓴맛 기준, 최소값
    private Integer ibuMin;
    // 쓴맛 기준, 최대값
    private Integer ibuMax;
    // 맥주 색상, 최소값
    private Integer colorMin;
    // 맥주 색상, 최대값
    private Integer colorMax;
    // 탄산 함량, 최소값
    private Double carbMin;
    // 탄산 함량, 최대값
    private Double carbMax;
    // 알콜 함량, 최소값
    private Double abvMin;
    // 알콜 함량, 최대값
    private Double abvMax;
    // 스타일 메모
    private String notes;
    // 스타일의 향과 맛 정보
    private String profile;
    // 스타일 추천 재료
    private String ingredients;
    // 스타일 맥주 예제
    private String examples;
    // 작성자 아이디
    private String insertId;
    // 작성자 날짜
    private Date insertDate;
    // 수정자 아이디
    private String updateId;
    // 수정자 날짜
    private Date updateDate;
    // 삭제자 아이디
    private String deleteId;
    // 삭제자 날짜
    private Date deleteDate;
    // 수정 성공 여부
    private Boolean updateFlag;
    // 삭제 성공 여부
    private Boolean deleteFlag;


    /**
     * 스타일 영문명
     *
     * @return 스타일 영문명
     */
    public String getName() {
        return name;
    }

    /**
     * 스타일 영문명
     *
     * @param name 스타일 영문명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 스타일 한글명
     *
     * @return 스타일 한글명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 스타일 한글명
     *
     * @param koreanName 스타일 한글명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 스타일 카테고리
     *
     * @return 스타일 카테고리
     */
    public String getCategory() {
        return category;
    }

    /**
     * 스타일 카테고리
     *
     * @param category 스타일 카테고리
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * 스타일 버전
     * 항상 '1'
     *
     * @return 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 스타일 버전
     *
     * @param version 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 스타일 카테고리 수
     * 항상 '1'
     *
     * @return 카테고리 수
     */
    public String getCategoryNumber() {
        return categoryNumber;
    }

    /**
     * 스타일 카테고리 수
     *
     * @param categoryNumber 카테고리 수
     */
    public void setCategoryNumber(String categoryNumber) {
        this.categoryNumber = categoryNumber;
    }

    /**
     * 스타일 문자
     * 항상 'A'
     *
     * @return 문자
     */
    public String getStyleLetter() {
        return styleLetter;
    }

    /**
     * 스타일 문자
     *
     * @param styleLetter 문자
     */
    public void setStyleLetter(String styleLetter) {
        this.styleLetter = styleLetter;
    }

    /**
     * 스타일 가이드
     * 항상 'AHA'
     *
     * @return 가이드
     */
    public String getStyleGuide() {
        return styleGuide;
    }

    /**
     * 스타일 가이드
     *
     * @param styleGuide 가이드
     */
    public void setStyleGuide(String styleGuide) {
        this.styleGuide = styleGuide;
    }

    /**
     * 스타일 종류
     * (Lager, Ale, Mead, Wheat, Mixed or Cider)
     *
     * @return 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 스타일 종류
     *
     * @param type 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 초기 비중, 최소값
     *
     * @return 초기 비중, 최소값
     */
    public Double getOgMin() {
        return ogMin;
    }

    /**
     * 초기 비중, 최소값
     *
     * @param ogMin 초기 비중, 최소값
     */
    public void setOgMin(Double ogMin) {
        this.ogMin = ogMin;
    }

    /**
     * 초기 비중, 최대값
     *
     * @return 초기 비중, 최대값
     */
    public Double getOgMax() {
        return ogMax;
    }

    /**
     * 초기 비중, 최대값
     *
     * @param ogMax 초기 비중, 최대값
     */
    public void setOgMax(Double ogMax) {
        this.ogMax = ogMax;
    }

    /**
     * 최종 비중, 최소값
     *
     * @return 최종 비중, 최소값
     */
    public Double getFgMin() {
        return fgMin;
    }

    /**
     * 최종 비중, 최소값
     *
     * @param fgMin 최종 비중, 최소값
     */
    public void setFgMin(Double fgMin) {
        this.fgMin = fgMin;
    }

    /**
     * 최종 비중, 최대값
     *
     * @return 최종 비중, 최대값
     */
    public Double getFgMax() {
        return fgMax;
    }

    /**
     * 최종 비중, 최대값
     *
     * @param fgMax 최종 비중, 최대값
     */
    public void setFgMax(Double fgMax) {
        this.fgMax = fgMax;
    }

    /**
     * 쓴맛 기준, 최소값
     *
     * @return 쓴맛 기준, 최소값
     */
    public Integer getIbuMin() {
        return ibuMin;
    }

    /**
     * 쓴맛 기준, 최소값
     *
     * @param ibuMin 쓴맛 기준, 최소값
     */
    public void setIbuMin(Integer ibuMin) {
        this.ibuMin = ibuMin;
    }

    /**
     * 쓴맛 기준, 최대값
     *
     * @return 쓴맛 기준, 최대값
     */
    public Integer getIbuMax() {
        return ibuMax;
    }

    /**
     * 쓴맛 기준, 최대값
     *
     * @param ibuMax 쓴맛 기준, 최대값
     */
    public void setIbuMax(Integer ibuMax) {
        this.ibuMax = ibuMax;
    }

    /**
     * 맥주 색상, 최소값
     *
     * @return 맥주 색상, 최소값
     */
    public Integer getColorMin() {
        return colorMin;
    }

    /**
     * 맥주 색상, 최소값
     *
     * @param colorMin 맥주 색상, 최소값
     */
    public void setColorMin(Integer colorMin) {
        this.colorMin = colorMin;
    }

    /**
     * 맥주 색상, 최대값
     *
     * @return 맥주 색상, 최대값
     */
    public Integer getColorMax() {
        return colorMax;
    }

    /**
     * 맥주 색상, 최대값
     *
     * @param colorMax 맥주 색상, 최대값
     */
    public void setColorMax(Integer colorMax) {
        this.colorMax = colorMax;
    }

    /**
     * 탄산 함량, 최소값
     *
     * @return 탄산 함량, 최소값
     */
    public Double getCarbMin() {
        return carbMin;
    }

    /**
     * 탄산 함량, 최소값
     *
     * @param carbMin 탄산 함량, 최소값
     */
    public void setCarbMin(Double carbMin) {
        this.carbMin = carbMin;
    }

    /**
     * 탄산 함량, 최대값
     *
     * @return 탄산 함량, 최대값
     */
    public Double getCarbMax() {
        return carbMax;
    }

    /**
     * 탄산 함량, 최대값
     *
     * @param carbMax 탄산 함량, 최대값
     */
    public void setCarbMax(Double carbMax) {
        this.carbMax = carbMax;
    }

    /**
     * 알콜 함량, 최소값
     *
     * @return 알콜 함량, 최소값
     */
    public Double getAbvMin() {
        return abvMin;
    }

    /**
     * 알콜 함량, 최소값
     *
     * @param abvMin 알콜 함량, 최소값
     */
    public void setAbvMin(Double abvMin) {
        this.abvMin = abvMin;
    }

    /**
     * 알콜 함량, 최대값
     *
     * @return 알콜 함량, 최대값
     */
    public Double getAbvMax() {
        return abvMax;
    }

    /**
     * 알콜 함량, 최대값
     *
     * @param abvMax 알콜 함량, 최대값
     */
    public void setAbvMax(Double abvMax) {
        this.abvMax = abvMax;
    }

    /**
     * 스타일 메모
     *
     * @return 스타일 메모
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 스타일 메모
     *
     * @param notes 스타일 메모
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 스타일의 향과 맛 정보
     *
     * @return 스타일의 향과 맛 정보
     */
    public String getProfile() {
        return profile;
    }

    /**
     * 스타일의 향과 맛 정보
     *
     * @param profile 스타일의 향과 맛 정보
     */
    public void setProfile(String profile) {
        this.profile = profile;
    }

    /**
     * 스타일 추천 재료
     *
     * @return 스타일 추천 재료
     */
    public String getIngredients() {
        return ingredients;
    }

    /**
     * 스타일 추천 재료
     *
     * @param ingredients 스타일 추천 재료
     */
    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    /**
     * 스타일 맥주 예제
     *
     * @return 스타일 맥주 예제
     */
    public String getExamples() {
        return examples;
    }

    /**
     * 스타일 맥주 예제
     *
     * @param examples 스타일 맥주 예제
     */
    public void setExamples(String examples) {
        this.examples = examples;
    }

    /**
     * 작성자 아이디
     *
     * @return 작성자 아이디
     */
    public String getInsertId() {
        return insertId;
    }

    /**
     * 작성자 아이디
     *
     * @param insertId 작성자 아이디
     */
    public void setInsertId(String insertId) {
        this.insertId = insertId;
    }

    /**
     * 작성 날짜
     *
     * @return 작성 날짜
     */
    public Date getInsertDate() {
        return insertDate;
    }

    /**
     * 작성 날짜
     *
     * @param insertDate 작성 날짜
     */
    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    /**
     * 수정자 아이디
     *
     * @return 수정자 아이디
     */
    public String getUpdateId() {
        return updateId;
    }

    /**
     * 수정자 아이디
     *
     * @param updateId 수정자 아이디
     */
    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    /**
     * 수정 날짜
     *
     * @return 수정 날짜
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * 수정 날짜
     *
     * @param updateDate 수정 날짜
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * 삭제자 아이디
     *
     * @return 삭제자 아이디
     */
    public String getDeleteId() {
        return deleteId;
    }

    /**
     * 삭제자 아이디
     *
     * @param deleteId 삭제자 아이디
     */
    public void setDeleteId(String deleteId) {
        this.deleteId = deleteId;
    }

    /**
     * 삭제 날짜
     *
     * @return 삭제 날짜
     */
    public Date getDeleteDate() {
        return deleteDate;
    }

    /**
     * 삭제 날짜
     *
     * @param deleteDate 삭제 날짜
     */
    public void setDeleteDate(Date deleteDate) {
        this.deleteDate = deleteDate;
    }

    /**
     * 수정 성공 여부.
     *
     * @return 수정 성공 여부
     */
    public Boolean getUpdateFlag() {
        return updateFlag;
    }

    /**
     * 수정 성공 여부.
     *
     * @param updateFlag 수정 성공 여부
     */
    public void setUpdateFlag(Boolean updateFlag) {
        this.updateFlag = updateFlag;
    }

    /**
     * 삭제 성공 여부.
     *
     * @return 삭제 성공 여부
     */
    public Boolean getDeleteFlag() {
        return deleteFlag;
    }

    /**
     * 삭제 성공 여부.
     *
     * @param deleteFlag 삭제 성공 여부
     */
    public void setDeleteFlag(Boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
