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
            <div class="row form-row">
                <div class="slider col-md-12">
                    <H4>
                    <button type="button" class="btn btn-warning btn-cons btn-mini">원산지 : ${HopDetail.originKorean} ( ${HopDetail.origin} )</button>
                    <button type="button" class="btn btn-primary btn-cons btn-mini">용 도 : ${HopDetail.typeKorean}</button>
                    </H4>
                </div>
            </div>

            <div class="row form-row">
                <div class="col-md-12">
                    <c:forEach items="${hopUsedForList}" var="usedFor">
                        <button type="button" class="btn btn-white btn-cons btn-mini">
                        ${usedFor.usedFor}
                        </button>
                    </c:forEach>
                </div>
            </div>
            <div class="row form-row">
                <div class="col-md-12">
                    <blockquote  class="margin-top-20">
                        <p> ${HopDetail.notes}</p>
                    </blockquote>
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
            <h4>수치</h4>
            <div class="row form-row">
                <div class="slider col-md-4">
                    <span class="semi-bold">ALPHA</span>
                </div>
                <div class="slider info col-md-8">
                    <input type="text" disable data-slider-value="[10]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div>

            <div class="row form-row">
                <div class="slider col-md-4">
                    <span class="semi-bold">BETA</span>
                </div>
                <div class="slider info col-md-8">
                    <input type="text" disable data-slider-value="[10]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div>

            <div class="row form-row">
                <div class="slider col-md-4">
                    <span class="semi-bold">HSI</span>
                </div>
                <div class="slider info col-md-8">
                    <input type="text" disable data-slider-value="[10]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div>

            <div class="row form-row">
                <div class="slider col-md-4">
                    <span class="semi-bold">CO-HUMULONE 함유랑</span>
                </div>
                <div class="slider info col-md-8">
                    <input type="text" disable data-slider-value="[10,45]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
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
            <div class="p-t-20 p-b-15 b-b b-grey">
                <div class="post overlap-left-10">
                    <div class="user-profile-pic-wrapper">
                        <div class="user-profile-pic-2x tiles blue white-border">
                            <div class="text-white inherit-size p-t-10 p-l-15"> <i class="fa fa-map-marker fa-lg"></i> </div>
                        </div>
                    </div>
                    <div class="info-wrapper small-width">
                        <div class="info text-black ">
                            <p>You’ve got 302 Followers in 59 Diffrent places.
                                region legally identified as a distinct entity in ....” </p>
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

    function getResult(){
        var result_html = "";
        $.ajax({
            type: 'GET',
            dataType : "json",
            url : '/hop/list',
            contentType: "application/json",
            dataType : "json", //전송받을 데이터의 타입
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
    });
</script>
</content>