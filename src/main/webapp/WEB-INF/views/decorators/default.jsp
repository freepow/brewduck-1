<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/common/include/default_header.jsp"%>
<body>
<div id="wrapper">

<!-- 상단 네비게이션 -->
<%@include file="/WEB-INF/views/common/include/default_topnavybar.jsp"%>


<!-- 왼쪽 컨텐츠 영역 -->
<%@include file="/WEB-INF/views/common/include/default_left_content.jsp"%>



<!-- 메인 컨텐츠 영역 -->
<decorator:body />

<!-- 모달 메세지 -->
<div id="md-messages" class="modal fade md-slideUp" tabindex="-1" data-width="450"  data-header-color="theme-inverse">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
        <h4 class="modal-title"><i class="fa fa-inbox"></i> Inbox messages</h4>
    </div>
    <!-- //modal-header-->
    <div class="modal-body" style="padding:0">
        <div class="widget-im">
            <ul>
                <li>
                    <section  class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<i class="fa fa-paperclip"></i>
																</span>
																<span>
																		<i class="fa fa-reply-all"></i>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-delete" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></a>
																</span>
																<span>
																		<time datetime="2013-11-16">1 : 52 am</time>
																</span>
                        </div>
                        <h4><a href="javascript:void(0)">Edlado Holder</a>
                        </h4>
                        <div class="im-thumbnail"><img alt="" src="/resources/img/avatar2.png" /></div>
                        <label></label>
                        <div class="pre-text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="yes">YES.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="no">NO.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <section  class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<i class="fa fa-paperclip"></i>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-delete" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></a>
																</span>
																<span>
																		<time datetime="2013-11-16">12 : 00 pm</time>
																</span>
                        </div>
                        <h4><a href="javascript:void(0)">Laine Franchi</a>
                        </h4>
                        <div class="im-thumbnail"><i class="glyphicon glyphicon-user"></i></div>
                        <div class="pre-text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="yes">YES.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="no">NO.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <section class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<a href="javascript:void(0)" class="im-delete" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></a>
																</span>
																<span>
																		<time datetime="2013-11-16">4 : 45 pm</time>
																</span>
                        </div>
                        <h4><a href="javascript:void(0)">Cinda Collar</a>
                        </h4>
                        <div class="im-thumbnail"><img alt="" src="/resources/img/avatar.png" /></div>
                        <label data-color="theme"></label>
                        <div class="pre-text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="yes">YES.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="no">NO.</a>
                        </div>
                    </div>
                </li>
            </ul>
            <button class="btn btn-theme-inverse btn-block btn-lg">View All inbox</button>
        </div>
        <!-- //widget-im-->
    </div>
    <!-- //modal-body-->
</div>

<!-- 모달 Notification -->
<div id="md-notification" class="modal fade md-stickTop" tabindex="-1" data-width="500"  data-header-color="danger">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-angle-double-up"></i></button>
        <h4 class="modal-title"><i class="fa fa-bell-o"></i> Notification</h4>
    </div>
    <!-- //modal-header-->
    <div class="modal-body" style="padding:0">
        <div class="widget-im notification">
            <ul>
                <li>
                    <section class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<time class="timeago lasted" datetime="2014">when you opened the page</time>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-action" data-toggle="tooltip" data-placement="left" title="Action"><i class="fa fa-keyboard-o"></i></a>
																</span>
                        </div>
                        <h4>Your request approved</h4>
                        <div class="im-thumbnail" data-color="theme-inverse"><i class="fa fa-check"></i></div>
                        <div class="pre-text">One Button (click to remove this)</div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="accept">Accept.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <section class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<time class="timeago" datetime="2013-11-17T14:24:17Z">timeago</time>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-action" data-toggle="tooltip" data-placement="left" title="Action"><i class="fa fa-keyboard-o"></i></a>
																</span>
                        </div>
                        <h4>Dashboard new design!! you want to see now ? </h4>
                        <div class="im-thumbnail" data-color="theme"><i class="fa fa-bell-o"></i></div>
                        <div class="pre-text">Two Button (with link and click to close this) Lorem ipsum dolor sit amet, consectetur adipisicing elit, </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse" href="dashboard.html">Go Now.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="no">Later.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <section class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<time class="timeago" datetime="2013-11-17T01:24:17Z">timeago</time>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-action" data-toggle="tooltip" data-placement="left" title="Action"><i class="fa fa-keyboard-o"></i></a>
																</span>
                        </div>
                        <h4>Error 404 <small>( File not  found )</small></h4>
                        <div class="im-thumbnail" data-color="warning"><i class="fa fa-exclamation-triangle"></i></div>
                        <div class="pre-text">Two Button (click to  action and remove) </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="accept">Accept.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="actionNow">Fixed now.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <section class="thumbnail-in">
                        <div class="widget-im-tools tooltip-area pull-right">
																<span>
																		<time class="timeago" datetime="2013-09-17T09:24:17Z">timeago</time>
																</span>
																<span>
																		<a href="javascript:void(0)" class="im-action" data-toggle="tooltip" data-placement="left" title="Action"><i class="fa fa-keyboard-o"></i></a>
																</span>
                        </div>
                        <h4>Upgrade Premium ?</h4>
                        <div class="im-thumbnail" data-color="inverse">
                            <i class="fa fa-cogs"></i></div>
                        <div class="pre-text"> Three button (test action) </div>
                    </section>
                    <div class="im-confirm-group">
                        <div class=" btn-group btn-group-justified">
                            <a class="btn btn-inverse im-confirm" href="javascript:void(0)" data-confirm="actionNow">Now.</a>
                            <a class="btn btn-theme im-confirm" href="javascript:void(0)" data-confirm="no">Later.</a>
                            <a class="btn btn-danger im-confirm" href="javascript:void(0)" data-confirm="yes">Delete.</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- //widget-im-->
    </div>
    <!-- //modal-body-->
