<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 자바스크립트, css 파일들 -->
<%@include file="/WEB-INF/views/common/include/default_header.jsp"%>

<body>
<div id="wrapper">
<header id="header">
    <div class="wrap-top-menu">
        <div class="container_12 clearfix">
            <div class="grid_12">
                <nav class="top-menu">
                    <ul id="main-menu" class="nav nav-horizontal clearfix">
                        <li class="active"><a href="/">메인으로</a></li>
                        <li class="sep"></li>
                        <li><a href="all-pages.html">설명서</a></li>
                    </ul>
                    <a id="btn-toogle-menu" class="btn-toogle-menu" href="#alternate-menu">
                        <span class="line-bar"></span>
                        <span class="line-bar"></span>
                        <span class="line-bar"></span>
                    </a>
                    <div id="right-menu">
                        <ul class="alternate-menu">
                            <li><a href="/">홈으로 가기</a></li>
                            <li><a href="all-pages.html">설명서</a></li>
                        </ul>
                    </div>
                </nav>
                <div class="top-message clearfix">
                    <i class="icon iFolder"></i>
                    <span class="txt-message">4월 15일 Spring Beer 페스티벌이 열립니다! </span>
                    <i class="icon iX"></i>
                    <div class="clear"></div>
                </div>
                <i id="sys_btn_toggle_search" class="icon iBtnRed make-right"></i>
            </div>
        </div>
    </div><!-- end: .wrap-top-menu -->
    <div class="container_12 clearfix">
        <div class="grid_12 header-content">
            <div id="sys_header_right" class="header-right">
                <div class="account-panel">
                    <a href="#" class="btn btn-red sys_show_popup_login">멤버 등록</a>
                    <a href="#" class="btn btn-white sys_show_popup_login">로그 인</a>
                </div>
                <div class="form-search">
                    <form action="#">
                        <label for="sys_txt_keyword">
                            <input id="sys_txt_keyword" class="txt-keyword" type="text" placeholder="검색해보세요"/>
                        </label>
                        <button class="btn-search" type="reset"><i class="icon iMagnifier"></i></button>
                        <button class="btn-reset-keyword" type="reset"><i class="icon iXHover"></i></button>
                    </form>
                </div>
            </div>
            <div class="header-left">
                <h1 id="logo">
                    <a href="index.html"><img src="images/logo.png" alt="$SITE_NAME"/></a>
                </h1>
                <div class="main-nav clearfix">
                    <div class="nav-item">
                        <a href="category.html" class="nav-title">레시피 찾기</a>
                        <p class="rs nav-description">Find Recipe</p>
                    </div>
                    <span class="sep"></span>
                    <div class="nav-item">
                        <a href="#" class="nav-title">시작하기</a>
                        <p class="rs nav-description">Your Recipe</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header><!--end: #header -->
