package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

public class Fermentable implements Serializable {
    private static final long serialVersionUID = 1L;

    // 발효 한글명
    private String name;
    // 발효 영문명
    private String koreanName;
    // 발효 버전 (Fix : "1")
    private Integer version;
    // 발효 종류 ("Grain", "Sugar", "Extract", "Dry Extract" or "Adjunct")
    private String type;
    // 발효의 양 (발효, 추출 또는 설탕의 무게 : "Kg")
    private Double amount;
    // 발효 수율 (중량 원료의 수율 : "%")
    private Double yield;
    // 맥주의 색상 (SRM)
    private Double color;
    //끓인 후 추가되는 것의 유무 (Default : "FALSE")
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
    //
    private Boolean recommend_mash;
    //
    private Double ibuGalPerLb;
    // 수정자 아이디
    private String updateId;
    // 수정 날짜
    private Date updateDt;


    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