</div>


<!-- 왼쪽 메뉴 -->
<%@include file="/WEB-INF/views/common/include/default_left_nav_menu.jsp"%>


<!-- //nav left menu-->



<!--
/////////////////////////////////////////////////////////////////
//////////     RIGHT NAV MENU     //////////
/////////////////////////////////////////////////////////////
-->
<nav id="contact-right">
<ul>
<li class="Label label-lg">Contact Group</li>
<li>
    <span>Friends</span>
    <ul>
        <li class="Label">A</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/1.jpg" /> Alexa
                <small>Johnson</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/2.jpg" /> Alexander
                <small>Brown</small>
            </a>
        </li>
        <li class="Label">F</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/3.jpg" /> Fred
                <small>Smith</small>
            </a>
        </li>
        <li class="Label">J</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/4.jpg" /> James
                <small>Miller</small>
            </a>
        </li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/5.jpg" /> Jefferson
                <small>Jackson</small>
            </a>
        </li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/6.jpg" /> Jordan
                <small>Lee</small>
            </a>
        </li>
        <li class="Label">K</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/7.jpg" /> Kim
                <small>Adams</small>
            </a>
        </li>
        <li class="Label">M</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/8.jpg" /> Meagan
                <small>Miller</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/9.jpg" /> Melissa
                <small>Johnson</small>
            </a>
        </li>
        <li class="Label">N</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/10.jpg" /> Nicole
                <small>Smith</small>
            </a>
        </li>
        <li class="Label">S</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/1.jpg" /> Samantha
                <small>Harris</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="block">
                <img alt="" src="/resources/photos_preview/50/people/2.jpg" /> Scott
                <small>Thompson</small>
            </a>
        </li>
    </ul>
</li>
<li>
    <span>Family</span>
    <ul>
        <li class="Label">A</li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/3.jpg" /> Adam
                <small>White</small>
            </a>
        </li>
        <li class="Label">B</li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/4.jpg" /> Ben
                <small>Robinson</small>
            </a>
        </li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/5.jpg" /> Bruce
                <small>Lee</small>
            </a>
        </li>
        <li class="Label">E</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/6.jpg" /> Eddie
                <small>Williams</small>
            </a>
        </li>
        <li class="Label">J</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/7.jpg" /> Jack
                <small>Johnson</small>
            </a>
        </li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/8.jpg" /> John
                <small>Jackman</small>
            </a>
        </li>
        <li class="Label">M</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/9.jpg" /> Martina
                <small>Thompson</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/10.jpg" /> Matthew
                <small>Watson</small>
            </a>
        </li>
        <li class="Label">O</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/1.jpg" /> Olivia
                <small>Taylor</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/2.jpg" /> Owen
                <small>Wilson</small>
            </a>
        </li>
    </ul>
