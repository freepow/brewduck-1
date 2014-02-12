package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

/**
 * 홉, Value Object
 *
 * 신재근, 2014-02-12
 */
public class Hop implements Serializable {
	private static final long serialVersionUID = 1L;

    // 홉 한글명
    private String name;
    // 홉 영문명
    private String korean_name;
    // 홉 버전
    private Integer version;
    // 홉 투명도
    private Double alpha;
    // 홉의 량
    private Double amount;
    // 홉의 사용 용도
    private String use;
    // 홉의 사용 용도의 시간 (단위 : 분)
    private Integer time;
    // 홉의 주의사항 (설명)
    private String notes;
    // 홉의 용도 (쓴맛, 향, 둘다)
    private String type;
    // 홉의 형태 (Pellet, Plug, Leaf)
    private String form;
    // 홉 베타값 (단위 : %)
    private Double beta;
    // 홉 알파값 손실율 (단위 : %)
    private Double hsi;
    // 홉 원산지
    private String origin;
    // 홉 대체 재료
    private String substitutes;
    // Humulene 함량 (단위 : %)
    // 향기의 주성분
    private Double humulene;
    // Caryophyllene 함량 (단위 : %)
    private Double caryophyllene;
    // Cohumulone 함량 (단위 :%)
    private Double cohumulone;
    // Myrcene 함량 (단위 : %)
    // 항기의 주성분
    private Double myrcene;
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
     * 홉 한글명
     *
     * @return 홉 한글명
     */
    public String getName() {
        return name;
    }

    /**
     * 홉 한글명
     *
     * @param name 홉 한글명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 홉 영문명
     *
     * @return 홉 영문명
     */
    public String getKorean_name() {
        return korean_name;
    }

    /**
     * 홉 영문명
     *
     * @param korean_name 홉 영문명
     */
    public void setKorean_name(String korean_name) {
        this.korean_name = korean_name;
    }

    /**
     * 홉의 버전
     *
     * @return 홉의 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 홉의 버전
     *
     * @param version 홉의 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 홉의 투명도
     *
     * @return 홉의 투명도
     */
    public Double getAlpha() {
        return alpha;
    }

    /**
     * 홉의 투명도
     *
     * @param alpha 홉의 투명도
     */
    public void setAlpha(Double alpha) {
        this.alpha = alpha;
    }

    /**
     * 홉의 량
     *
     * @return 홉의 량
     */
    public Double getAmount() {
        return amount;
    }

    /**
     * 홉의 량
     *
     * @param amount 홉의 량
     */
    public void setAmount(Double amount) {
        this.amount = amount;
    }

    /**
     * 홉의 사용 용도
     *
     * @return 홉의 사용 용도
     */
    public String getUse() {
        return use;
    }

    /**
     * 홉의 사용 용도
     *
     * @param use 홉의 사용 용도
     */
    public void setUse(String use) {
        this.use = use;
    }

    /**
     * 홉의 사용 용도의 시간
     *
     * @return 홉의 사용 용도의 시간
     */
    public Integer getTime() {
        return time;
    }

    /**
     * 홉의 사용 용도의 시간
     *
     * @param time 홉의 사용 용도의 시간
     */
    public void setTime(Integer time) {
        this.time = time;
    }

    /**
     * 홉의 주의사항 (메모)
     *
     * @return 홉의 주의사항 (메모)
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 홉의 주의사항 (메모)
     *
     * @param notes 홉의 주의사항 (메모)
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 홉의 용도 (쓴맛, 향, 둘다)
     *
     * @return 홉의 용도
     */
    public String getType() {
        return type;
    }

    /**
     * 홉의 용도 (쓴맛, 향, 둘다)
     *
     * @param type 홉의 용도
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 홉의 형태 (Pellet, Plug, Leaf)
     *
     * @return 홉의 형태
     */
    public String getForm() {
        return form;
    }

    /**
     * 홉의 형태 (Pellet, Plug, Leaf)
     *
     * @param form 홉의 형태
     */
    public void setForm(String form) {
        this.form = form;
    }

    /**
     * 홉 베타값 (단위 : %)
     *
     * @return 홉 베타값
     */
    public Double getBeta() {
        return beta;
    }

    /**
     * 홉 베타값 (단위 : %)
     *
     * @param beta 홉 베타값
     */
    public void setBeta(Double beta) {
        this.beta = beta;
    }

    /**
     * 홉의 알파값 손실율 (단위 : %)
     *
     * @return 홉의 알파값 손실율
     */
    public Double getHsi() {
        return hsi;
    }

    /**
     * 홉의 알파값 손실율 (단위 : %)
     *
     * @param hsi 홉의 알파값 손실율
     */
    public void setHsi(Double hsi) {
        this.hsi = hsi;
    }

    /**
     * 홉 원산지
     *
     * @return 홉 원산지
     */
    public String getOrigin() {
        return origin;
    }

    /**
     * 홉 원산지
     *
     * @param origin 홉 원산지
     */
    public void setOrigin(String origin) {
        this.origin = origin;
    }

    /**
     * 홉 대체 재료
     *
     * @return 홉 대체 재료
     */
    public String getSubstitutes() {
        return substitutes;
    }

    /**
     * 홉 대체 재료
     *
     * @param substitutes 홉 대체 재료
     */
    public void setSubstitutes(String substitutes) {
        this.substitutes = substitutes;
    }

    /**
     * Humulene 함량 (단위 : %)
     * 향기의 주성분
     *
     * @return Humulene 함량
     */
    public Double getHumulene() {
        return humulene;
    }

    /**
     * Humulene 함량 (단위 : %)
     * 향기의 주성분
     *
     * @param humulene Humulene 함량
     */
    public void setHumulene(Double humulene) {
        this.humulene = humulene;
    }

    /**
     * Caryophyllene 함량
     * (단위 : %)
     *
     * @return Caryophyllene 함량
     */
    public Double getCaryophyllene() {
        return caryophyllene;
    }

    /**
     * Caryophyllene 함량
     * (단위 : %)
     *
     * @param caryophyllene Caryophyllene 함량
     */
    public void setCaryophyllene(Double caryophyllene) {
        this.caryophyllene = caryophyllene;
    }

    /**
     * Cohumulone 함량
     * (단위 :%)
     *
     * @return Cohumulone 함량
     */
    public Double getCohumulone() {
        return cohumulone;
    }

    /**
     * Cohumulone 함량
     * (단위 :%)
     *
     * @param cohumulone Cohumulone 함량
     */
    public void setCohumulone(Double cohumulone) {
        this.cohumulone = cohumulone;
    }

    /**
     * Myrcene 함량 (단위 : %)
     * 항기의 주성분
     *
     * @return Myrcene 함량
     */
    public Double getMyrcene() {
        return myrcene;
    }

    /**
     * Myrcene 함량 (단위 : %)
     * 항기의 주성분
     *
     * @param myrcene Myrcene 함량
     */
    public void setMyrcene(Double myrcene) {
        this.myrcene = myrcene;
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
