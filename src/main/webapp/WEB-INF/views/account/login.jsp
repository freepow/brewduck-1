<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                            <h1 class="login-title"><span>환영</span>합니다. <small> 회원이 되어, 다양한 서비스를 자유롭게 사용해보세요!</small></h1>
                        </section>
                        <form id="form-signin" class="form-signin">
                            <section>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                    <input  type="text" class="form-control" name="username" placeholder="이메일">
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-key"></i></div>
                                    <input type="password" class="form-control"  name="password" placeholder="패스워드">
                                </div>
                                <button class="btn btn-lg btn-theme-inverse btn-block" type="submit" id="sign-in">로그 인</button>
                            </section>
                            <section class="clearfix">
                                <div class="iCheck pull-left"  data-color="red">
                                    <input type="checkbox" checked>
                                    <label>로그인 유지</label>
                                </div>
                                <a href="#" class="pull-right help">패스워드 찾기 </a>
                            </section>
                            <span class="or" data-text="or"></span>
                            <button class="btn btn-lg  btn-inverse btn-block" type="button"> 신규 계정 생성 </button>
                        </form>
                        <a href="#" class="footer-link">&copy; 2014 brewduck </a>
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
    $(function() {
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
        toCenter();
        var toResize;
        $(window).resize(function(e) {
            clearTimeout(toResize);
            toResize = setTimeout(toCenter(), 500);
        });

        //Canvas Loading
        var throbber = new Throbber({  size: 32, padding: 17,  strokewidth: 2.8,  lines: 12, rotationspeed: 0, fps: 15 });
        throbber.appendTo(document.getElementById('canvas_loading'));
        throbber.start();

        //Set note alert
        setTimeout(function () {
            $.notific8('Hi Guest , you can use Username : <strong>demo</strong> and Password: <strong>demo</strong> to  access account.',{ sticky:true, horizontalEdge:"top", theme:"inverse" ,heading:"LOGIN DEMO"})
        }, 1000);


        $("#form-signin").submit(function(event){
            event.preventDefault();
            var main=$("#main");
            //scroll to top
            main.animate({
                scrollTop: 0
            }, 500);
            main.addClass("slideDown");

            // send username and password to php check login
            $.ajax({
                url: "data/checklogin.php", data: $(this).serialize(), type: "POST", dataType: 'json',
                success: function (e) {
                    setTimeout(function () { main.removeClass("slideDown") }, !e.status ? 500:3000);
                    if (!e.status) {
                        $.notific8('Check Username or Password again !! ',{ life:5000,horizontalEdge:"bottom", theme:"danger" ,heading:" ERROR :); "});
                        return false;
                    }
                    setTimeout(function () { $("#loading-top span").text("Yes, account is access...") }, 500);
                    setTimeout(function () { $("#loading-top span").text("Redirect to account page...")  }, 1500);
                    setTimeout( "window.location.href='dashboard.html'", 3100 );
                }
            });

        });
    });
</script>