package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

public class Style implements Serializable {
	private static final long serialVersionUID = 1L;

    private Integer id;
    private String name;
    private String koreanName;
    private String category;
    private Integer version;
    private String categoryNumber;
    private String styleLetter;
    private String styleGuide;
    private String type;
    private Double ogMin;
    private Double ogMax;
    private Double fgMin;
    private Double fgMax;
    private Integer ibuMin;
    private Integer ibuMax;
    private Integer colorMin;
    private Integer colorMax;
    private Double carbMin;
    private Double carbMax;
    private Double abvMin;
    private Double abvMax;
    private String notes;
    private String profile;
    private String ingredients;
    private String examples;
    private String updateId;
    private Date updateDt;

    public Double getAbvMax() {
        return abvMax;
    }

    public void setAbvMax(Double abvMax) {
        this.abvMax = abvMax;
    }

    public Double getAbvMin() {
        return abvMin;
    }

    public void setAbvMin(Double abvMin) {
        this.abvMin = abvMin;
    }

    public Double getCarbMax() {
        return carbMax;
    }

    public void setCarbMax(Double carbMax) {
        this.carbMax = carbMax;
    }

    public Double getCarbMin() {
        return carbMin;
    }

    public void setCarbMin(Double carbMin) {
        this.carbMin = carbMin;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategoryNumber() {
        return categoryNumber;
    }

    public void setCategoryNumber(String categoryNumber) {
        this.categoryNumber = categoryNumber;
    }

    public Integer getColorMax() {
        return colorMax;
    }

    public void setColorMax(Integer colorMax) {
        this.colorMax = colorMax;
    }

    public Integer getColorMin() {
        return colorMin;
    }

    public void setColorMin(Integer colorMin) {
        this.colorMin = colorMin;
    }

    public String getExamples() {
        return examples;
    }

    public void setExamples(String examples) {
        this.examples = examples;
    }

    public Double getFgMax() {
        return fgMax;
    }

    public void setFgMax(Double fgMax) {
        this.fgMax = fgMax;
    }

    public Double getFgMin() {
        return fgMin;
    }

    public void setFgMin(Double fgMin) {
        this.fgMin = fgMin;
    }

    public Integer getIbuMax() {
        return ibuMax;
    }

    public void setIbuMax(Integer ibuMax) {
        this.ibuMax = ibuMax;
    }

    public Integer getIbuMin() {
        return ibuMin;
    }

    public void setIbuMin(Integer ibuMin) {
        this.ibuMin = ibuMin;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getKoreanName() {
        return koreanName;
    }

    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Double getOgMax() {
        return ogMax;
    }

    public void setOgMax(Double ogMax) {
        this.ogMax = ogMax;
    }

    public Double getOgMin() {
        return ogMin;
    }

    public void setOgMin(Double ogMin) {
        this.ogMin = ogMin;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getStyleGuide() {
        return styleGuide;
    }

    public void setStyleGuide(String styleGuide) {
        this.styleGuide = styleGuide;
    }

    public String getStyleLetter() {
        return styleLetter;
    }

    public void setStyleLetter(String styleLetter) {
        this.styleLetter = styleLetter;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getUpdateDt() {
        return updateDt;
    }

    public void setUpdateDt(Date updateDt) {
        this.updateDt = updateDt;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
