package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 당화 단계, Value Object
 *
 * 신재근, 2014-02-27
 */
public class MashStep implements Serializable {
    private static final long serialVersionUID = 1L;

    // 당화 단계 영문명
    private String name;
    // 당화 단계 한글명
    private String koreanName;
    // 당화 단계 버전
    private Integer version;
    // 당화 단계 종류 (물 주입, 가열, 달임)
    private String type;
    // 물 주입하는 양 (리터)
    private Integer infuseAmount;
    // 단계에 대한 목표 온도
    private Integer stepTemp;
    // 단계에서 소비되는 시간
    private Integer stepTime;
    // 원하는 온도에 달성하는 시간
    private Integer rampTime;
    // 마지막 당화 온도 (온도가 떨어질 것으로 예상할 수 있는 온도 )
    private Integer endTemp;
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
     * 당화 단계 영문명
     *
     * @return 당화 단계 영문명
     */
    public String getName() {
        return name;
    }

    /**
     * 당화 단계 영문명
     *
     * @param name 당화 단계 영문명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 당화 단계 한글명
     *
     * @return 당화 단계 한글명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 당화 단계 한글명
     *
     * @param koreanName 당화 단계 한글명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 당화 단계 버전
     *
     * @return 당화 단계 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 당화 단계 버전
     *
     * @param version
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 당화 단계 종류
     *
     * @return 당화 단계 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 당화 단계 종류
     *
     * @param type 당화 단계 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 물 주입하는 양
     *
     * @return 물 주입하는 양
     */
    public Integer getInfuseAmount() {
        return infuseAmount;
    }

    /**
     * 물 주입하는 양
     *
     * @param infuseAmount 물 주입하는 양
     */
    public void setInfuseAmount(Integer infuseAmount) {
        this.infuseAmount = infuseAmount;
    }

    /**
     * 단계에 대한 목표 온도
     *
     * @return 단계에 대한 목표 온도
     */
    public Integer getStepTemp() {
        return stepTemp;
    }

    /**
     * 단계에 대한 목표 온도
     *
     * @param stepTemp 단계에 대한 목표 온도
     */
    public void setStepTemp(Integer stepTemp) {
        this.stepTemp = stepTemp;
    }

    /**
     * 단계에서 소비되는 시간
     *
     * @return 단계에서 소비되는 시간
     */
    public Integer getStepTime() {
        return stepTime;
    }

    /**
     * 단계에서 소비되는 시간
     *
     * @param stepTime 단계에서 소비되는 시간
     */
    public void setStepTime(Integer stepTime) {
        this.stepTime = stepTime;
    }

    /**
     * 원하는 온도에 달성하는 시간
     *
     * @return 원하는 온도에 달성하는 시간
     */
    public Integer getRampTime() {
        return rampTime;
    }

    /**
     * 원하는 온도에 달성하는 시간
     *
     * @param rampTime 원하는 온도에 달성하는 시간
     */
    public void setRampTime(Integer rampTime) {
        this.rampTime = rampTime;
    }

    /**
     * 마지막 당화 온도
     *
     * @return 마지막 당화 온도
     */
    public Integer getEndTemp() {
        return endTemp;
    }

    /**
     * 마지막 당화 온도
     *
     * @param endTemp 마지막 당화 온도
     */
    public void setEndTemp(Integer endTemp) {
        this.endTemp = endTemp;
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

