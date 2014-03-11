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

    // 레시피 순번
    private Integer seq;
    // 레시피 한글명
    private String name;
    // 레시피 버전
    private Integer version;
    // 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
    private String type;
    // 맥주 스타일 이름
    private String styleName;
    // 맥주 스타일
    private Style style;
    // 레시피 양조자
    private String brewer;
    // 레시피 보조 양조자
    private String asstBrewer;
    // 레시피 배치 완성 사이즈
    private Integer batchSize;
    // 레시피 워트 보일링시 사이즈
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
    // 프라이밍 슈가 명
    private String primingSugarName;
    // 조회수
    private Integer readCount;
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
     * 레시피 순번
     *
     * @return 레시피 순번
     */
    public Integer getSeq() {
        return seq;
    }

    /**
     * 레시피 순번
     *
     * @param seq 레시피 순번
     */
    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    /**
     * 레시피 한글명
     *
     * @return 레시피 한글명
     */
    public String getName() {
        return name;
    }

    /**
     * 레시피 한글명
     *
     * @param name 레시피 한글명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 레시피 버전
     *
     * @return 레시피 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 레시피 버전
     *
     * @param version 레시피 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
     *
     * @return 레시피 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
     *
     * @param type 레시피 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 맥주 스타일 이름
     *
     * @return 맥주 스타일 이름
     */
    public String getStyleName() {
        return styleName;
    }

    /**
     * 맥주 스타일 이름
     *
     * @param styleName 맥주 스타일 이름
     */
    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }

    /**
     * 맥주 스타일
     *
     * @return 맥주 스타일
     */
    public Style getStyle() {
        return style;
    }

    /**
     * 맥주 스타일
     *
     * @param style 맥주 스타일
     */
    public void setStyle(Style style) {
        this.style = style;
    }

    /**
     * 레시피 양조자
     *
     * @return 레시피 양조자
     */
    public String getBrewer() {
        return brewer;
    }

    /**
     * 레시피 양조자
     *
     * @param brewer 레시피 양조자
     */
    public void setBrewer(String brewer) {
        this.brewer = brewer;
    }

    /**
     * 레시피 보조 양조자
     *
     * @return 레시피 보조 양조자
     */
    public String getAsstBrewer() {
        return asstBrewer;
    }

    /**
     * 레시피 양조자
     *
     * @param asstBrewer 레시피 보조 양조자
     */
    public void setAsstBrewer(String asstBrewer) {
        this.asstBrewer = asstBrewer;
    }

    /**
     * 레시피 배치 완성 사이즈
     *
     * @return 레시피 배치 완성 사이즈
     */
    public Integer getBatchSize() {
        return batchSize;
    }

    /**
     * 레시피 배치 완성 사이즈
     *
     * @param batchSize 레시피 배치 완성 사이즈
     */
    public void setBatchSize(Integer batchSize) {
        this.batchSize = batchSize;
    }

    /**
     * 레시피 워트 보일링시 사이즈
     *
     * @return 레시피 워트 보일링시 사이즈
     */
    public Integer getBoilSize() {
        return boilSize;
    }

    /**
     * 레시피 워트 보일링시 사이즈
     *
     * @param boilSize 레시피 워트 보일링시 사이즈
     */
    public void setBoilSize(Integer boilSize) {
        this.boilSize = boilSize;
    }

    /**
     * 레시피 워트 보일링 시간 (분)
     *
     * @return 레시피 워트 보일링 시간
     */
    public Integer getBoilTime() {
        return boilTime;
    }

    /**
     * 레시피 워트 보일링 시간 (분)
     *
     * @param boilTime 레시피 워트 보일링 시간
     */
    public void setBoilTime(Integer boilTime) {
        this.boilTime = boilTime;
    }

    /**
     * 레시피 수율
     *
     * @return 레시피 수율
     */
    public Integer getEfficiency() {
        return efficiency;
    }

    /**
     * 레시피 수율
     *
     * @param efficiency 레시피 수율
     */
    public void setEfficiency(Integer efficiency) {
        this.efficiency = efficiency;
    }

    /**
     * 맥주 홉 리스트
     *
     * @return 맥주 홉 리스트
     */
    public List<Hop> getHops() {
        return hops;
    }

    /**
     * 맥주 홉 리스트
     *
     * @param hops 맥주 홉 리스트
     */
    public void setHops(List<Hop> hops) {
        this.hops = hops;
    }

    /**
     * 맥주 맥아(발효) 리스트
     *
     * @return 맥주 맥아(발효) 리스트
     */
    public List<Fermentable> getFermentables() {
        return fermentables;
    }

    /**
     * 맥주 맥아(발효) 리스트
     *
     * @param fermentables 맥주 맥아(발효) 리스트
     */
    public void setFermentables(List<Fermentable> fermentables) {
        this.fermentables = fermentables;
    }

    /**
     * 맥주 레시피 기타 재료
     *
     * @return 맥주 레시피 기타 재료
     */
    public List<Misc> getMiscs() {
        return miscs;
    }

    /**
     * 맥주 레시피 기타 재료
     *
     * @param miscs 맥주 레시피 기타 재료
     */
    public void setMiscs(List<Misc> miscs) {
        this.miscs = miscs;
    }

    /**
     * 맥주 효모 리스트
     *
     * @return 맥주 효모 리스트
     */
    public List<Yeast> getYeasts() {
        return yeasts;
    }

    /**
     * 맥주 효모 리스트
     *
     * @param yeasts 맥주 효모 리스트
     */
    public void setYeasts(List<Yeast> yeasts) {
        this.yeasts = yeasts;
    }

    /**
     * 맥주 매쉬(당화) 리스트
     *
     * @return 맥주 매쉬(당화) 리스트
     */
    public List<Mash> getMashs() {
        return mashs;
    }

    /**
     * 맥주 매쉬(당화) 리스트
     *
     * @param mashs 맥주 매쉬(당화) 리스트
     */
    public void setMashs(List<Mash> mashs) {
        this.mashs = mashs;
    }

    /**
     * 레시피 메모
     *
     * @return 레시피 메모
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 레시피 메모
     *
     * @param notes 레시피 메모
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 초기 비중
     *
     * @return 초기 비중
     */
    public Double getOg() {
        return og;
    }

    /**
     * 초기 비중
     *
     * @param og 초기 비중
     */
    public void setOg(Double og) {
        this.og = og;
    }

    /**
     * 최종 비중
     *
     * @return 최종 비중
     */
    public Double getFg() {
        return fg;
    }

    /**
     * 최종 비중
     *
     * @param fg 최종 비중
     */
    public void setFg(Double fg) {
        this.fg = fg;
    }

    /**
     * 1차 발효 시간
     *
     * @return 1차 발효 시간
     */
    public Integer getPrimaryAge() {
        return primaryAge;
    }

    /**
     * 1차 발효 시간
     *
     * @param primaryAge 1차 발효 시간
     */
    public void setPrimaryAge(Integer primaryAge) {
        this.primaryAge = primaryAge;
    }

    /**
     * 1차 발효 온도
     *
     * @return 1차 발효 온도
     */
    public Integer getPrimaryTemp() {
        return primaryTemp;
    }

    /**
     * 1차 발효 온도
     *
     * @param primaryTemp 1차 발효 온도
     */
    public void setPrimaryTemp(Integer primaryTemp) {
        this.primaryTemp = primaryTemp;
    }

    /**
     * 2차 발효 시간
     *
     * @return 2차 발효 시간
     */
    public Integer getSecondaryAge() {
        return secondaryAge;
    }

    /**
     * 2차 발효 시간
     *
     * @param secondaryAge 2차 발효 시간
     */
    public void setSecondaryAge(Integer secondaryAge) {
        this.secondaryAge = secondaryAge;
    }

    /**
     * 2차 발효 온도
     *
     * @return 2차 발효 온도
     */
    public Integer getSecondaryTemp() {
        return secondaryTemp;
    }

    /**
     * 2차 발효 온도
     *
     * @param secondaryTemp 2차 발효 온도
     */
    public void setSecondaryTemp(Integer secondaryTemp) {
        this.secondaryTemp = secondaryTemp;
    }

    /**
     * 병입 발효 시간
     *
     * @return 병입 발효 시간
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 병입 발효 시간
     *
     * @param age 병입 발효 시간
     */
    public void setAge(Integer age) {
        this.age = age;
    }

    /**
     * 병입 발효 온도
     *
     * @return 병입 발효 온도
     */
    public Integer getAgeTemp() {
        return ageTemp;
    }

    /**
     * 병입 발효 온도
     *
     * @param ageTemp 병입 발효 온도
     */
    public void setAgeTemp(Integer ageTemp) {
        this.ageTemp = ageTemp;
    }

    /**
     * 프라이밍 슈가 명
     *
     * @return 프라이밍 슈가 명
     */
    public String getPrimingSugarName() {
        return primingSugarName;
    }

    /**
     * 프라이밍 슈가 명
     *
     * @param primingSugarName 프라이밍 슈가 명
     */
    public void setPrimingSugarName(String primingSugarName) {
        this.primingSugarName = primingSugarName;
    }

    /**
     * 조회수
     *
     * @return 조회수
     */
    public Integer getReadCount() {
        return readCount;
    }

    /**
     * 조회수
     *
     * @param readCount 조회수
     */
    public void setReadCount(Integer readCount) {
        this.readCount = readCount;
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
