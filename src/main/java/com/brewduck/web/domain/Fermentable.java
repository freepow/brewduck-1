package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 맥아, Value Object
 *
 * 신재근, 2014-02-12
 */
public class Fermentable implements Serializable {
    private static final long serialVersionUID = 1L;

    // 맥아 한글명
    private String name;
    // 맥아 영문명
    private String koreanName;
    // 맥아 버전 (Fix : "1")
    private Integer version;
    // 맥아 종류 ("Grain", "Sugar", "Extract", "Dry Extract" or "Adjunct")
    private String type;
    // 맥아의 양 (맥아, 추출 또는 설탕의 무게 : "Kg")
    private Double amount;
    // 맥아 사용처
    private String fermentableUse;
    // 맥아 수율 (중량 원료의 수율 : "%")
    private Double yield;
    // 맥주의 색상 (SRM)
    private Double color;
    // 끓인 후 추가되는 것의 유무 (Default : "FALSE")
    private Boolean addAfterBoil;
    // 원산지 국가 및 장소
    private String orgin;
    // 공급 업체 (곡물 / 추출 / 설탕의 공급 업체)
    private String supplier;
    // 주의사항 (메모)
    private String notes;
    // 거친 곡물 생산량 및 미세 입자의 수율 사이의 비율 차이
    private Double coarseFineDiff;
    // 곡물의 비율 습기
    private Double moisture;
    // 측정된 곡물의 당화 힘
    private Double diastaticPower;
    // 곡물의 단백질 ("%")
    private Double protein;
    // 맥주 최대 배치의 권장하는 비율 ("%")
    private Double maxInBatch;
    // 추천 당화
    private Boolean recommendMash;
    // 1갤런의 물에 넣은 추출물 1파운드당 IBU의 예상값.
    // IBU로 변환하려면 이 숫자를 "amount"(파운드)로 곱한 뒤 배치내 갤런값으로 나누시오.
    // 60분 끓이는 것을 가정으로 함.
    // 추출물 타입에만 적용될 수 있고, 다른경우에 이 값은 무시됨.
    private Double ibuGalPerLb;
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
    // 저장 성공 여부
    private Boolean insertFlag;
    // 수정 성공 여부
    private Boolean updateFlag;
    // 삭제 성공 여부
    private Boolean deleteFlag;


    /**
     * 맥아 한글명
     *
     * @return 맥아 한글명
     */
    public String getName() {
        return name;
    }

    /**
     * 맥아 한글명
     *
     * @param name 맥아 한글명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 맥아 영문명
     *
     * @return 맥아 영문명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 맥아 영문명
     *
     * @param koreanName 맥아 영문명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 맥아 버전
     * Fix : "1"
     *
     * @return 맥아 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 맥아 버전
     *
     * @param version 맥아 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 맥아 종류
     * ("Grain", "Sugar", "Extract", "Dry Extract" or "Adjunct")
     *
     * @return 맥아 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 맥아 종류
     *
     * @param type 맥아 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 맥아의 양
     * (맥아, 추출 또는 설탕의 무게 : "Kg")
     *
     * @return 맥아의 양
     */
    public Double getAmount() {
        return amount;
    }

    /**
     * 맥아의 양
     *
     * @param amount 맥아의 양
     */
    public void setAmount(Double amount) {
        this.amount = amount;
    }

    /**
     * 맥아 사용처
     *
     * @return 맥아 사용처
     */
    public String getFermentableUse() {
        return fermentableUse;
    }

    /**
     * 맥아 사용처
     *
     * @param fermentableUse 맥아 사용처
     */
    public void setFermentableUse(String fermentableUse) {
        this.fermentableUse = fermentableUse;
    }

    /**
     * 맥아 수율
     * (중량 원료의 수율 : "%")
     *
     * @return 맥아 수율
     */
    public Double getYield() {
        return yield;
    }

    /**
     * 맥아 수율
     *
     * @param yield 맥아 수율
     */
    public void setYield(Double yield) {
        this.yield = yield;
    }

    /**
     * 맥주의 색상 (SRM)
     *
     * @return 맥주의 색상
     */
    public Double getColor() {
        return color;
    }

    /**
     * 맥주의 색상
     *
     * @param color 맥주의 색상
     */
    public void setColor(Double color) {
        this.color = color;
    }

    /**
     * 끓인 후 추가되는 것의 유무
     * (Default : "FALSE")
     *
     * @return 끓인 후 추가되는 것의 유무
     */
    public Boolean getAddAfterBoil() {
        return addAfterBoil;
    }

