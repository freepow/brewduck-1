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

    // 효모 영문명
    private String name;
    // 효모 한글명
    private String koreanName;
    // 효모 버전
    private Integer version;
    // 효모 종류
    private String type;
    // 효모 유형
    private String form;
    // 효모 양
    private Double amount;
    // 효모 양과 중량
    private Boolean amountIsWeight;
    // 효모의 실험실에서 생산한 이름
    private String laboratory;
    // 효모 생산 아이디
    private String productId;
    // 효모 최소 온도
    private Double minTemperature;
    // 효모 최고 온도
    private Double maxTemperature;
    // 효모 응집
    private String flocculation;
    // 효모 희석
    private Double attenuation;
    // 효모 메모
    private String notes;
    // 효모가 가장 적합한 스타일이나 맥주
    private String bestFor;
    // 효모 배양 횟수
    private Integer timesCultured;
    // 효모 사용 최대 횟수
    private Integer maxReuse;
    // 효모 2번재 추가 유무
    private Boolean addToSecondary;
    // 작성자 아이디
    private String insertId;
    // 작성자 날짜
    private Double insertDate;
    // 수정자 아이디
    private String updateId;
    // 수정자 날짜
    private Double updateDate;
    // 삭제자 아이디
    private String deleteId;
    // 삭제자 날짜
    private Double deleteDate;


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
    public Double getInsertDate() {
        return insertDate;
    }

    /**
     * 작성 날짜
     *
     * @param insertDate 작성 날짜
     */
    public void setInsertDate(Double insertDate) {
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
    public Double getUpdateDate() {
        return updateDate;
    }

    /**
     * 수정 날짜
     *
     * @param updateDate 수정 날짜
     */
    public void setUpdateDate(Double updateDate) {
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
    public Double getDeleteDate() {
        return deleteDate;
    }

    /**
     * 삭제 날짜
     *
     * @param deleteDate 삭제 날짜
     */
    public void setDeleteDate(Double deleteDate) {
        this.deleteDate = deleteDate;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
