<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Webarch - Responsive Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <link href="/resources/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- CSS 플러그인 -->
    <link href="/resources/assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/jquery-slider/css/jquery.sidr.light.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/jquery-datatable/css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/plugins/boostrap-checkbox/css/bootstrap-checkbox.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/datatables-responsive/css/datatables.responsive.css" rel="stylesheet" type="text/css" media="screen"/>

    <!-- CORE CSS 프레임워크 -->
    <link href="/resources/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>

    <!-- CSS 템플릿 -->
    <link href="/resources/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>

    <link href="/resources/assets/plugins/boostrap-slider/css/slider.css" rel="stylesheet" type="text/css"/>
    <!-- END CSS TEMPLATE -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="" oncontextmenu="return false">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="header-seperation" style="display:none">
            <ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">
                <li class="dropdown"> <a id="main-menu-toggle" href="#main-menu"  class="" >
                    <div class="iconset top-menu-toggle-white"></div>
                </a> </li>
            </ul>
            <!-- BEGIN LOGO -->
            <a href="index.html"><img src="/resources/assets/img/logo.png" class="logo" alt=""  data-src="/resources/assets/img/logo.png" data-src-retina="/resources/assets/img/logo2x.png" width="106" height="21"/></a>
            <!-- END LOGO -->
            <ul class="nav pull-right notifcation-center">
                <li class="dropdown" id="header_task_bar"> <a href="index.html" class="dropdown-toggle active" data-toggle="">
                    <div class="iconset top-home"></div>
                </a> </li>
                <li class="dropdown" id="header_inbox_bar" > <a href="email.html" class="dropdown-toggle" >
                    <div class="iconset top-messages"></div>
                    <span class="badge" id="msgs-badge">2</span> </a></li>
                <li class="dropdown" id="portrait-chat-toggler" style="display:none"> <a href="#sidr" class="chat-menu-toggle">
                    <div class="iconset top-chat-white "></div>
                </a> </li>
            </ul>
        </div>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <div class="header-quick-nav" >
            <!-- BEGIN TOP NAVIGATION MENU -->
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
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-tiles"></div>
                    </a> </li>
                    <li class="m-r-10 input-prepend inside search-form no-boarder"> <span class="add-on"> <span class="iconset top-search"></span></span>
                        <input name="" type="text"  class="no-boarder " placeholder="Search Dashboard" style="width:250px;">
                    </li>
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
            <!-- BEGIN CHAT TOGGLER -->
            <div class="pull-right">
                <div class="chat-toggler"> <a href="#" class="dropdown-toggle" id="my-task-list" data-placement="bottom"  data-content='' data-toggle="dropdown" data-original-title="Notifications">
                    <div class="user-details">
                        <div class="username"> <span class="badge badge-important">3</span> John <span class="bold">Smith</span> </div>
                    </div>
                    <div class="iconset top-down-arrow"></div>
                </a>
                    <div id="notification-list" style="display:none">
                        <div style="width:300px">
                            <div class="notification-messages info">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> David Nester - Commented on your wall </div>
                                    <div class="description"> Meeting postponed to tomorrow </div>
                                    <div class="date pull-left"> A min ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages danger">
                                <div class="iconholder"> <i class="icon-warning-sign"></i> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> Server load limited </div>
                                    <div class="description"> Database server has reached its daily capicity </div>
                                    <div class="date pull-left"> 2 mins ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages success">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> You haveve got 150 messages </div>
                                    <div class="description"> 150 newly unread messages in your inbox </div>
                                    <div class="date pull-left"> An hour ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-pic"> <img src="/resources/assets/img/profiles/avatar_small.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35" /> </div>
                </div>
                <ul class="nav quick-section ">
                    <li class="quicklinks"> <a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">
                        <div class="iconset top-settings-dark "></div>
                    </a>
                        <ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                            <li><a href="user-profile.html"> My Account</a> </li>
                            <li><a href="calender.html">My Calendar</a> </li>
                            <li><a href="email.html"> My Inbox&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a> </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                        </ul>
                    </li>
                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="quicklinks"> <a id="chat-menu-toggle" href="#sidr" class="chat-menu-toggle" >
                        <div class="iconset top-chat-dark "><span class="badge badge-important hide" id="chat-message-count">1</span></div>
                    </a>
                        <div class="simple-chat-popup chat-menu-toggle hide" >
                            <div class="simple-chat-popup-arrow"></div>
                            <div class="simple-chat-popup-inner">
                                <div style="width:100px">
                                    <div class="semi-bold">David Nester</div>
                                    <div class="message">Hey you there </div>
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
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar mini" id="main-menu">
    <!-- BEGIN MINI-PROFILE -->
    <div class="page-sidebar-wrapper" id="main-menu-wrapper">
        <div class="user-info-wrapper">
            <div class="profile-wrapper"> <img src="/resources/assets/img/profiles/avatar.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar.jpg" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" width="69" height="69" /> </div>
            <div class="user-info">
                <div class="greeting">Welcome</div>
                <div class="username">John <span class="semi-bold">Smith</span></div>
                <div class="status">Status<a href="#">
                    <div class="status-icon green"></div>
                    Online</a></div>
            </div>
        </div>
        <!-- END MINI-PROFILE -->
        <!-- BEGIN SIDEBAR MENU -->
        <p class="menu-title">BROWSE <span class="pull-right"><a href="javascript:;"><i class="fa fa-refresh"></i></a></span></p>
        <ul>
        </ul>
        <div class="side-bar-widgets">
            <p class="menu-title">FOLDER <span class="pull-right"><a href="#" class="create-folder"> <i class="fa fa-plus"></i></a></span></p>
            <ul class="folders" >
                <li><a href="#">
                    <div class="status-icon green"></div>
                    My quick tasks </a> </li>
                <li><a href="#">
                    <div class="status-icon red"></div>
                    To do list </a> </li>
                <li><a href="#">
                    <div class="status-icon blue"></div>
                    Projects </a> </li>
                <li class="folder-input" style="display:none">
                    <input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" >
                </li>
            </ul>
            <p class="menu-title">PROJECTS </p>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">Freelancer<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>Redesign home page</p>
                </div>
            </div>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">envato<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>Statistical report</p>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <!-- END SIDEBAR MENU -->
    </div>
