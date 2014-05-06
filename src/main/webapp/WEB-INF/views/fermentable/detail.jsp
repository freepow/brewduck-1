<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
<div class="page-title"> <a href="/fermentable/"><i class="icon-custom-left"></i></a>
    <h3>${FermentableDetail.koreanName} - <span class="semi-bold">${FermentableDetail.name}</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">

<div class="row column-seperation">
    <div class="col-md-12">
        <div class="heading">
            <div class="pull-right"> <span class="small-text muted">버튼을 클릭하시면 조회됩니다.</span> </div>
            <div class="clearfix"> </div>
        </div>
        <div class="heading">
            <div class="pull-left">
                <h4>원산지 / <span class="semi-bold">타입</span></h4>
                <div class="slider col-md-12">
                    <button type="button" class="btn btn-warning btn-cons btn-mini" onclick="goIndex('${FermentableDetail.origin}')">${FermentableDetail.originKorean} ( ${FermentableDetail.origin} )</button>
                    <button type="button" class="btn btn-primary btn-cons btn-mini">${FermentableDetail.typeKorean}</button>
                        </button>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="row form-row">
            <div class="col-md-12">
                <blockquote  class="margin-top-20">
                    <p> ${FermentableDetail.notes}</p>
                </blockquote>
            </div>
        </div>

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
            <th class="small-cell"> </th>
            <th>이름</th>
            <th>영문명</th>
            <th>타입</th>
            <th>원산지</th>
            <th>수율(%)</th>
            <th>색상(SRM)</th>
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
            location.href = "/fermentable/"+seq+"/"+titleInUrl;
        }

        function goIndex(origin){
            $("#origin").val(origin);
            search();
            //location.href = "/hop/"+origin;
        }

        function search(){
            //   getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
            //getResult();
        }


        $(document).ready(function() {
            $('.slider-element').slider();  //슬라이더 초기화
            $('#popover').popover();
            $('.tip').tooltip();
            loadAnimatedWidget_pure_white();
            search();                          //조회
        });

    </script>
</content>