<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>

<!-- 헤더 시작 -->
<div class="header navbar navbar-inverse ">
    <!-- TOP 네비게이션 바 시작 -->
    <div class="navbar-inner">
        <div class="header-seperation" style="display:none">
            <ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">
                <li class="dropdown"> <a id="main-menu-toggle" href="#main-menu"  class="" >
                    <div class="iconset top-menu-toggle-white"></div>
                </a> </li>
            </ul>
            <!-- 로고 -->
            <a href="#"><img src="/resources/assets/img/logo.png" class="logo" alt=""  data-src="/resources/assets/img/logo.png" data-src-retina="/resources/assets/img/logo2x.png" width="106" height="21"/></a>
            <ul class="nav pull-right notifcation-center">
                <li class="dropdown" id="header_task_bar"> <a href="#" class="dropdown-toggle active" data-toggle="">
                    <div class="iconset top-home"></div>
                </a> </li>
                <li class="dropdown" id="header_inbox_bar" > <a href="#" class="dropdown-toggle" >
                    <div class="iconset top-messages"></div>
                    <span class="badge" id="msgs-badge">2</span> </a></li>
                <li class="dropdown" id="portrait-chat-toggler" style="display:none"> <a href="#sidr" class="chat-menu-toggle">
                    <div class="iconset top-chat-white "></div>
                </a> </li>
            </ul>
        </div>
        <!-- 반응형 메뉴 토클러 끝 -->
        <div class="header-quick-nav" >
            <!-- TOP 네비게이션 메뉴 시작 -->
            <div class="pull-left">
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" id="layout-condensed-toggle" >
                        <div class="iconset top-menu-toggle-dark"></div>
                    </a> </li>
                </ul>
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-reload"></div>
                    </a> </li>
                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="input-prepend inside search-form no-boarder"> <span class="add-on"> <span class="iconset top-search"></span></span>
                        <input name="" type="text"  class="no-boarder " placeholder="전체 검색" style="width:250px;">
                    </li>
                </ul>
            </div>
            <!-- TOP 네비게이션 메뉴 끝 -->
            <!-- BEGIN CHAT TOGGLER -->
            <div class="pull-right">
                <div class="chat-toggler"> <a href="#" class="dropdown-toggle" id="my-task-list" data-placement="bottom"  data-content='' data-toggle="dropdown" data-original-title="알림">
                    <div class="user-details">
                        <div class="username"> <span class="badge badge-important"> </span>   <span class="bold"> </span> </div>
                    </div>
                    <div class="iconset top-down-arrow"></div>
                </a>
                    <div id="notification-list" style="display:none">
                        <div style="width:300px">
                            <!--div class="notification-messages info">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> 홍길동- 호핑스케줄에 대한 답변이 달렸습니다. </div>
                                    <div class="description"> 보통은 케스케이드 홉을 사용합니다. </div>
                                    <div class="date pull-left"> 지금 막 </div>
                                </div>
                                <div class="clearfix"></div>
                            </div-->
                            <div class="notification-messages danger">
                                <div class="iconholder"> <i class="icon-warning-sign"></i> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> 오픈 양조 이벤트 </div>
                                    <div class="description"> 양조 이벤트 장소가 변경되었습니다. </div>
                                    <div class="date pull-left"> 한시간 전 </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages success">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> 2개의 새로운 업적을 달성하셨습니다. </div>
                                    <div class="description"> 천리길도 한걸음부터 </div>
                                    <div class="date pull-left"> 하루 전 </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-pic"> <img src="/resources/assets/img/profiles/avatar_small.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35" /> </div>
                </div>
                <ul class="nav quick-section ">

                    <li class="quicklinks"> <span class="h-seperate"></span></li>


                    <%
                        if (AuthenticationUtils.isAuthenticated() == false) {
                    %>
                    <li class="quicklinks"> <a href="/account/login" id="user-options">
                        로그인
                    </a>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="quicklinks"> <a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">
                        <div class="iconset top-settings-dark "></div>
                    </a>
                        <ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                            <li><a href="#">내 계정</a> </li>
                            <li><a href="#">양조 스케줄</a> </li>
                            <li><a href="#">메세지 박스&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a> </li>
                            <li class="divider"></li>
                            <li><a href="/account/logout"><i class="fa fa-power-off"></i>&nbsp;&nbsp;로그 아웃</a></li>
                        </ul>
                    </li>
                    <%
                        }
                    %>



                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="quicklinks"> <a id="chat-menu-toggle" href="#sidr" class="chat-menu-toggle" >
                        <div class="iconset top-chat-dark "><span class="badge badge-important hide" id="chat-message-count">1</span></div>
                    </a>
                        <div class="simple-chat-popup chat-menu-toggle hide" >
                            <div class="simple-chat-popup-arrow"></div>
                            <div class="simple-chat-popup-inner">
                                <div style="width:100px">
                                    <div class="semi-bold">맥주의 왕자</div>
                                    <div class="message">질문좀요!!</div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- END CHAT TOGGLER -->
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- 헤더 끝 -->