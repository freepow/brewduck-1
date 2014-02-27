package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 레시피, Value Object
 *
 * 신재근, 2014-02-27
 */
public class Recipe implements Serializable {
    private static final long serialVersionUID = 1L;

    // 레시피 명
    private String name;
    // 레시피 버전
    private Integer version;
    // 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
    private String type;
    // 맥주 스타일 리스트
    private List<Style> styles;
    // 레시피 양조자
    private String brewer;
    // 레시피 보조 양조자
    private String asstBrewer;
    // 레시피 배치 완성 사이즈
    private Integer batchSize;
    // 레시피 워트 시작시 사이즈
    private Integer boilSize;
    // 레시피 워트 보일링 시간 (분)
    private Integer boilTime;
    // 레시피 수율
    private Integer efficiency;
    // 맥주 홉 리스트
    private List<Hop> hops;
    // 맥주 맥아(발효) 리스트
    private List<Fermentable> fermentables;
    // 맥주 레시피 기타 재료
    private List<Misc> miscs;
    // 맥주 효모 리스트
    private List<Yeast> yeasts;
    // 맥주 매쉬(당화) 리스트
    private List<Mash> mashs;
    // 레시피 메모
    private String notes;
    // 초기 비중
    private Double og;
    // 최종 비중
    private Double fg;
    // 1차 발효 시간
    private Integer primaryAge;
    // 1차 발효 온도
    private Integer primaryTemp;
    // 2차 발효 시간
    private Integer secondaryAge;
    // 2차 발효 온도
    private Integer secondaryTemp;
    // 병입 발효 시간
    private Integer age;
    // 병입 발효 온도
    private Integer ageTemp;
    // 레시피 최초 작성일자
    private Date date;
    // 프라이밍 슈가 명
    private String primingSugarName;
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


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Style> getStyles() {
        return styles;
    }

    public void setStyles(List<Style> styles) {
        this.styles = styles;
    }

    public String getBrewer() {
        return brewer;
    }

    public void setBrewer(String brewer) {
        this.brewer = brewer;
    }

    public String getAsstBrewer() {
        return asstBrewer;
    }

    public void setAsstBrewer(String asstBrewer) {
        this.asstBrewer = asstBrewer;
    }

    public Integer getBatchSize() {
        return batchSize;
    }

    public void setBatchSize(Integer batchSize) {
        this.batchSize = batchSize;
    }

    public Integer getBoilSize() {
        return boilSize;
    }

    public void setBoilSize(Integer boilSize) {
        this.boilSize = boilSize;
    }

    public Integer getBoilTime() {
        return boilTime;
    }

    public void setBoilTime(Integer boilTime) {
        this.boilTime = boilTime;
    }

    public Integer getEfficiency() {
        return efficiency;
    }

    public void setEfficiency(Integer efficiency) {
        this.efficiency = efficiency;
    }

    public List<Hop> getHops() {
        return hops;
    }

    public void setHops(List<Hop> hops) {
        this.hops = hops;
    }

    public List<Fermentable> getFermentables() {
        return fermentables;
    }

    public void setFermentables(List<Fermentable> fermentables) {
        this.fermentables = fermentables;
    }

    public List<Misc> getMiscs() {
        return miscs;
    }

    public void setMiscs(List<Misc> miscs) {
        this.miscs = miscs;
    }

    public List<Yeast> getYeasts() {
        return yeasts;
    }

    public void setYeasts(List<Yeast> yeasts) {
        this.yeasts = yeasts;
    }

    public List<Mash> getMashs() {
        return mashs;
    }

    public void setMashs(List<Mash> mashs) {
        this.mashs = mashs;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Double getOg() {
        return og;
    }

    public void setOg(Double og) {
        this.og = og;
    }

    public Double getFg() {
        return fg;
    }

    public void setFg(Double fg) {
        this.fg = fg;
    }

    public Integer getPrimaryAge() {
        return primaryAge;
    }

    public void setPrimaryAge(Integer primaryAge) {
        this.primaryAge = primaryAge;
    }

    public Integer getPrimaryTemp() {
        return primaryTemp;
    }

    public void setPrimaryTemp(Integer primaryTemp) {
        this.primaryTemp = primaryTemp;
    }

    public Integer getSecondaryAge() {
        return secondaryAge;
    }

    public void setSecondaryAge(Integer secondaryAge) {
        this.secondaryAge = secondaryAge;
    }

    public Integer getSecondaryTemp() {
        return secondaryTemp;
    }

    public void setSecondaryTemp(Integer secondaryTemp) {
        this.secondaryTemp = secondaryTemp;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getAgeTemp() {
        return ageTemp;
    }

    public void setAgeTemp(Integer ageTemp) {
        this.ageTemp = ageTemp;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPrimingSugarName() {
        return primingSugarName;
    }

    public void setPrimingSugarName(String primingSugarName) {
        this.primingSugarName = primingSugarName;
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
