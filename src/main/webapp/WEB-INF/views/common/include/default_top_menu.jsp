<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>

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
                <%
                    if (AuthenticationUtils.isAuthenticated() == false) {
                %>
                    <a href="#" class="btn btn-red sys_show_popup_join">멤버 등록</a>
                    <a href="#" class="btn btn-white sys_show_popup_login">로그인</a>
                <%
                    } else {
                %>
                    <div class="main-nav clearfix">
                        <div class="nav-item">
                            <a href="/account/logout" class="nav-title">로그아웃</a>
                            <p class="rs nav-description">환영합니다.</p>
                        </div>
                    </div>
                <%
                    }
                %>
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
                    <a href="/"><img src="/resources/images/logo.png" alt="$SITE_NAME"/></a>
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
    <br />
    <br />
</header>
<!--end: #header -->
