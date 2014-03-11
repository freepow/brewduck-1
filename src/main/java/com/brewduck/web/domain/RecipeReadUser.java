package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;


/**
 * 레시피 조회한 사용자 목록, Value Object
 *
 * 신재근, 2014-02-27
 */
public class RecipeReadUser implements Serializable {
    private static final long serialVersionUID = 1L;

    // 레시피 순번
    private Integer seq;
    // 레시피 한글명
    private String name;
    // 작성자 아이디
    private String insertId;
    // 작성자 날짜
    private Date insertDate;


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

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