<div id="home-slider">
    <div class="md-slide-items md-slider" id="md-slider-1" data-thumb-width="105" data-thumb-height="70">
        <div class="md-slide-item slide-0" data-timeout="6000">
            <div class="md-mainimg"><img src="images/ex/th-slide0.jpg" alt=""></div>
            <div class="md-objects">
                <div class="md-object rs slide-title" data-x="20" data-y="38" data-width="480" data-height="30" data-start="700" data-stop="5500" data-easein="random" data-easeout="keep">
                    <p>Search Money for Your Creative Ideas?</p>
                </div>
                <div class="md-object rs slide-description" data-x="20" data-y="160" data-width="480" data-height="90" data-start="1400" data-stop="7500" data-easein="random" data-easeout="keep">
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient monte.</p>
                </div>
                <div class="md-object rs" data-x="20" data-y="260" data-width="120" data-height="23" data-padding-top="9" data-padding-bottom="7" data-padding-left="10" data-padding-right="10" data-start="1800" data-stop="7500" data-easein="random" data-easeout="keep">
                    <a href="#" class="btn btn-gray">Learn more</a>
                </div>
                <div class="md-object" data-x="495" data-y="0" data-width="612" data-height="365" data-start="1800" data-stop="7500" data-easein="fadeInRight" data-easeout="keep" style=""><img src="images/ex/th-slide-man.png" alt="Search Money for Your Creative Ideas" width="612" height="365" /></div>
            </div>
        </div>
        <div class="md-slide-item slide-1" data-timeout="6000">
            <div class="md-mainimg"><img src="images/ex/th-slide1.jpg" alt=""></div>
            <div class="md-objects">
                <div class="md-object rs slide-title" data-x="20" data-y="188" data-width="390" data-height="30" data-start="700" data-stop="5500" data-easein="random" data-easeout="random">
                    <p>A creative engine</p>
                </div>
                <div class="md-object rs slide-description2" data-x="20" data-y="250" data-width="390" data-height="100" data-start="1400" data-stop="4500" data-easein="random" data-easeout="random">
                    <p>Mauris volutpat, lectus vitae pretium sagittis, turpis augue euismod libero</p>
                </div>
                <div class="md-object" data-x="454" data-y="44" data-width="327" data-height="268" data-start="1000" data-stop="5500" data-easein="random" data-easeout="random" style=""><img src="images/ex/slide1_1.png" alt="Responsive" width="327" height="268" /></div>
                <div class="md-object" data-x="628" data-y="142" data-width="298" data-height="176" data-start="1600" data-stop="5100" data-easein="random" data-easeout="random" style=""><img src="images/ex/slide1_2.png" alt="Responsive" width="298" height="176" /></div>
                <div class="md-object" data-x="837" data-y="169" data-width="119" data-height="149" data-start="2200" data-stop="4800" data-easein="random" data-easeout="random" style=""><img src="images/ex/slide1_3.png" alt="Responsive" width="119" height="149" /></div>
                <div class="md-object" data-x="809" data-y="208" data-width="59" data-height="114" data-start="2800" data-stop="4500" data-easein="random" data-easeout="random" style=""><img src="images/ex/slide1_4.png" alt="Responsive" width="59" height="114" /></div>
            </div>
        </div>
        <div class="md-slide-item slide-2" data-timeout="4000">
            <div class="md-mainimg"><img src="images/ex/th-slide2.jpg" alt=""></div>
            <div class="md-objects">
                <div class="md-object slide-with-background" data-x="20" data-y="58" data-width="500" data-height="170" data-padding-top="30" data-padding-bottom="30" data-padding-left="35" data-padding-right="35" data-start="300" data-stop="3600" data-easein="random" data-easeout="keep">
                    <h2 class="rs slide-title">Start your project today</h2>
                    <p class="rs slide-description2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient monte.</p>
                </div>
            </div>
        </div>
    </div>
