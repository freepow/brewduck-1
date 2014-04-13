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
                        <button type="button" class="btn btn-warning btn-cons btn-mini">${HopDetail.originKorean} ( ${HopDetail.origin} )</button>
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
                            <button type="button" class="btn btn-white btn-cons btn-mini">
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
                        <h4 class="text-white"><span class="semi-bold">${HopDetail.alpha} %</span> - <span class="semi-bold">ALPHA</span></h4>
                        <p>Alpha 산 (α acids) 은 맥주의 생산에 있어서 가장 중요한 ...(더보기)</p>
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
                        <p>Beta 산은 맥주의 생산에 있어서 가장 중요한 ...(더보기)</p>
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
                        <p>HSI는 맥주의 생산에 있어서 가장 중요한 ...(더보기)</p>
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


</div>
    <br/>
    <div class="m-l-10 ">
        <div class="tiles white ">
            <div class="p-t-20 p-b-15 b-b b-grey">
                <div class="post overlap-left-10">
                    <div class="user-profile-pic-wrapper">
                        <div class="user-profile-pic-2x white-border">
                            <img width="45" height="45" src="/resources/assets/img/profiles/avatar.jpg" data-src="/resources/assets/img/profiles/avatar.jpg" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" alt="">
                        </div>
                    </div>
                    <div class="info-wrapper small-width inline">
                        <div class="info text-black ">
                            <p>"페일에일의 전형적인 홉으로 가장 기본적인 베이스 홉이다.” </p>
                            <p class="muted small-text"> 2 분전</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!--div class="inline pull-right">
                        <div class="tiles text-white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-heart-o fa-lg"></i> </div>
                        <div class="tiles white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-comment-o fa-lg"></i> </div>
                    </div-->
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="p-t-20 p-b-15 ">
                <div class="post overlap-left-10">
                    <div class="user-profile-pic-wrapper">
                        <div class="user-profile-pic-2x tiles grey white-border">
                            <div class="text-grey inherit-size p-t-10 p-l-10"> <i class="fa fa-clock-o fa-lg"></i> </div>
                        </div>
                    </div>
                    <div class="info-wrapper small-width">
                        <div class="info text-black ">
                            <p>Jane Smith Commented on webarch new year bundle
                                “Would you like to display collections on your...” </p>
                            <p class="muted small-text"> 2 mins ago </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="inline pull-right">
                        <div class="tiles text-white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-heart-o fa-lg"></i> </div>
                        <div class="tiles white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-comment-o fa-lg"></i> </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="tiles grey p-t-5 p-b-5 ">
            <p class="text-center"> <a href="javascript:;" class="text-black semi-bold  small-text">전체 보기</a></p>
        </div>
    </div>

    <br/><br/>

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
    function loadAnimatedWidget_pure_white(){
        var icons = new Skycons({"color": "white"});

        icons.play();
    }

    $(document).ready(function() {
        $('.slider-element').slider();  //슬라이더 초기화

        loadAnimatedWidget_pure_white();
    });

</script>
</content>