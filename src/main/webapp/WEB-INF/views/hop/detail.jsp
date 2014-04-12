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
                <div class="col-md-12">
                    <button type="button" class="btn btn-warning btn-cons btn-mini">원산지  : ${HopDetail.origin}</button>
                    <button type="button" class="btn btn-primary btn-cons btn-mini">용도  : ${HopDetail.typeKorean}</button>
                </div>
            </div>
            <div class="row form-row">
                <br>
                <div class="col-md-12">
                    ${HopDetail.notes}
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
                    <span class="semi-bold">HSI</span>
                    <p>HSI는...(더보기) </p>
                </div>
                <div class="slider info col-md-8">
                    <input type="text"  data-slider-value="[10,20]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                </div>
            </div>
        </div>
    </div>


</div>

    <br/>

    <div class="row">
        <div class="post col-md-12">
            <div class="user-profile-pic-wrapper">
                <div class="user-profile-pic-normal">
                    <img width="35" height="35" src="assets/img/profiles/c.jpg" data-src="assets/img/profiles/c.jpg" data-src-retina="assets/img/profiles/c2x.jpg" alt="">
                </div>
            </div>
            <div class="info-wrapper">
                <div class="username">
                    <span class="dark-text">John Drake</span> in <span class="dark-text">nervada hotspot</span>
                </div>
                <div class="info">
                    Great design concepts by <span class="dark-text">John Smith</span> and his crew! Totally owned the WCG!, Best of luck for your future endeavours,
                    Special thanks for <span class="dark-text">Jane smith</span> for her motivation ;)
                </div>
                <div class="more-details">
                    <ul class="post-links">
                        <li><a href="#" class="muted">2 Minutes ago</a></li>
                        <li><a href="#" class="text-info">Collapse</a></li>
                        <li><a href="#" class="text-info" ><i class="fa fa-reply"></i> Reply</a></li>
                        <li><a href="#" class="text-warning"><i class="fa fa-star"></i> Favourited</a></li>
                        <li><a href="#"  class="muted">More</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>

                <ul class="action-bar">
                    <li><a href="#"  class="muted"><i class="fa fa-comment"></i> 1584</a> Comments</li>
                    <li><a href="#" class="text-error" ><i class="fa fa-heart"></i> 47k</a> likes</li>
                </ul>
                <div class="clearfix"></div>
                <div class="post comments-section">
                    <div class="user-profile-pic-wrapper">
                        <div class="user-profile-pic-normal">
                            <img width="35" height="35" data-src-retina="assets/img/profiles/e2x.jpg" data-src="assets/img/profiles/e.jpg" src="assets/img/profiles/e.jpg" alt="">
                        </div>
                    </div>
                    <div class="info-wrapper">
                        <div class="username">
                            <span class="dark-text">Thunderbolt</span>
                        </div>
                        <div class="info">
                            Congrats, <span class="dark-text">John Smith</span>  & <span class="dark-text">Jane Smith</span>
                        </div>
                        <div class="more-details">
                            <ul class="post-links">
                                <li><a href="#" class="muted">2 Minutes ago</a></li>
                                <li><a href="#" class="text-error" ><i class="fa fa-heart"></i> Like</a></li>
                                <li><a href="#"  class="muted">Details</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="post comments-section">
                    <div class="user-profile-pic-wrapper">
                        <div class="user-profile-pic-normal">
                            <img width="35" height="35" data-src-retina="assets/img/profiles/b2x.jpg" data-src="assets/img/profiles/b.jpg" src="assets/img/profiles/b.jpg" alt="">
                        </div>
                    </div>
                    <div class="info-wrapper">
                        <div class="username">
                            <span class="dark-text">Thunderbolt</span>
                        </div>
                        <div class="info">
                            Congrats, <span class="dark-text">John Smith</span>  & <span class="dark-text">Jane Smith</span>
                        </div>
                        <div class="more-details">
                            <ul class="post-links">
                                <li><a href="#" class="muted">2 Minutes ago</a></li>
                                <li><a href="#" class="text-error" ><i class="fa fa-heart"></i> Like</a></li>
                                <li><a href="#"  class="muted">Details</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="post comments-section">
                    <div class="row-fluid">
                        <div class="input-append success date span12">
                            <input type="text" class="span11">
                            <span class="add-on"><span class="arrow"></span><i class="fa fa-th"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>


    <br/>
    <div class="grid-body ">
        <div class="col-md-12 no-padding">
            <div class="tiles white">
                <textarea rows="3"  class="form-control user-status-box post-input"  placeholder="이홉의 대한 당신의 생각은요?"></textarea>
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


    <br/>
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