</div>
<a href="#" class="scrollup to-edge">Scroll</a>
<div class="footer-widget" style="display:none">
    <div class="progress transparent progress-small no-radius no-margin">
        <div data-percentage="79%" class="progress-bar progress-bar-success animate-progress-bar" ></div>
    </div>
    <div class="pull-right">
        <div class="details-status"> <span data-animation-duration="560" data-value="86" class="animate-number"></span>% </div>
        <a href="lockscreen.html"><i class="fa fa-power-off"></i></a></div>
</div>
<!-- END SIDEBAR -->
<!-- BEGIN PAGE CONTAINER-->
<div class="page-content condensed">
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div id="portlet-config" class="modal hide">
    <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
    </div>
    <div class="modal-body"> Widget settings form goes here </div>
</div>
<div class="clearfix"></div>

<div class="content">
<div class="page-title"> <i class="icon-custom-left"></i>
    <h3>맥만동 홉 데이터베이스 - <span class="semi-bold">HOP DATABASE</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">
    <form class="form-no-horizontal-spacing" id="form-condensed">
        <div class="row column-seperation">
            <div class="col-md-6">
                <h4>특성으로 찾기</h4>
                <div class="row form-row">
                    <div class="col-md-12">
                        <input name="form3FirstName" id="form3FirstName" type="text"  class="form-control" placeholder="홉 이름">
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <div class="checkbox check-default checkbox-circle">
                            <input id="checkbox7" type="checkbox" value="1" checked="checked">
                            <label for="checkbox7">전체</label>
                            <input id="checkbox8" type="checkbox" value="1" >
                            <label for="checkbox8">Aroma</label>
                            <input id="checkbox7" type="checkbox" value="1" >
                            <label for="checkbox7">Bittering</label>
                        </div>
                    </div>
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <button type="button" class="btn btn-white btn-xs btn-mini">미국 (60건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">독일 (24건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">영국 (22건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">뉴질랜드 (14건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">호주 (13건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">슬로베니아 (8건)</button>
                        <button type="button" class="btn btn-white btn-xs btn-mini">기타 (15건)</button>
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
                <h4>수치로 찾기</h4>
                <div class="row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">ALPHA</span>
                        <p>Alpha 산 (α acids) 은 맥주의 생산에 있어서 가장 중요한 ...(더보기) </p>
                    </div>
                    <div class="slider sucess col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="20" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
                <div class="row form-row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">BETA</span>
                        <p>Beta 산은 ...(더보기) </p>
                    </div>
                    <div class="slider warning col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="40" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
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
        <div class="form-actions">
            <div class="pull-right">
                <button class="btn btn-danger btn-cons" type="submit"><i class="icon-ok"></i> 조회</button>
            </div>
        </div>
    </form>
</div>
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
        <tbody>
        <tr class="odd gradeX">
            <td>Admiral</td>
            <td>Bittering</td>
            <td>영국</td>
            <td>14.75</td>
            <td>5.6</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="even gradeC">
            <td>Agnus</td>
            <td>Bittering</td>
            <td>체코</td>
            <td>10.5</td>
            <td>5.25</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="odd gradeA">
            <td>Ahtanum </td>
            <td>Aroma</td>
            <td>미국</td>
            <td>6</td>
            <td>5.25</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="even gradeA">
            <td>Amarillo </td>
            <td>Aroma</td>
            <td>미국</td>
            <td>9.2</td>
            <td>5.25</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="odd gradeA">
            <td>Amarillo Gold</td>
            <td>Aroma</td>
            <td>미국</td>
            <td>8.5</td>
            <td>5.25</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="even gradeA">
            <td>Apollo </td>
            <td>Bittering</td>
            <td>미국</td>
            <td>17</td>
            <td>5.25</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="gradeA">
            <td>Aquila </td>
            <td>Aroma</td>
            <td>미국</td>
            <td>6.5</td>
            <td>6.75</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="gradeA">
            <td>Atlas </td>
            <td>Bittering</td>
            <td>슬로베니아</td>
            <td>9</td>
            <td>3</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="gradeA">
            <td>Atlas (Styrian Atlas)</td>
            <td>Bittering</td>
            <td>슬로베니아</td>
            <td>9.5</td>
            <td>3.7</td>
            <td>15</td>
            <td> </td>
        </tr>
        <tr class="gradeA">
            <td>Aurora </td>
            <td>둘다</td>
            <td>슬로베니아</td>
            <td>8.25</td>
            <td>3.5</td>
            <td>15</td>
            <td> </td>
        </tr>
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN CHAT -->
<div id="sidr" class="chat-window-wrapper">
    <div id="main-chat-wrapper" >
        <div class="chat-window-wrapper fadeIn" id="chat-users" >
            <div class="chat-header">
                <div class="pull-left">
                    <input type="text" placeholder="search">
                </div>
                <div class="pull-right"> <a href="#" class="" >
                    <div class="iconset top-settings-dark "></div>
                </a> </div>
            </div>
            <div class="side-widget">
                <div class="side-widget-title">group chats</div>
                <div class="side-widget-content">
                    <div id="groups-list">
                        <ul class="groups" >
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                Office work</a></li>
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                Personal vibes</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="side-widget fadeIn">
                <div class="side-widget-title">favourites</div>
                <div id="favourites-list">
                    <div class="side-widget-content" >
                        <div class="user-details-wrapper active" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                            <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                            <div class="user-details">
                                <div class="user-name"> Jane Smith </div>
                                <div class="user-more"> Hello you there? </div>
                            </div>
                            <div class="user-details-status-wrapper"> <span class="badge badge-important">3</span> </div>
                            <div class="user-details-count-wrapper">
                                <div class="status-icon green"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                            <div class="user-profile"> <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35"> </div>
                            <div class="user-details">
                                <div class="user-name"> David Nester </div>
                                <div class="user-more"> Busy, Do not disturb </div>
                            </div>
                            <div class="user-details-status-wrapper">
                                <div class="clearfix"></div>
                            </div>
                            <div class="user-details-count-wrapper">
                                <div class="status-icon red"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="side-widget">
                <div class="side-widget-title">more friends</div>
                <div class="side-widget-content" id="friends-list">
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> Jane Smith </div>
                            <div class="user-more"> Hello you there? </div>
                        </div>
                        <div class="user-details-status-wrapper"> </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> David Nester </div>
                            <div class="user-more"> Busy, Do not disturb </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> Jane Smith </div>
                            <div class="user-more"> Hello you there? </div>
                        </div>
                        <div class="user-details-status-wrapper"> </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> David Nester </div>
                            <div class="user-more"> Busy, Do not disturb </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="chat-window-wrapper fadeIn" id="messages-wrapper" style="display:none">
            <div class="chat-header">
                <div class="pull-left">
                    <input type="text" placeholder="search">
                </div>
                <div class="pull-right"> <a href="#" class="" >
                    <div class="iconset top-settings-dark "></div>
                </a> </div>
            </div>
            <div class="clearfix"></div>
            <div class="chat-messages-header">
                <div class="status online"></div>
                <span class="semi-bold">Jane Smith(Typing..)</span> <a href="#" class="chat-back"><i class="icon-custom-cross"></i></a> </div>
            <div class="chat-messages">
                <div class="sent_time">Yesterday 11:25pm</div>
                <div class="user-details-wrapper " >
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> Hello, You there? </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="user-details-wrapper ">
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> How was the meeting? </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="user-details-wrapper ">
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> Let me know when you free </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="sent_time ">Today 11:25pm</div>
                <div class="user-details-wrapper pull-right">
                    <div class="user-details">
                        <div class="bubble sender"> Let me know when you free </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Sent On Tue, 2:45pm</div>
                </div>
            </div>
        </div>
        <div class="chat-input-wrapper" style="display:none">
            <textarea id="chat-message-input" rows="1" placeholder="Type your message"></textarea>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- END CHAT -->
<!-- END CONTAINER -->
<!-- BEGIN CORE JS FRAMEWORK-->
<script src="/resources/assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/breakpoints.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script>
<!-- END CORE JS FRAMEWORK -->
<!-- BEGIN PAGE LEVEL JS -->
<script src="/resources/assets/plugins/jquery-slider/jquery.sidr.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/boostrap-slider/js/bootstrap-slider.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN CORE TEMPLATE JS -->
<script src="/resources/assets/js/core.js" type="text/javascript"></script>
<script src="/resources/assets/js/chat.js" type="text/javascript"></script>
<script src="/resources/assets/js/demo.js" type="text/javascript"></script>
<script>
    $(document).ready(function() {
        $('.slider-element').slider();
    });
</script>
</body>
</html>