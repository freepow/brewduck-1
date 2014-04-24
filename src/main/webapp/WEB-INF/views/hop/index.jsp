<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
<div class="page-title"> <i class="icon-custom-left"></i>
    <h3>홉 데이터베이스 - <span class="semi-bold">HOP DATABASE</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">
    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramHop">
        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value=""> <%--국가별--%>
        <input name="aroma" type ="hidden" id="aroma" type="text"  class="form-control" value=""> <%--전체/ 향 /쓴맛--%>

        <div class="row column-seperation">
            <div class="col-md-6">
                <h4>특성으로 찾기</h4>
                <div class="row form-row">
                    <div class="col-md-11">
                        <input name="koreanName" id="koreanName" type="text"  class="form-control" placeholder="홉 한글 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                    </div>
                    <div class="col-md-11">
                        <input name="name" id="name" type="text"  class="form-control" placeholder="영문 홉 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                    </div>
                    <!--div class="col-md-1" id="loading">
                        <img style="float: left;" alt="" src="/resources/landing/images/supersized-progress.gif" />
                    </div-->
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <div class="radio">
                            <input id="allRadio" type="radio" name="type" value="" checked="checked">
                            <label for="allRadio">전체</label>
                            <input id="aromaRadio" type="radio" name="type" value="1">
                            <label for="aromaRadio">향</label>
                            <input id="bittersRadio" type="radio" name="type" value="2">
                            <label for="bittersRadio">쓴맛</label>
                        </div>
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <button id="usButton" type="button" class="btn btn-white btn-xs btn-mini" value="US"> </button>
                        <button id="deButton" type="button" class="btn btn-white btn-xs btn-mini" value="DE"> </button>
                        <button id="ukButton" type="button" class="btn btn-white btn-xs btn-mini" value="UK"> </button>
                        <button id="nzButton" type="button" class="btn btn-white btn-xs btn-mini" value="NZ"> </button>
                        <button id="auButton" type="button" class="btn btn-white btn-xs btn-mini" value="AU"> </button>
                        <button id="siButton" type="button" class="btn btn-white btn-xs btn-mini" value="SI"> </button>
                        <button id="etcButton" type="button" class="btn btn-white btn-xs btn-mini" value=""> </button>
                    </div>



                </div>
                <div class="row form-row">
                    <br>
                    <br>
                    <div class="col-md-12">
                        <div id="aromaArea" class="checkbox check-default checkbox-circle">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h4>수치로 찾기 (기능 구현중)</h4>
                <div class="row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">ALPHA</span>
                        <p>Alpha 산 (α acids) 은 맥주의 생산에 있어서 가장 중요한 ...(더보기) </p>
                    </div>
                    <div class="slider warning col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="40" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
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
                <div id="search" class="btn btn-danger btn-cons" ><i class="icon-ok"></i> 조회</div>
                <div id="fullSearch" class="btn btn-primary btn-cons" ><i class="icon-ok"></i> 전체 조회</div>
            </div>
        </div>
    </form:form>
</div>
<div class="grid-body ">
    <table class="table table-bordered no-more-tables">

    <thead>
        <tr>
            <th class="small-cell"> </th>
            <th>이름</th>
            <th>영문명</th>
            <th>타입</th>
            <th>원산지</th>
            <th>ALPHA</th>
            <th>BETA</th>
            <th>HSI</th>
        </tr>
        </thead>
        <tbody id="result" name="result">
            <div class="progress progress-striped active progress-large" id="loading">
                <div data-percentage="0%" style="width: 45%;" class="progress-bar progress-bar-success"></div>
            </div>
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>


<content tag="local_script">
<script>
    function getNationCount(){
        $.get("/hop/countHopOrigin", function(data, status){
            //alert("US 값은 : " + data.usCnt + "\n" + "de 값은 : " + data.deCnt + "\n");
            $("#usButton").html("("+data.usCntName +data.usCnt+" 건)"); /*미국*/
            $("#deButton").html("("+data.deCntName +data.deCnt+" 건)"); /*독일*/
            $("#ukButton").html("("+data.ukCntName +data.ukCnt+" 건)"); /*영국*/
            $("#nzButton").html("("+data.nzCntName +data.nzCnt+" 건)"); /*뉴질랜드*/
            $("#auButton").html("("+data.auCntName +data.auCnt+" 건)"); /*호주*/
            $("#siButton").html("("+data.siCntName +data.siCnt+" 건)"); /*슬로베니아*/
            $("#etcButton").html("("+data.etcCntName +data.etcCnt+" 건)"); /*기타*/
        })
    }

    function getAromaList(){

        var aromaHtml = "";

        $.get("/hop/getAromaList", function(data, status){
            //alert("US 값은 : " + data.aromaName);

            $.each(data, function(i){

                aromaHtml = aromaHtml +  "<input id='aromaCode"+ data[i].aromaCode +"' type='checkbox' value='"+ data[i].aromaCode +"'>";
                aromaHtml = aromaHtml +  "<label for='aromaCode"+ data[i].aromaCode +"'>"+data[i].aromaName+"</label>";



            });

            $("#aromaArea").append(aromaHtml);

        })
    }

    function search(){
        getLoadingTime();                                                   //로딩 아이콘 호출

        $("#result").html("");
        $("#result").load("/hop/list", $("#searchForm").serialize());
        //getResult();
    }

    function goDetail(seq){
        location.href = "/hop/detail/"+seq;
    }

    function setOriginSearch(){
        $("#origin").val(jQuery(this).val());
        search();
    }

    function setAromaSearch(){
        $("#aroma").val(jQuery(this).val());
        search();
    }

    function getLoadingTime(){
        if($("loading").is("visible")){return;}
        document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
        setTimeout(function(){
            document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
        },500);
    }


    $(document).ready(function() {

        $('.slider-element').slider();  //슬라이더 초기화
        getNationCount();                  //원산지별 카운트 (조회영역)
        getAromaList();
        search();                          //조회
        $("#name").focus();              //이름칸으로 포커스
        document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        $("#search").click(function(){
        search();
        });

        $("#fullSearch").click(function(){
            $("#origin").val('');             //TODO : 초기화 함수로 뺄것
            search();
        });
        $("#allRadio").click(setAromaSearch);
        $("#aromaRadio").click(setAromaSearch);
        $("#bittersRadio").click(setAromaSearch);
        $("#usButton").click(setOriginSearch);
        $("#deButton").click(setOriginSearch);
        $("#ukButton").click(setOriginSearch);
        $("#nzButton").click(setOriginSearch);
        $("#auButton").click(setOriginSearch);
        $("#siButton").click(setOriginSearch);
        $("#etcButton").click(setOriginSearch);
    });
</script>
</content>