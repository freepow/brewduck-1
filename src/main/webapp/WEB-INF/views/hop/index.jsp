<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
<div class="page-title"> <i class="icon-custom-left"></i>
    <h3>맥만동 홉 데이터베이스 - <span class="semi-bold">HOP DATABASE</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">
    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramHop">

        <div class="row column-seperation">
            <div class="col-md-6">
                <h4>특성으로 찾기</h4>
                <div class="row form-row">
                    <div class="col-md-12">
                        <input name="name" id="name" type="text"  class="form-control" placeholder="홉 이름">
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">

                            <div class="radio">
                                <input id="type1" type="radio" name="type" value="" checked="checked">
                                <label for="type1">전체</label>
                                <input id="type2" type="radio" name="type" value="1">
                                <label for="type2">향</label>
                                <input id="type3" type="radio" name="type" value="2">
                                <label for="type3">쓴맛</label>
                            </div>
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <button type="button" class="btn btn-white btn-xs btn-mini">미국 (60건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">독일 (24건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">영국 (22건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">뉴질랜드 (14건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">호주 (13건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">슬로베니아 (8건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">기타 (15건)</button>
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <br>
                    <div class="col-md-12">
                        <div class="checkbox check-default checkbox-circle">
                            <input id="checkbox7" type="checkbox" value="1" checked="checked">
                            <label for="checkbox7">floral</label>
                            <input id="checkbox8" type="checkbox" value="1" >
                            <label for="checkbox8">tropical</label>
                            <input id="checkbox7" type="checkbox" value="1" >
                            <label for="checkbox7">citrus</label>
                            <input id="checkbox7" type="checkbox" value="1" checked="unchecked">
                            <label for="checkbox7">Pungent Spciy</label>
                            <input id="checkbox7" type="checkbox" value="1" checked="checked">
                            <label for="checkbox7">Hoppy</label>
                            <input id="checkbox7" type="checkbox" value="1" >
                            <label for="checkbox7">Earthy</label>
                            <input id="checkbox7" type="checkbox" value="1" checked="unchecked">
                            <label for="checkbox7">Herbal</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h4>수치로 찾기</h4>
                <div class="row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">ALPHA</span>
                        <p>Alpha 산 (α acids) 은 맥주의 생산에 있어서 가장 중요한 ...(더보기) </p>
                    </div>
                    <div class="slider sucess col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="20" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
                <div class="row form-row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">BETA</span>
                        <p>Beta 산은 ...(더보기) </p>
                    </div>
                    <div class="slider warning col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="40" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
                <div class="row form-row">
                    <div class="slider col-md-4">
                        <span class="semi-bold">HSI</span>
                        <p>HSI는...(더보기) </p>
                    </div>
                    <div class="slider info col-md-8">
                        <input type="text"  data-slider-value="[10,20]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                    </div>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <div class="pull-right">
                <div id="search" class="btn btn-danger btn-cons"><i class="icon-ok"></i> 조회</div>
            </div>
        </div>
    </form:form>
</div>
<div class="grid-body ">
    <table class="table table-striped" id="example2" >
        <thead>
        <tr>
            <th>이름</th>
            <th>타입</th>
            <th>원산지</th>
            <th>ALPHA</th>
            <th>BETA</th>
            <th>HSI</th>
            <th>Co-Humulone 함유랑</th>
        </tr>
        </thead>
        <tbody id="result" name="result">
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>


<content tag="local_script">
<script>
    function getResult(){
        var result_html = "";
        $.ajax({
            type: 'GET',
            dataType : "json",
            url : '/hop/list',
            contentType: "application/json",
            dataType : "json", //전송받을 데이터의 타입
            data : $("#searchForm").serialize(),
            success:function(list){
                $.each(list, function(i){
                    result_html = result_html + ("<tr>");
                    result_html = result_html + ("<td>"+ list[i].name +"</td>");
                    result_html = result_html + ("<td>"+ list[i].typeKorean +"</td>");
                    result_html = result_html + ("<td>"+ list[i].origin +"</td>");
                    result_html = result_html + ("<td>"+ list[i].alpha +"</td>");
                    result_html = result_html + ("<td>"+ list[i].beta +"</td>");
                    result_html = result_html + ("<td>"+ list[i].hsi +"</td>");
                    result_html = result_html + ("<td>"+ list[i].cohumulone +"</td>");
                    result_html = result_html + ("</tr>");
                    //$("#userBirthMonth").append("<option value='"+result[i].code+"'>"+result[i].codeName+"</option>")
                });
                $("#result").append(result_html);

            },
            error:function(xhr,statue,error){
                alert(error);
            }
        });
    }

    $(document).ready(function() {
        $('.slider-element').slider();
        //getResult();

        $("#search").click(function(){
            $("#result").html("");
            getResult();
        });
    });
</script>
</content>