</div><!--end: #home-slider -->
<div class="home-feature-category">
    <div class="container_12 clearfix">
        <div class="grid_4 left-lst-category">
            <div class="wrap-lst-category">
                <h3 class="title-welcome rs">어서오세요!</h3>
                <p class="description rs">세상에는 당신이 맛보지 않은
                    맥주들이 너무나 많습니다!</p>
                <nav class="lst-category">
                    <ul class="rs nav nav-category">
                        <li>
                            <a href="#">
                                라거 (Lager)
                                <span class="count-val">(245)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                필스너 (Pilsner)
                                <span class="count-val">(70)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                복 (Bock)
                                <span class="count-val">(112)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                하이브리드 (Hybrid)
                                <span class="count-val">(152)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                에일 (Ale)
                                <span class="count-val">(7,422)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                포터 (Porter)
                                <span class="count-val">(432)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                스타우트 (Stout)
                                <span class="count-val">(543)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                스페셜 (Specialty)
                                <span class="count-val">(43)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                기타 (Etc)
                                <span class="count-val">(43)</span>
                                <i class="icon iPlugGray"></i>
                            </a>
                        </li>
                    </ul>
                    <p class="rs view-all-category">
                        <a href="category.html" class="be-fc-orange">+ 전체 보기</a>
                    </p>
                </nav><!--end: .lst-category -->
            </div>
        </div><!--end: .left-lst-category -->
        <div class="grid_8 marked-category">
            <div class="wrap-title clearfix">
                <h2 class="title-mark rs">브루덕의 선택 : <span class="fc-orange">India Pale Ale</span></h2>
                <a href="category.html" class="count-project be-fc-orange">전체 <span class="fw-b">24</span>개의 Ale 레시피</a>
            </div>
            <div class="box-marked-project project-short">
                <div class="top-project-info">
                    <div class="content-info-short clearfix">
                        <a href="project.html" class="thumb-img">
                            <img src="images/ex/th-292x204-1.jpg" alt="$TITLE">
                        </a>
                        <div class="wrap-short-detail">
                            <h3 class="rs acticle-title"><a class="be-fc-orange" href="project.html">Hop Bomb! #1: 혀에 폭탄을 맞은듯한</a></h3>
                            <p class="rs tiny-desc">by <a href="profile.html" class="fw-b fc-gray be-fc-orange">Jhon</a> in <span class="fw-b fc-gray">서울시, 강남구</span></p>
                            <p class="rs title-description">이 맥주의 컨셉은 높은 도수(ABV)와 강력한 IBU(쓴맛)이 핵심입니다.</p>
                        </div>
                        <p class="rs clearfix comment-view">
                            <a href="#" class="fc-gray be-fc-orange">75 댓글</a>
                            <span class="sep">|</span>
                            <a href="#" class="fc-gray be-fc-orange">378 뷰</a>
                        </p>
                    </div>
                </div><!--end: .top-project-info -->
                <div class="bottom-project-info clearfix">
                    <div class="project-progress sys_circle_progress" data-percent="76">
                        <div class="sys_holder_sector"></div>
                    </div>
                    <div class="group-fee clearfix">
                        <div class="fee-item">
                            <p class="rs lbl">추천</p>
                            <span class="val">27</span>
                        </div>
                        <div class="sep"></div>
                        <div class="fee-item">
                            <p class="rs lbl">마시기 좋은날</p>
                            <span class="val">3월~4월</span>
                        </div>
                        <div class="sep"></div>
                        <div class="fee-item">
                            <p class="rs lbl">레시피 재료가격</p>
                            <span class="val">68,000원</span>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div><!--end: .marked-category -->
        <div class="clear"></div>
    </div>