    /**
     * 끓인 후 추가되는 것의 유무
     * (Default : "FALSE")
     *
     * @param addAfterBoil 끓인 후 추가되는 것의 유무
     */
    public void setAddAfterBoil(Boolean addAfterBoil) {
        this.addAfterBoil = addAfterBoil;
    }

    /**
     * 원산지 국가 및 장소
     *
     * @return 원산지 국가 및 장소
     */
    public String getOrgin() {
        return orgin;
    }

    /**
     * 원산지 국가 및 장소
     *
     * @param orgin 원산지 국가 및 장소
     */
    public void setOrgin(String orgin) {
        this.orgin = orgin;
    }

    /**
     * 공급 업체
     * (곡물 / 추출 / 설탕의 공급 업체)
     *
     * @return 공급 업체
     */
    public String getSupplier() {
        return supplier;
    }

    /**
     * 공급 업체
     *
     * @param supplier 공급 업체
     */
    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    /**
     * 맥아 주의사항(메모)
     *
     * @return 맥아 주의사항(메모)
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 맥아 주의사항(메모)
     *
     * @param notes 맥아 주의사항(메모)
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 거친 곡물 생산량 및 미세 입자의 수율 사이의 비율 차이
     *
     * @return 거친 곡물 생산량 및 미세 입자의 수율 사이의 비율 차이
     */
    public Double getCoarseFineDiff() {
        return coarseFineDiff;
    }

    /**
     * 거친 곡물 생산량 및 미세 입자의 수율 사이의 비율 차이
     *
     * @param coarseFineDiff 거친 곡물 생산량 및 미세 입자의 수율 사이의 비율 차이
     */
    public void setCoarseFineDiff(Double coarseFineDiff) {
        this.coarseFineDiff = coarseFineDiff;
    }

    /**
     * 곡물의 비율 습기
     *
     * @return 곡물의 비율 습기
     */
    public Double getMoisture() {
        return moisture;
    }

    /**
     * 곡물의 비율 습기
     *
     * @param moisture 곡물의 비율 습기
     */
    public void setMoisture(Double moisture) {
        this.moisture = moisture;
    }

    /**
     * 측정된 곡물의 당화 힘
     *
     * @return 측정된 곡물의 당화 힘
     */
    public Double getDiastaticPower() {
        return diastaticPower;
    }

    /**
     * 측정된 곡물의 당화 힘
     *
     * @param diastaticPower 측정된 곡물의 당화 힘
     */
    public void setDiastaticPower(Double diastaticPower) {
        this.diastaticPower = diastaticPower;
    }

    /**
     * 곡물의 단백질 ("%")
     *
     * @return 곡물의 단백질
     */
    public Double getProtein() {
        return protein;
    }

    /**
     * 곡물의 단백질
     *
     * @param protein 곡물의 단백질
     */
    public void setProtein(Double protein) {
        this.protein = protein;
    }

    /**
     * 맥주 최대 배치의 권장하는 비율 ("%")
     *
     * @return 맥주 최대 배치의 권장하는 비율
     */
    public Double getMaxInBatch() {
        return maxInBatch;
    }

    /**
     * 맥주 최대 배치의 권장하는 비율
     *
     * @param maxInBatch 맥주 최대 배치의 권장하는 비율
     */
    public void setMaxInBatch(Double maxInBatch) {
        this.maxInBatch = maxInBatch;
    }

    /**
     * 맥아 추천 당화
     *
     * @return 맥아 추천 당화
     */
    public Boolean getRecommendMash() {
        return recommendMash;
    }

    /**
     * 맥아 추천 당화
     *
     * @param recommendMash 맥아 추천 당화
     */
    public void setRecommendMash(Boolean recommendMash) {
        this.recommendMash = recommendMash;
    }

    /**
     * 1갤런의 물에 넣은 추출물 1파운드당 IBU의 예상값
     *
     * @return IBU의 예상값
     */
    public Double getIbuGalPerLb() {
        return ibuGalPerLb;
    }

    /**
     * 1갤런의 물에 넣은 추출물 1파운드당 IBU의 예상값
     *
     * @param ibuGalPerLb IBU의 예상값
     */
    public void setIbuGalPerLb(Double ibuGalPerLb) {
        this.ibuGalPerLb = ibuGalPerLb;
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
     * 저장 성공 여부.
     *
     * @return 저장 성공 여부
     */
    public Boolean getInsertFlag() {
        return insertFlag;
    }

    /**
     * 저장 성공 여부.
     *
     * @param insertFlag 저장 성공 여부
     */
    public void setInsertFlag(Boolean insertFlag) {
        this.insertFlag = insertFlag;
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
