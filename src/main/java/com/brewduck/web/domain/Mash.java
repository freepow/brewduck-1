package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 당화(매쉬), Value Object
 *
 * 신재근, 2014-02-27
 */
public class Mash implements Serializable {
    private static final long serialVersionUID = 1L;

    // 당화(매쉬) 영문명
    private String name;
    // 당화(매쉬) 한글명
    private String koreanName;
    // 당화 종류
    private String type;
    // 당화 전 곡물을 넣을때 온도
    private Integer grainTemp;
    // 매쉬 단계 리스트
    private List<MashStep> mashSteps;
    // 당화 메모
    private String notes;
    // 매쉬턴(곡물 술통) 온도
    private Integer tunTemp;
    // 당화 시 스파징 온도
    private Integer spargeTemp;
    // 당화시 스파징 PH
    private Double ph;
    // 킬로그램(kg)의 매쉬턴 무게
    private Integer tunWeight;
    // 물질의 비열
    // 재질의 1그램의 물질을 1도 올리는 데 필요한 열량. (단위 cal)
    private Double tunSpecificHeat;
    // 장비 조절 여부 (기본은 "FALSE")
    // "TRUE"일 때는 매쉬턴의 장비(무게와 비열)의 온도의 영향을 준다.
    // "FALSE"일 때는 매쉬턴의 예열으로 간주한다.
    private Boolean equipAdjust;
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
     * 당화 영문명
     *
     * @return 당화 영문명
     */
    public String getName() {
        return name;
    }

    /**
     * 당화 영문명
     *
     * @param name 당화 영문명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 당화 한글명
     *
     * @return 당화 한글명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 당화 한글명
     *
     * @param koreanName 당화 한글명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 당화 종류
     *
     * @return 당화 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 당화 종류
     *
     * @param type 당화 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 당화 전 곡물을 넣을때 온도
     *
     * @return 당화 전 곡물을 넣을때 온도
     */
    public Integer getGrainTemp() {
        return grainTemp;
    }

    /**
     * 당화 전 곡물을 넣을때 온도
     *
     * @param grainTemp 당화 전 곡물을 넣을때 온도
     */
    public void setGrainTemp(Integer grainTemp) {
        this.grainTemp = grainTemp;
    }

    /**
     * 매쉬 단계 리스트
     *
     * @return 매쉬 단계 리스트
     */
    public List<MashStep> getMashSteps() {
        return mashSteps;
    }

    /**
     * 매쉬 단계 리스트
     *
     * @param mashSteps 매쉬 단계 리스트
     */
    public void setMashSteps(List<MashStep> mashSteps) {
        this.mashSteps = mashSteps;
    }

    /**
     * 당화 메모
     *
     * @return 당화 메모
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 당화 메모
     *
     * @param notes 당화 메모
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 매쉬턴 온도
     *
     * @return 매쉬턴 온도
     */
    public Integer getTunTemp() {
        return tunTemp;
    }

    /**
     * 매쉬턴 온도
     *
     * @param tunTemp 매쉬턴 온도
     */
    public void setTunTemp(Integer tunTemp) {
        this.tunTemp = tunTemp;
    }

    /**
     * 당화 시 스파징 온도
     *
     * @return 당화 시 스파징 온도
     */
    public Integer getSpargeTemp() {
        return spargeTemp;
    }

    /**
     * 당화 시 스파징 온도
     *
     * @param spargeTemp 당화 시 스파징 온도
     */
    public void setSpargeTemp(Integer spargeTemp) {
        this.spargeTemp = spargeTemp;
    }

    /**
     * 당화시 스파징 PH
     *
     * @return 당화시 스파징 PH
     */
    public Double getPh() {
        return ph;
    }

    /**
     * 당화시 스파징 PH
     *
     * @param ph 당화시 스파징 PH
     */
    public void setPh(Double ph) {
        this.ph = ph;
    }

    /**
     * 매쉬턴 무게
     *
     * @return 매쉬턴 무게
     */
    public Integer getTunWeight() {
        return tunWeight;
    }

    /**
     * 매쉬턴 무게
     *
     * @param tunWeight 매쉬턴 무게
     */
    public void setTunWeight(Integer tunWeight) {
        this.tunWeight = tunWeight;
    }

    /**
     * 물질의 비열
     *
     * @return 물질의 비열
     */
    public Double getTunSpecificHeat() {
        return tunSpecificHeat;
    }

    /**
     * 물질의 비열
     *
     * @param tunSpecificHeat 물질의 비열
     */
    public void setTunSpecificHeat(Double tunSpecificHeat) {
        this.tunSpecificHeat = tunSpecificHeat;
    }

    /**
     * 장비 조절 여부 (기본은 "FALSE")
     *
     * @return 장비 조절 여부
     */
    public Boolean getEquipAdjust() {
        return equipAdjust;
    }

    /**
     * 장비 조절 여부 (기본은 "FALSE")
     *
     * @param equipAdjust 장비 조절 여부
     */
    public void setEquipAdjust(Boolean equipAdjust) {
        this.equipAdjust = equipAdjust;
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