</div><!--end: .home-feature-category -->
<div class="home-popular-project">
    <div class="container_12">
        <div class="grid_12 wrap-title">
            <h2 class="common-title">인기좋은</h2>
            <a class="be-fc-orange" href="category.html">전체 보기</a>
        </div>
        <div class="clear"></div>
        <div class="lst-popular-project clearfix">
            <div class="grid_3">
                <div class="project-short sml-thumb">
                    <div class="top-project-info">
                        <div class="content-info-short clearfix">
                            <a href="#" class="thumb-img">
                                <img src="images/ex/th-292x204-1.jpg" alt="$TITLE">
                            </a>
                            <div class="wrap-short-detail">
                                <h3 class="rs acticle-title"><a class="be-fc-orange" href="project.html">Project title</a></h3>
                                <p class="rs tiny-desc">by <a href="profile.html" class="fw-b fc-gray be-fc-orange">John Doe</a></p>
                                <p class="rs title-description">Nam sit amet est sapien, a faucibus purus. Sed commodo facilisis tempus. Pellentesque placerat elementum adipiscing.</p>
                                <p class="rs project-location">
                                    <i class="icon iLocation"></i>
                                    New York, NY
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-project-info clearfix">
                        <div class="line-progress">
                            <div class="bg-progress">
                                <span  style="width: 50%"></span>
                            </div>
                        </div>
                        <div class="group-fee clearfix">
                            <div class="fee-item">
                                <p class="rs lbl">Funded</p>
                                <span class="val">50%</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Pledged</p>
                                <span class="val">$38,000</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Days Left</p>
                                <span class="val">25</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end: .grid_3 > .project-short-->
            <div class="grid_3">
                <div class="project-short sml-thumb">
                    <div class="top-project-info">
                        <div class="content-info-short clearfix">
                            <a href="#" class="thumb-img">
                                <img src="images/ex/th-192x135-1.jpg" alt="$TITLE">
                            </a>
                            <div class="wrap-short-detail">
                                <h3 class="rs acticle-title"><a class="be-fc-orange" href="project.html">Project title</a></h3>
                                <p class="rs tiny-desc">by <a href="profile.html" class="fw-b fc-gray be-fc-orange">John Doe</a></p>
                                <p class="rs title-description">Nam sit amet est sapien, a faucibus purus. Sed commodo facilisis tempus. Pellentesque placerat elementum adipiscing.</p>
                                <p class="rs project-location">
                                    <i class="icon iLocation"></i>
                                    New York, NY
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-project-info clearfix">
                        <div class="line-progress">
                            <div class="bg-progress">
                                <span class="success" style="width: 98%"></span>
                            </div>
                        </div>
                        <div class="group-fee clearfix">
                            <div class="fee-item">
                                <p class="rs lbl">Funded</p>
                                <span class="val">98%</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Pledged</p>
                                <span class="val">$25,000</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Days Left</p>
                                <span class="val">18</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end: .grid_3 > .project-short-->
            <div class="clear clear-2col"></div>
            <div class="grid_3">
                <div class="project-short sml-thumb">
                    <div class="top-project-info">
                        <div class="content-info-short clearfix">
                            <a href="#" class="thumb-img">
                                <img src="images/ex/th-192x135-2.jpg" alt="$TITLE">
                            </a>
                            <div class="wrap-short-detail">
                                <h3 class="rs acticle-title"><a class="be-fc-orange" href="project.html">Project title</a></h3>
                                <p class="rs tiny-desc">by <a href="profile.html" class="fw-b fc-gray be-fc-orange">John Doe</a></p>
                                <p class="rs title-description">Nam sit amet est sapien, a faucibus purus. Sed commodo facilisis tempus. Pellentesque placerat elementum adipiscing.</p>
                                <p class="rs project-location">
                                    <i class="icon iLocation"></i>
                                    New York, NY
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-project-info clearfix">
                        <div class="line-progress">
                            <div class="bg-progress">
                                <span  style="width: 21%"></span>
                            </div>
                        </div>
                        <div class="group-fee clearfix">
                            <div class="fee-item">
                                <p class="rs lbl">Funded</p>
                                <span class="val">21%</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Pledged</p>
                                <span class="val">$850K</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Days Left</p>
                                <span class="val">2</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end: .grid_3 > .project-short-->
            <div class="grid_3">
                <div class="project-short sml-thumb">
                    <div class="top-project-info">
                        <div class="content-info-short clearfix">
                            <a href="#" class="thumb-img">
                                <img src="images/ex/th-192x135-3.jpg" alt="$TITLE">
                            </a>
                            <div class="wrap-short-detail">
                                <h3 class="rs acticle-title"><a class="be-fc-orange" href="project.html">Project title</a></h3>
                                <p class="rs tiny-desc">by <a href="profile.html" class="fw-b fc-gray be-fc-orange">John Doe</a></p>
                                <p class="rs title-description">Nam sit amet est sapien, a faucibus purus. Sed commodo facilisis tempus. Pellentesque placerat elementum adipiscing.</p>
                                <p class="rs project-location">
                                    <i class="icon iLocation"></i>
                                    New York, NY
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-project-info clearfix">
                        <div class="line-progress">
                            <div class="bg-progress">
                                <span  style="width: 50%"></span>
                            </div>
                        </div>
                        <div class="group-fee clearfix">
                            <div class="fee-item">
                                <p class="rs lbl">Funded</p>
                                <span class="val">50%</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Pledged</p>
                                <span class="val">$138,662</span>
                            </div>
                            <div class="sep"></div>
                            <div class="fee-item">
                                <p class="rs lbl">Days Left</p>
                                <span class="val">44</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end: .grid_3 > .project-short-->
        </div>
    </div>
