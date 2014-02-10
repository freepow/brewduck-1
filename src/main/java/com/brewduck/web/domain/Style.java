package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 스타일 Value Object
 *
 * 신재근, 2014-02-10
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
    // 초종 비중, 최대값
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
    // 수정자 아이디
    private String updateId;
    // 수정 날짜
    private Date updateDt;


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

    public Double getFgMin() {
        return fgMin;
    }

    public void setFgMin(Double fgMin) {
        this.fgMin = fgMin;
    }

    public Double getFgMax() {
        return fgMax;
    }

    public void setFgMax(Double fgMax) {
        this.fgMax = fgMax;
    }

    public Integer getIbuMin() {
        return ibuMin;
    }

    public void setIbuMin(Integer ibuMin) {
        this.ibuMin = ibuMin;
    }

    public Integer getIbuMax() {
        return ibuMax;
    }

    public void setIbuMax(Integer ibuMax) {
        this.ibuMax = ibuMax;
    }

    public Integer getColorMin() {
        return colorMin;
    }

    public void setColorMin(Integer colorMin) {
        this.colorMin = colorMin;
    }

    public Integer getColorMax() {
        return colorMax;
    }

    public void setColorMax(Integer colorMax) {
        this.colorMax = colorMax;
    }

    public Double getCarbMin() {
        return carbMin;
    }

    public void setCarbMin(Double carbMin) {
        this.carbMin = carbMin;
    }

    public Double getCarbMax() {
        return carbMax;
    }

    public void setCarbMax(Double carbMax) {
        this.carbMax = carbMax;
    }

    public Double getAbvMin() {
        return abvMin;
    }

    public void setAbvMin(Double abvMin) {
        this.abvMin = abvMin;
    }

    public Double getAbvMax() {
        return abvMax;
    }

    public void setAbvMax(Double abvMax) {
        this.abvMax = abvMax;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getExamples() {
        return examples;
    }

    public void setExamples(String examples) {
        this.examples = examples;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Date getUpdateDt() {
        return updateDt;
    }

    public void setUpdateDt(Date updateDt) {
        this.updateDt = updateDt;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
