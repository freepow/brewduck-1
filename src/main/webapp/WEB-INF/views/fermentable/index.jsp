<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
    <div class="page-title"> <i class="icon-custom-left"></i>
        <h3>몰트 데이터베이스 - <span class="semi-bold">FERMENTABLE DATABASE</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value=""> <%--타입별--%>
                        <%--<input name="aroma" type ="hidden" id="aroma" type="text"  class="form-control" value=""> &lt;%&ndash;전체/ 향 /쓴맛&ndash;%&gt;--%>

                        <div class="row column-seperation">
                            <div class="col-md-6">
                                <h4>이름으로 찾기</h4>
                                <div class="row form-row">
                                    <div class="col-md-11">
                                        <input name="koreanName" id="koreanName" type="text"  class="form-control" placeholder="몰트 한글 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                    </div>
                                    <div class="col-md-11">
                                        <input name="name" id="name" type="text"  class="form-control" placeholder="영문 몰트 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                    </div>
                                </div>
                                <h4>타입으로 찾기</h4>
                                <div class="row form-row">
                                    <br>
                                    <div class="col-md-12">
                                        <button id="aleButton" type="button" class="btn btn-white btn-xs btn-mini" value="1"> </button>
                                        <button id="lagerButton" type="button" class="btn btn-white btn-xs btn-mini" value="3"> </button>
                                        <button id="wheatButton" type="button" class="btn btn-white btn-xs btn-mini" value="4"> </button>
                                        <button id="wineButton" type="button" class="btn btn-white btn-xs btn-mini" value="5"> </button>
                                        <button id="champagneButton" type="button" class="btn btn-white btn-xs btn-mini" value="2"> </button>
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
                            <th>색상</th>
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
        function getTypeCount(){
            $.get("/fermentable/countFermentableType", function(data, status){
                /*alert("에일 값은 : " + data.aleCntName + "\n" + "de 값은 : " + data.aleCnt + "\n");*/
                $("#aleButton").html("("+data.aleCntName +data.aleCnt+" 건)"); /*에일*/
                $("#lagerButton").html("("+data.lagerCntName +data.lagerCnt+" 건)"); /*라거*/
                $("#wheatButton").html("("+data.wheatCntName +data.wheatCnt+" 건)"); /*위트*/
                $("#wineButton").html("("+data.wineCntName +data.wineCnt+" 건)"); /*와인*/
                $("#champagneButton").html("("+data.champagneCntName +data.champagneCnt+" 건)"); /*샴페인*/
            })
        }

        function search(){
            getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
            //getResult();
        }

        function goDetail(seq){
            location.href = "/fermentable/detail/"+seq;
        }

        function setTypeSearch(){
            $("#type").val(jQuery(this).val());
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

            getTypeCount();                  //타입별 카운트 (조회영역)
            search();                          //조회
            $("#name").focus();              //이름칸으로 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

            $("#search").click(function(){
                search();
            });

            $("#fullSearch").click(function(){
                $("#type").val('');             //TODO : 초기화 함수로 뺄것
                search();
            });
            $("#aleButton").click(setTypeSearch);
            $("#lagerButton").click(setTypeSearch);
            $("#wheatButton").click(setTypeSearch);
            $("#wineButton").click(setTypeSearch);
            $("#champagneButton").click(setTypeSearch);
        });
    </script>
</content>