</div><!--end: .home-popular-project -->
<div class="home-discover-friends">
    <div class="container_12">
        <div class="row-friends">
            <a class="thumb-avatar" href="#"><img src="images/ex/beer1.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer2.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer3.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer4.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer5.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer6.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/beer7.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-8.jpg" alt="$USER_NAME"/></a>
            <div class="clear"></div>
        </div>
        <div class="row-friends row-connect-fb">
            <a class="thumb-avatar t-first" href="#"><img src="images/ex/th-119x119-17.jpg" alt="$USER_NAME"/></a>
            <div class="connect-fb">
                <p class="rs description">친구들이 좋아하는 맥주는 무엇일까요!</p>
                <a href="#" class="btn btn-fb">페이스북 연결하기</a>
            </div>
            <a class="thumb-avatar t-last" href="#"><img src="images/ex/th-119x119-1.jpg" alt="$USER_NAME"/></a>
            <div class="clear"></div>
        </div>
        <div class="row-friends">
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-9.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-10.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-11.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-12.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-13.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-14.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-15.jpg" alt="$USER_NAME"/></a>
            <a class="thumb-avatar" href="#"><img src="images/ex/th-119x119-16.jpg" alt="$USER_NAME"/></a>
            <div class="clear"></div>
        </div>
    </div>
</div><!--end: .home-discover-friends -->

<div class="additional-info-line">
    <div class="container_12">
        <div class="grid_9">
            <h2 class="rs title">Vestibulum tristique, purus eget euismod vulputate, nisl erat suscipit mi!</h2>
            <p class="rs description">Duis placerat malesuada sapien, eu consequat mauris vestibulum vitae. Aliquam fermentum lorem ut leo ultricies semper. In sed ligula massa, vitae elementum mauris.</p>
        </div>
        <div class="grid_3 ta-r">
            <a class="btn bigger btn-red" href="#">Learn more</a>
        </div>
        <div class="clear"></div>
    </div>
</div><!--end: .additional-info-line -->
<footer id="footer">
    <div class="container_12 main-footer">
        <div class="grid_3 about-us">
            <h3 class="rs title">About</h3>
            <p class="rs description">Donec rutrum elit ac arcu bibendum rhoncus in vitae turpis. Quisque fermentum gravida eros non faucibus. Curabitur fermentum, arcu sed cursus commodo.</p>
            <p class="rs email"><a class="fc-default  be-fc-orange" href="mailto:info@megadrupal.com">info@megadrupal.com</a></p>
            <p class="rs">+1 (555) 555 - 55 - 55</p>
        </div><!--end: .contact-info -->
        <div class="grid_3 recent-tweets">
            <h3 class="rs title">Recent Tweets</h3>
            <div class="lst-tweets" id="sys_lst_tweets">

            </div>
        </div><!--end: .recent-tweets -->
        <div class="clear clear-2col"></div>
        <div class="grid_3 email-newsletter">
            <h3 class="rs title">Newsletter Signup</h3>
            <div class="inner">
                <p class="rs description">Nam aliquet, velit quis consequat interdum, odio dolor elementum.</p>
                <form action="#">
                    <div class="form form-email">
                        <label class="lbl" for="txt-email">
                            <input id="txt-email" type="text" class="txt fill-width" placeholder="Enter your e-mail address"/>
                        </label>
                        <button class="btn btn-green" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </div><!--end: .email-newsletter -->
        <div class="grid_3">
            <h3 class="rs title">Discover &amp; Create</h3>
            <div class="footer-menu">
                <ul class="rs">
                    <li><a class="be-fc-orange" href="#">What is Kickstars</a></li>
                    <li><a class="be-fc-orange" href="#">Start a project</a></li>
                    <li><a class="be-fc-orange" href="#">Project Guidlines</a></li>
                    <li><a class="be-fc-orange" href="#">Press</a></li>
                    <li><a class="be-fc-orange" href="#">Stats</a></li>
                </ul>
                <ul class="rs">
                    <li><a class="be-fc-orange" href="#">Staff Picks</a></li>
                    <li><a class="be-fc-orange" href="#">Popular</a></li>
                    <li><a class="be-fc-orange" href="#">Recent</a></li>
                    <li><a class="be-fc-orange" href="#">Small Projects</a></li>
                    <li><a class="be-fc-orange" href="#">Most Funded</a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="copyright">
        <div class="container_12">
            <div class="grid_12">
                <a class="logo-footer" href="index.html"><img src="images/logo-2.png" alt="$SITE_NAME"/></a>
                <p class="rs term-privacy">
                    <a class="fw-b be-fc-orange" href="single.html">Terms & Conditions</a>
                    <span class="sep">/</span>
                    <a class="fw-b be-fc-orange" href="single.html">Privacy Policy</a>
                    <span class="sep">/</span>
                    <a class="fw-b be-fc-orange" href="#">FAQ</a>
                </p>
                <p class="rs ta-c fc-gray-dark site-copyright">HTML by <a href="http://megadrupal.com" title="Drupal Developers" target="_blank">MegaDrupal</a>. Designed by <a href="http://bestwebsoft.com/" title="Web development company" target="_blank">BestWebSoft</a>.</p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</footer><!--end: #footer -->

