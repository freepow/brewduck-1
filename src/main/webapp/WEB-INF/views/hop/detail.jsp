<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
<div class="page-title"> <a href="/hop/"><i class="icon-custom-left"></i></a>
    <h3>${HopDetail.koreanName} - <span class="semi-bold">${HopDetail.name}</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">

    <div class="row column-seperation">
        <div class="col-md-6">
            <div class="heading">
                <div class="pull-left">
                    <h4>원산지 / <span class="semi-bold">타입</span></h4>
                    <div class="slider col-md-12">
                        <button type="button" class="btn btn-warning btn-cons btn-mini" onclick="goIndex('${HopDetail.origin}')">${HopDetail.originKorean} ( ${HopDetail.origin} )</button>
                        <button type="button" class="btn btn-primary btn-cons btn-mini">${HopDetail.typeKorean}</button>
                    </div>
                </div>
                <div class="pull-right"> <span class="small-text muted">버튼을 클릭하시면 조회됩니다.</span> </div>
                <div class="clearfix"> </div>
            </div>

            <br/>
            <div class="heading">
                <div class="pull-left">
                    <h4>사용 <span class="semi-bold">용도</span></h4>
                    <div class="slider col-md-12">
                        <c:forEach items="${hopUsedForList}" var="usedFor">
                            <button type="button" class="btn btn-white btn-cons btn-mini">
                                    ${usedFor.usedFor}
                            </button>
                        </c:forEach>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>

            <!--div class="row form-row">
                <div class="col-md-12">
                    <blockquote  class="margin-top-20">
                        <p> ${HopDetail.notes}</p>
                    </blockquote>
                </div>
            </div-->

            <div class="row form-row">
                <div class="col-md-12">
                    <blockquote  class="margin-top-20">
                        <p> ${HopDetail.koreanNotes}</p>
                    </blockquote>
                </div>
            </div>

            <br/>
            <div class="heading">
                <div class="pull-left">
                    <h4> <span class="semi-bold">풍미</span></h4>
                    <div class="slider col-md-12">
                        <c:forEach items="${hopAromaList}" var="aromaName">
                            <button type="button" class="btn btn-white btn-cons btn-mini">
                                    ${aromaName.aromaName}
                            </button>
                        </c:forEach>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="heading">
                <div class="pull-left">
                    <h4> <span class="semi-bold">대체 홉</span></h4>
                    <div class="slider col-md-12">
                        <c:forEach items="${selectHopSubstitutesList}" var="substitutesName">
                            <button type="button" onclick="goDetail(' ${substitutesName.substitutesSeq}');" class="btn btn-white btn-cons btn-mini">
                                    ${substitutesName.substitutesName}
                            </button>
                        </c:forEach>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
             <br/>
            <h4> <span class="semi-bold">수치</span></h4>
            <div class="row tiles-container">
                <div class="heading">
                    <div class="pull-left">
                        <!--h4>Hop  <span class="semi-bold">chemistry</span></h4-->
                        <p>다음 패치에서는 상세수치가 업데이트 됩니다.</p>
                    </div>
                    <div class="pull-right"> <span class="small-text muted">v1.0.1</span> </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 single-colored-widget">
                    <div class="content-wrapper green">
                        <h4 class="text-white"><span class="semi-bold">${HopDetail.alpha} %</span> - <span class="semi-bold">Alpha</span></h4>
                        <p> 브루어들이 자신이 양조할 맥주의 쓴 맛을 계산하게 해주기 위해 알파산 퍼센티지가 기재되어있습니다.</p>
                        <button class="btn btn-lg" data-toggle="modal" data-target="#myModal"> 자세히 보기 </button>

                                <!--div class="pull-left" class="col-md-12">
                                    <input type="text"  data-slider-value="[${HopDetail.alpha}]" data-slider-step="0.5" data-slider-max="25" data-slider-min="0" value=""
                                           class="slider-element form-control" data-slider-selection="after">
                                </div>
                                <!--div class="pull-right"> (자세히 보기)</div-->
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="col-md-4 single-colored-widget">
                    <div class="content-wrapper red">
                        <h4 class="text-white"><span class="semi-bold">${HopDetail.beta} %</span> - <span class="semi-bold">BETA</span></h4>
                        <p>발효와 저장과정에서 알파산이 내는 쓴 맛이 점차 사라질 때 베타산은 천천히 산화를 통하여 쓴맛을 만들어냅니다.</p>
                        <button class="btn btn-lg" data-toggle="modal" data-target="#myModal2"> 자세히 보기 </button>
                        <!--div class="pull-left">
                            <input type="text"  data-slider-value="[${HopDetail.beta}]" data-slider-step="0.5" data-slider-max="25" data-slider-min="0" value="" class="slider-element form-control" data-slider-selection="after">
                        </div>
                        <!--div class="pull-right"> (자세히 보기)</div-->
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="col-md-4 single-colored-widget">
                    <div class="content-wrapper blue">
                        <h4 class="text-white"><span class="semi-bold">${HopDetail.hsi} %</span> - <span class="semi-bold">HSI</span></h4>
                        <p>개월 동안 소멸되는 알파산의 퍼센티지를 나타내는 저장성 수치. 오래된 홉의 알파산을 계산할 때 이용된다.</p>
                        <!--div class="pull-left">
                            <input type="text"  data-slider-value="[${HopDetail.hsi}]" data-slider-step="0.5" data-slider-max="100" data-slider-min="0" value="" class="slider-element form-control" data-slider-selection="after">
                        </div>
                        <!--div class="pull-right"> (자세히 보기)</div-->
                        <div class="clearfix"></div>
                    </div>
                </div>

                <!--div class="col-md-4 col-xs-7 no-padding">
                    <div class="tiles red p-t-20 text-center">
                        <i class="fa fa-share fa fa-2x fa-spin" id="widget-partly-rainy-day"></i>
                        <h5 class="bold text-white text-center p-b-15">${HopDetail.hsi} % - HSI</h5>
                    </div>
                </div-->

            </div>

            <!--div class="row tiles-container">
                <div class="slider info col-md-8">
                    <input type="text"  data-slider-value="[10]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div-->


            <!--div class="row form-row">
                <div class="slider col-md-4">
                    <span class="semi-bold">CO-HUMULONE 함유랑</span>
                </div>
                <div class="slider info col-md-8">
                    <input type="text" disable data-slider-value="[10,45]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div-->

        </div>

    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <br>
                    <i class="icon-credit-card icon-7x"></i>
                    <h4 id="myModalLabel" class="semi-bold">Alpha acids</h4>
                    <br>
                </div>
                <div class="modal-body">
                    <div class="row form-row">
                        <div class="col-md-12">
                            <P>
                                알파산은 홈 브루어에게 가장 친숙한 홉 성분입니다. 홈브루어에게 판매되는 모든 홉패키지에는 브루어들이 자신이 양조할 맥주의 쓴 맛을 계산하게 해주기 위해 알파산 퍼센티지가 기재되어있습니다. 알파산 퍼센티지는 알파산으로 구성된 홉의 총량을 나타냅니다.
                            </P>
                        </div>
                    </div>
                    <div class="row form-row">
                        <div class="col-md-12">
                            <P>
                                알파산 퍼센티지는 여러 개의 분리된 화학물질들을 아우르는데, 각각의 화학물질들은 독특한 풍미와 쓴맛의 스타일을 더합니다.
                            </P>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <br>
                    <i class="icon-credit-card icon-7x"></i>
                    <h4 id="myModalLabel" class="semi-bold">Beta acids</h4>
                    <br>
                </div>
                <div class="modal-body">
                    <div class="row form-row">
                        <div class="col-md-12">
                            <P>
                                베타산은 보일링 때는 알파산만큼 쓴맛을 만들지 않지만 발효와 저장과정에서 알파산이 내는 쓴 맛이 점차 사라질 때 베타산은 천천히 산화를 통하여 쓴맛을 만들어냅니다. 이것은 숙성 및 라거링 된 맥주의 장기적 특성에 영향을 미칩니다.
                            </P>
                        </div>
                    </div>
                    <div class="row form-row">
                        <div class="col-md-12">
                            <P>
                                베타산은 홉 생산자들에 의해 전체 홉 무게중 베타산이 차지하는 퍼센티지, 혹은 알파 대 베타의 비율로 기재됩니다. 어떤 사람들은 베타산이 주는 쓴맛이 알파산(혹은 적어도 휴물론)이 주는 것보다 더 강하다고 여겨서 베타산을 적게 함유한 홉을 찾기도 합니다. 하지만, 전통적인 노블홉들은 일반적으로 알바와 베타산을 거의 1:1의 비율로 갖고 있기 때문에 베타산도 몇몇 사람들에게는 좋다고 여겨집니다. 다른 브루어들은 숙성된 맥주에서 가장 변함없는(일정한?) 쓴맛을 생산하는 것으로 알려진 2:1의 비율을 선호합니다.
                            </P>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>

    <br/><br/>

    <div class="row  column-seperation">
        <div class="col-md-12">
            <div class="tiles alert">
                <textarea rows="3"  class="form-control user-status-box post-input"  placeholder="Whats on your mind?"></textarea>
            </div>
            <div class="tiles grey padding-10">
                <div class="pull-left">
                    <button class="btn btn-default btn-sm btn-small" type="button"><i class="fa fa-camera"></i></button>
                    <button class="btn btn-default btn-sm btn-small" type="button"><i class="fa fa-map-marker"></i></button>
                </div>
                <div class="pull-right">
                    <button class="btn btn-primary btn-sm btn-small" type="button">POST</button>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

    <br/>

    <div class="m-l-10 " id="commnet_list">
    </div>

    <br/><br/>

    <div class="grid-body ">
    <table class="table table-striped" id="example2" >
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
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>