</li>
<li>
								<span>
										Work colleagues
								</span>
    <ul>
        <li class="Label">D</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/3.jpg" /> David
                <small>Harris</small>
            </a>
        </li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/4.jpg" /> Dennis
                <small>King</small>
            </a>
        </li>
        <li class="Label">E</li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/5.jpg" /> Eliza
                <small>Walker</small>
            </a>
        </li>
        <li class="Label">L</li>
        <li class="img">
            <a href="#" class="busy">
                <img alt="" src="/resources/photos_preview/50/people/6.jpg" /> Larry
                <small>Turner</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/7.jpg" /> Lisa<br />
                <small>Wilson</small>
            </a>
        </li>
        <li class="Label">M</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/8.jpg" /> Michael
                <small>Jordan</small>
            </a>
        </li>
        <li class="Label">R</li>
        <li class="img">
            <a href="#">
                <img alt="" src="/resources/photos_preview/50/people/9.jpg" /> Rachelle
                <small>Cooper</small>
            </a>
        </li>
        <li class="img">
            <a href="#" class="online">
                <img alt="" src="/resources/photos_preview/50/people/10.jpg" /> Rick
                <small>James</small>
            </a>
        </li>
    </ul>
</li>
<li class="Label label-lg">Total week Earnings</li>
<li>
								<span>
									<div class="widget-mini-chart align-xs-right">
                                        <div class="pull-left">
                                            <div class="sparkline mini-chart" data-type="bar" data-color="warning" data-bar-width="10" data-height="45">2,3,7,5,4,6,6,3</div>
                                        </div>
                                        <p>This week Earnings</p>
                                        <h4>$11,987</h4>
                                    </div>
									<!-- //widget-mini-chart -->
								</span>
</li>
<li>
								<span>
										See This week
								</span>
    <ul>
        <li class="Label">themeforest</li>
        <li><span><i class="label label-warning pull-right">HTML</i> Earnings $395 </span></li>
        <li><span> Earnings $485 </span></li>
        <li><span><i class="label label-info pull-right">Wordpress</i> Earnings $1,589 </span></li>
        <li class="Label">codecanyon </li>
        <li><span><i class="label label-danger pull-right">Item 6537086</i> Earnings $897</span></li>
        <li><span>Sunday Earnings $395</span></li>
        <li class="Label">Other</li>
        <li><span><i class="label label-success  pull-right">up 35%</i> Total Earnings $5,025</span></li>
    </ul>
</li>
<li class="Label label-lg">Processing </li>
<li>
								<span>
									<p>Server Processing</p>
									<div class="progress progress-dark progress-stripes progress-xs">
                                        <div class="progress-bar" data-color="theme" aria-valuetransitiongoal="37"></div>
                                    </div>
									<label class="progress-label">Today , CPU 37%</label>
									<!-- //progress-->
									<div class="progress progress-dark progress-xs">
                                        <div class="progress-bar" data-color="lightseagreen" aria-valuetransitiongoal="23"></div>
                                    </div>
									<label class="progress-label lasted">Today , Server load  22.85%</label>
									<!-- //progress-->
								</span>
</li>
<li class="Label label-lg">Quick Friends Chat </li>
<li class="img">
    <a href="#" class="online">
        <img alt="" src="/resources/photos_preview/50/people/1.jpg" /> Olivia
        <small>Taylor</small>
    </a>
</li>
<li class="img">
    <a href="#" class="online">
        <img alt="" src="/resources/photos_preview/50/people/2.jpg" /> Owen
        <small>Wilson</small>
    </a>
</li>
<li class="img">
    <a href="#">
        <img alt="" src="/resources/photos_preview/50/people/8.jpg" /> Meagan
        <small>Miller</small>
    </a>
</li>
<li class="img">
    <a href="#" class="busy">
        <img alt="" src="/resources/photos_preview/50/people/9.jpg" /> Melissa
        <small>Johnson</small>
    </a>
</li>
<li class="img">
    <a href="#" class="online">
        <img alt="" src="/resources/photos_preview/50/people/5.jpg" /> Samantha
        <small>Harris</small>
    </a>
</li>
<li class="Label label-lg">visitors Real Time</li>
<li>
								<span>
									<div class="widget-chart">
                                        <div id="realtimeChart" class="demo-placeholder" style="height:150px"></div>
                                        <div id="realtimeChartCount" class="align-lg-center"><span>0</span> visitors on site </div>
                                    </div><!-- // widget-chart -->
								</span>
</li>
</ul>
</nav>
<!-- //nav right menu-->


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
</body>
</html>