</div>

<div class="popup-common" id="sys_popup_common">
    <div class="overlay-bl-bg"></div>
    <div class="container_12 pop-content">
        <div class="grid_12 wrap-btn-close ta-r">
            <i class="icon iBigX closePopup"></i>
        </div>
        <div class="grid_6 prefix_1">
            <div class="form login-form">
                <form action="#">
                    <h3 class="rs title-form">브루덕에 합류하기 (Register)</h3>
                    <div class="box-white">
                        <h4 class="rs title-box">브루덕에 처음이신가요?</h4>
                        <p class="rs">다양한 서비스를 자유롭게 사용해보세요!</p>
                        <div class="form-action">
                            <label for="txt_name">
                                <input id="txt_name" class="txt fill-width" type="text" placeholder="활동 닉네임"/>
                            </label>
                            <div class="wrap-2col clearfix">
                                <div class="col">
                                    <label for="txt_email">
                                        <input id="txt_email" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요."/>
                                    </label>
                                    <label for="txt_re_email">
                                        <input id="txt_re_email" class="txt fill-width" type="email" placeholder="이메일 주소를 다시 입력하세요."/>
                                    </label>
                                </div>
                                <div class="col">
                                    <label for="txt_password">
                                        <input id="txt_password" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요."/>
                                    </label>
                                    <label for="txt_re_password">
                                        <input id="txt_re_password" class="txt fill-width" type="password" placeholder="패스워드를 다시 입력하세요."/>
                                    </label>
                                </div>
                            </div>
                            <p class="rs pb10">가입하기을 클릭하시면 <a href="#" class="fc-orange">약관</a>에 동의하며 <a href="#" class="fc-orange">쿠키 사용</a>을
                                포함한 </br><a href="#" class="fc-orange">데이터 사용 정책</a>을 숙지하신 것으로 간주됩니다.</p>
                            <p class="rs ta-c">
                                <button class="btn btn-red btn-submit" type="submit">합류하기</button>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="grid_4">
            <div class="form login-form">
                <form action="#">
                    <h3 class="rs title-form">입장 (Login)</h3>
                    <div class="box-white">
                        <h4 class="rs title-box">이미 회원이신가요?</h4>
                        <p class="rs">로그인 해주세요!</p>
                        <div class="form-action">
                            <label for="txt_email_login">
                                <input id="txt_email_login" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요."/>
                            </label>
                            <label for="txt_password_login">
                                <input id="txt_password_login" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요."/>
                            </label>

                            <label for="chk_remember" class="rs pb20 clearfix">
                                <input id="chk_remember" type="checkbox" class="chk-remember"/>
                                <span class="lbl-remember">로그인 상태유지</span>
                            </label>
                            <p class="rs ta-c pb10">
                                <button class="btn btn-red btn-submit" type="submit">로그인</button>
                            </p>
                            <p class="rs ta-c">
                                <a href="#" class="fc-orange">비밀번호를 잃어버리셨나요?</a>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-20585382-5', 'megadrupal.com');
    ga('send', 'pageview');

</script>
</body>
</html>