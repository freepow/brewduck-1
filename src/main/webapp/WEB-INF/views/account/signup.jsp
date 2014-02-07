<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div id="wrapper">

    <div id="loading-top">
        <div id="canvas_loading"></div>
        <span>Checking...</span>
    </div>

    <div id="main">
        <div class="real-border">
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
                <div class="col-xs-1"></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="account-wall">
                        <section class="align-lg-center">
                            <div class="site-logo"></div>
                            <h1 class="login-title"><span>계정</span> 생성 <small> 회원이 되어, 다양한 서비스를 자유롭게 사용해보세요!</small></h1>
                            <br>
                        </section>
                        <form:form action="/account/join" id="validate-wizard"  method="post" modelAttribute="account" class="wizard-step shadow">
                            <ul class="align-lg-center" style="display:none">
                                <li><a href="#step1" data-toggle="tab">1</a></li>
                                <li><a href="#step2" data-toggle="tab">2</a></li>
                                <li><a href="#step3" data-toggle="tab">3</a></li>
                            </ul>
                            <div class="progress progress-stripes progress-sm" style="margin:0">
                                <div class="progress-bar" data-color="theme"></div>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade" id="step1" parsley-validate parsley-bind>
                                    <div class="form-group">
                                        <label class="control-label">이메일</label>
                                        <form:input  type="text" path="email" class="form-control" parsley-type="email" parsley-required="true" placeholder="john@email.com" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">닉네임</label>
                                        <input type="text" class="form-control"  parsley-rangelength="[2,16]"  parsley-required="true" parsley-trigger="keyup" placeholder="2 ~ 8 자리">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="step2" parsley-validate parsley-bind>
                                    <h4>거의 다 됐어요!</h4><br>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label class="control-label">이름</label>
                                            <form:input path="name" type="text" class="form-control"  placeholder="이름" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">패스워드</label>
                                        <input type="password" class="form-control" id="password"  parsley-trigger="keyup"  parsley-rangelength="[4,8]"  parsley-required="true" placeholder="4-8 Characters">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">패스워드</label>
                                        <input type="password" class="form-control"  parsley-trigger="keyup"  parsley-equalto="#password" placeholder="Confirm Password" parsley-error-message="Password don't match" >
                                    </div>
                                </div>
                                <div class="tab-pane fade align-lg-center" id="step3">
                                    <br><h3>확인 <span></span> 이메일을 보내는중..</h3><br>
                                </div>

                                <footer class="row">
                                    <div class="col-sm-12">
                                        <section class="wizard">
                                            <button type="button"  class="btn  btn-default previous pull-left"> <i class="fa fa-chevron-left"></i></button>
                                            <button type="button"  class="btn btn-theme next pull-right">Next </button>
                                        </section>
                                    </div>
                                </footer>
                            </div>
                        </form:form>
                        <section class="clearfix align-lg-center">
                            <i class="fa fa-sign-in"></i> 로그인 페이지로 <a href="#">돌아가기</a>
                        </section>

                    </div>
                    <!-- //account-wall-->

                </div>
                <!-- //col-sm-6 col-md-4 col-md-offset-4-->
            </div>
            <!-- //row-->
        </div>
        <!-- //container-->

    </div>
    <!-- //main-->


</div>
<!-- //wrapper-->


<!--
////////////////////////////////////////////////////////////////////////
//////////     JAVASCRIPT  LIBRARY     //////////
/////////////////////////////////////////////////////////////////////
-->

<!-- Jquery Library -->
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.ui.min.js"></script>
<script type="text/javascript" src="/resources/plugins/bootstrap/bootstrap.min.js"></script>
<!-- Modernizr Library For HTML5 And CSS3 -->
<script type="text/javascript" src="/resources/js/modernizr/modernizr.js"></script>
<script type="text/javascript" src="/resources/plugins/mmenu/jquery.mmenu.js"></script>
<!-- Holder Images -->
<script type="text/javascript" src="/resources/plugins/holder/holder.js"></script>
<!-- Form plugins -->
<script type="text/javascript" src="/resources/plugins/form/form.js"></script>
<!-- Datetime plugins -->
<script type="text/javascript" src="/resources/plugins/datetime/datetime.js"></script>
<!-- Library Chart-->
<script type="text/javascript" src="/resources/plugins/chart/chart.js"></script>
<!-- Library Themes Customize-->
<script type="text/javascript" src="/resources/js/caplet.custom.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        //Login animation to center
        function toCenter(){
            var mainH=$("#main").outerHeight();
            var accountH=$(".account-wall").outerHeight();
            var marginT=(mainH-accountH)/2;
            if(marginT>30){
                $(".account-wall").css("margin-top",marginT-15);
            }else{
                $(".account-wall").css("margin-top",30);
            }
        }
        var toResize;
        $(window).resize(function(e) {
            clearTimeout(toResize);
            toResize = setTimeout(toCenter(), 500);
        });

        //Canvas Loading
        var throbber = new Throbber({  size: 32, padding: 17,  strokewidth: 2.8,  lines: 12, rotationspeed: 0, fps: 15 });
        throbber.appendTo(document.getElementById('canvas_loading'));
        throbber.start();

        $('#validate-wizard').bootstrapWizard({
            tabClass:"nav-wizard",
            onNext: function(tab, navigation, index) {
                var content=$('#step'+index);
                if(typeof  content.attr("parsley-validate") != 'undefined'){
                    var $valid = content.parsley( 'validate' );
                    if(!$valid){
                        return false;
                    }
                };

                // Set the name for the next tab
                //$('#step3 h3').find("span").html($('#fullname').val());
            },
            onTabClick: function(tab, navigation, index) {
                $.notific8('Please click <strong>next button</strong> to wizard next step!! ',{ life:5000, theme:"danger" ,heading:" Wizard Tip :); "});
                return false;
            },
            onTabShow: function(tab, navigation, index) {
                tab.prevAll().addClass('completed');
                tab.nextAll().removeClass('completed');
                if(tab.hasClass("active")){
                    tab.removeClass('completed');
                }
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#validate-wizard').find('.progress-bar').css({width:$percent+'%'});
                $('#validate-wizard').find('.wizard-status span').html($current+" / "+$total);

                toCenter();

                var main=$("#main");
                //scroll to top
                main.animate({
                    scrollTop: 0
                }, 500);

                if($percent==100){
                    setTimeout(function () { main.addClass("slideDown") }, 100);
                    setTimeout(function () { main.removeClass("slideDown") }, 3000);

                    $.ajax({
                        url: "/account/join", data: $('#validate-wizard').serialize(), type: "POST", dataType: 'json',
                        success: function (response, status, xhr)  {
                            alert(xhr.status);

                            if(xhr.status == 299) {
                                location.href = "${pageContext.request.contextPath}/";
                            } else if(xhr.status == 298) {
                                alert("접근권한이 없습니다.");
                            } else if(xhr.status == 200) {
                                if(response.code == '-99'){
                                    alert(response.message);

                                    location.href="/account/signup";
                                }
                            } else {
                                alert("오류 발생. 추가되었는지 확인이 필요합니다.");
                            }
                        }
                    });

                    //setTimeout( "window.location.href='login.html'", 3500 );
                }
            }
        });


    });
</script>