<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
    <div class="page-title"> <i class="icon-custom-left"></i>
        <h3>발효재료 데이터베이스 - <span class="semi-bold">FERMENTABLE DATABASE</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value=""> <%--타입별--%>
                        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value=""><%--원산지별--%>

                        <div class="row column-seperation">
                            <div class="col-md-6">
                                <h4>이름으로 찾기</h4>
                                <div class="row form-row">
                                    <div class="col-md-11">
                                        <input name="koreanName" id="koreanName" type="text"  class="form-control" placeholder="발효재료 한글 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                    </div>
                                    <div class="col-md-11">
                                        <input name="name" id="name" type="text"  class="form-control" placeholder="영문 발효재료 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                    </div>
                                </div>
                                <h4>원산지로 찾기</h4>
                                <div class="row form-row">
                                    <br>
                                    <div class="col-md-12">
                                        <button id="usButton" type="button" class="btn btn-white btn-xs btn-mini" value="US"> </button>
                                        <button id="deButton" type="button" class="btn btn-white btn-xs btn-mini" value="DE"> </button>
                                        <button id="ukButton" type="button" class="btn btn-white btn-xs btn-mini" value="UK"> </button>
                                        <button id="beButton" type="button" class="btn btn-white btn-xs btn-mini" value="BE"> </button>
                                        <button id="caButton" type="button" class="btn btn-white btn-xs btn-mini" value="CA"> </button>
                                        <button id="etcButton" type="button" class="btn btn-white btn-xs btn-mini" value="ETC"> </button>
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
                            <th>수율</th>
                            <th>색상(SRM)</th>
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
            $.get("/fermentable/countFermentableOrigin", function(data, status){
                //alert("US 값은 : " + data.usCnt + "\n" + "de 값은 : " + data.deCnt + "\n");
                $("#usButton").html("("+data.usCntName +data.usCnt+" 건)"); /*미국*/
                $("#deButton").html("("+data.deCntName +data.deCnt+" 건)"); /*독일*/
                $("#ukButton").html("("+data.ukCntName +data.ukCnt+" 건)"); /*영국*/
                $("#beButton").html("("+data.beCntName +data.beCnt+" 건)"); /*벨기에*/
                $("#caButton").html("("+data.caCntName +data.caCnt+" 건)"); /*캐나다*/
                $("#etcButton").html("("+data.etcCntName +data.etcCnt+" 건)"); /*기타*/
            })
        }

        function search(){
            getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
            //getResult();
        }

        function goDetail(seq, titleInUrl){
            location.href = "/fermentable/"+seq+"/"+titleInUrl;
        }

        function setOriginSearch(){
            $("#origin").val(jQuery(this).val());
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

            getNationCount();                  //원산지별 카운트 (조회영역)
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
            $("#usButton").click(setOriginSearch);
            $("#deButton").click(setOriginSearch);
            $("#ukButton").click(setOriginSearch);
            $("#beButton").click(setOriginSearch);
            $("#caButton").click(setOriginSearch);
            $("#etcButton").click(setOriginSearch);
        });
    </script>
</content>