<content tag="local_script">
<script>
    function loadAnimatedWidget_pure_white(){
        var icons = new Skycons({"color": "white"});
        icons.play();
    }

    function goDetail(seq, titleInUrl){
        location.href = "/hop/"+seq+"/"+titleInUrl;
    }

    function goIndex(origin){
        $("#origin").val(origin);
        search();
        //location.href = "/hop/"+origin;
    }

    function search(){
     //   getLoadingTime();                                                   //로딩 아이콘 호출
        $("#result").html("");
        $("#result").load("/hop/list", $("#searchForm").serialize());
        //getResult();
    }

    function getCommnetList(){
        var commentHtml ="";

        $.ajax({
            type: 'get',
            dataType : "json",
            url : '/board/list/HOPBOARD01',
            contentType: "application/json",
            success:function(result){
                //월 세팅 selectbox 초기화
                //$("#userBirthMonth").find("option").remove().end().append("<option value=''>- 선택 -</option>");


                //결과 갯수 만큼 날짜 세팅
                $.each(result, function(i){
                    //$("#userBirthMonth").append("<option value='"+result[i].code+"'>"+result[i].codeName+"</option>")

                    commentHtml = commentHtml + "<div class='tiles white '>";
                    commentHtml = commentHtml + "    <div class='p-t-20 p-b-15 b-b b-grey'>";
                    commentHtml = commentHtml + "        <div class='post overlap-left-10'>";
                    commentHtml = commentHtml + "            <div class='user-profile-pic-wrapper'>";
                    commentHtml = commentHtml + "                <div class='user-profile-pic-2x white-border'>";
                    commentHtml = commentHtml + "                    <img width='45' height='45' src='/resources/assets/img/profiles/avatar.jpg' data-src='/resources/assets/img/profiles/avatar.jpg' data-src-retina='/resources/assets/img/profiles/avatar2x.jpg' alt=''>";
                    commentHtml = commentHtml + "                </div>";
                    commentHtml = commentHtml + "            </div>";
                    commentHtml = commentHtml + "            <div class='info-wrapper small-width inline'>";
                    commentHtml = commentHtml + "                <div class='info text-black '>";
                    commentHtml = commentHtml + "                    <p>"+ result[i].answer +"</p>";
                    commentHtml = commentHtml + "                    <p class='muted small-text'>"+ result[i].insertDate +"</p>";
                    commentHtml = commentHtml + "                </div>";
                    commentHtml = commentHtml + "                <div class='clearfix'></div>";
                    commentHtml = commentHtml + "            </div>";
                    commentHtml = commentHtml + "            <div class='clearfix'></div>";
                    commentHtml = commentHtml + "        </div>";
                    commentHtml = commentHtml + "    </div>";
                    commentHtml = commentHtml + "</div>";
                });

                commentHtml = commentHtml + "<div class='tiles grey p-t-5 p-b-5 '>";
                commentHtml = commentHtml + "    <p class='text-center'> <a href='javascript:;' class='text-black semi-bold  small-text'>전체 보기</a></p>";
                commentHtml = commentHtml + "</div>";

                $("#commnet_list").append(commentHtml);
            },
            error:function(xhr,statue,error){
                alert(error);
            }
        });
    }


    $(document).ready(function() {
        getCommnetList();
        $('.slider-element').slider();  //슬라이더 초기화
        $('#popover').popover();
        $('.tip').tooltip();
        loadAnimatedWidget_pure_white();
        search();                          //조회
    });

</script>
</content>