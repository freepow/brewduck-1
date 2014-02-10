package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 효모, Value Object
 *
 * 신재근, 2014-02-10
 */
public class Yeast implements Serializable {
	private static final long serialVersionUID = 1L;

    private String name;
    private String koreanName;
    private Integer version;
    private String type;
    private String form;
    private Double amount;
    private Boolean amountIsWeight;
    private String laboratory;
    private String productId;
    private Double minTemperature;
    private Double maxTemperature;
    private String flocculation;
    private Double attenuation;
    private String notes;
    private String bestFor;
    private Integer timesCultured;
    private Integer maxReuse;
    private Boolean addToSecondary;
    private String updateId;
    private Date updateDt;


    /**
     * 효모 영문명
     *
     * @return 효모 영문명
     */
    public String getName() {
        return name;
    }

    /**
     * 효모 영문명
     *
     * @param name 효모 영문명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 효모 한글명
     *
     * @return 효모 한글명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 효모 한글명
     *
     * @param koreanName 효모 한글명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 버전
     *
     * @return 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 버전
     *
     * @param version 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 효모 종류
     * Ale, Lager, Wheat, Wine or Champagne
     *
     * @return 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 효모 종류
     *
     * @param type 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 효모 유형
     * Liquid, Dry, Slant or Culture
     *
     * @return 유형
     */
    public String getForm() {
        return form;
    }

    /**
     * 효모 유형
     *
     * @param form 유형
     */
    public void setForm(String form) {
        this.form = form;
    }

    /**
     * 효모 양
     * Liters, Kg
     *
     * @return 양
     */
    public Double getAmount() {
        return amount;
    }

    /**
     * 효모 양
     *
     * @param amount 양
     */
    public void setAmount(Double amount) {
        this.amount = amount;
    }

    /**
     * 효모 양과 중량
     *
     * @return 양과 중량
     */
    public Boolean getAmountIsWeight() {
        return amountIsWeight;
    }

    /**
     * 효모 양과 중량
     *
     * @param amountIsWeight 양과 중량
     */
    public void setAmountIsWeight(Boolean amountIsWeight) {
        this.amountIsWeight = amountIsWeight;
    }

    /**
     * 효모의 생산한 실험실 이름
     *
     * @return 실험실 이름
     */
    public String getLaboratory() {
        return laboratory;
    }

    /**
     * 효모의 생산한 실험실 이름
     *
     * @param laboratory 실험실 이름
     */
    public void setLaboratory(String laboratory) {
        this.laboratory = laboratory;
    }

    /**
     * 효모 상품 ID
     * 
     * @return 상품 ID
     */
    public String getProductId() {
        return productId;
    }

    /**
     * 효모 상품 ID
     *
     * @param productId 상품 ID
     */
    public void setProductId(String productId) {
        this.productId = productId;
    }

    /**
     * 최소 온도
     *
     * @return 최소 온도
     */
    public Double getMinTemperature() {
        return minTemperature;
    }

    /**
     * 최소 온도
     *
     * @param minTemperature 최소 온도
     */
    public void setMinTemperature(Double minTemperature) {
        this.minTemperature = minTemperature;
    }

    /**
     * 최고 온도
     *
     * @return 최고 온도
     */
    public Double getMaxTemperature() {
        return maxTemperature;
    }

    /**
     * 최고 온도
     *
     * @param maxTemperature 최고 온도
     */
    public void setMaxTemperature(Double maxTemperature) {
        this.maxTemperature = maxTemperature;
    }

    /**
     * 응집
     * Low, Medium, High or Very High
     *
     * @return 응집
     */
    public String getFlocculation() {
        return flocculation;
    }

    /**
     * 응집
     *
     * @param flocculation 응집
     */
    public void setFlocculation(String flocculation) {
        this.flocculation = flocculation;
    }

    /**
     * 희석
     *
     * @return 희석
     */
    public Double getAttenuation() {
        return attenuation;
    }

    /**
     * 희석
     *
     * @param attenuation 희석
     */
    public void setAttenuation(Double attenuation) {
        this.attenuation = attenuation;
    }

    /**
     * 메모
     *
     * @return 메모
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 메모
     *
     * @param notes 메모
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 제일 적합한 맥주
     *
     * @return 적합한 맥주
     */
    public String getBestFor() {
        return bestFor;
    }

    /**
     * 가장 적합한 맥주
     *
     * @param bestFor 적합한 맥주
     */
    public void setBestFor(String bestFor) {
        this.bestFor = bestFor;
    }

    /**
     * 효모 배양 횟수
     * 공장에서 나온 것은 횟수가 '0'
     *
     * @return 배양 횟수
     */
    public Integer getTimesCultured() {
        return timesCultured;
    }

    /**
     * 배양 횟수
     *
     * @param timesCultured 배양 횟수
     */
    public void setTimesCultured(Integer timesCultured) {
        this.timesCultured = timesCultured;
    }

    /**
     * 효모 최대 사용 횟수
     *
     * @return 효모 최대 사용 횟수
     */
    public Integer getMaxReuse() {
        return maxReuse;
    }

    /**
     * 효모 최대 사용 횟수
     *
     * @param maxReuse 효모 최대 사용 횟수
     */
    public void setMaxReuse(Integer maxReuse) {
        this.maxReuse = maxReuse;
    }

    /**
     * 두번째 효모 추가 유무
     *
     * @return 두번째 효모 추가 유무
     */
    public Boolean getAddToSecondary() {
        return addToSecondary;
    }

    /**
     * 두번째 효모 추가 유무
     *
     * @param addToSecondary 두번째 효모 추가 유무
     */
    public void setAddToSecondary(Boolean addToSecondary) {
        this.addToSecondary = addToSecondary;
    }

    /**
     * 수정한 사용자 아이디
     *
     * @return 수정한 사용자 아이디
     */
    public String getUpdateId() {
        return updateId;
    }

    /**
     * 수정한 사용자 아이디
     *
     * @param updateId 수정한 사용자 아이디
     */
    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    /**
     * 수정한 날짜
     *
     * @return 수정한 날짜
     */
    public Date getUpdateDt() {
        return updateDt;
    }

    /**
     * 수정한 날짜
     *
     * @param updateDt 수정한 날짜
     */
    public void setUpdateDt(Date updateDt) {
        this.updateDt = updateDt;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
