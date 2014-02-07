<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/common/include/default_header.jsp"%>
<body>
<div id="wrapper">

<!-- 상단 메뉴바 -->
<%@include file="/WEB-INF/views/common/include/default_topnavybar.jsp"%>

<!-- 왼쪽 메뉴들 -->
<%@include file="/WEB-INF/views/common/include/default_left_sidebar.jsp"%>


<!-- 메인 컨텐츠 -->
<decorator:body />

<!--  팝업창  -->
<div id="md-messages" class="modal fade md-slideUp" tabindex="-1" data-width="450"  data-header-color="theme-inverse">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                        <div class="im-thumbnail"><img alt="" src="/resources//img/avatar2.png" /></div>
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
                        <h4><a href="javascript:void(0)">Laine Fränchi</a>
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
                        <div class="im-thumbnail"><img alt="" src="/resources//img/avatar.png" /></div>
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
            <button class="btn btn-theme-inverse btn-block">View All inbox</button>
        </div>
        <!-- //widget-im-->
    </div>
    <!-- //modal-body-->
</div>

<!--
//////////////////////////////////////////////////////////////////////////
//////////     MODAL NOTIFICATION     //////////
//////////////////////////////////////////////////////////////////////
-->
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
<!-- //modal-->

<!-- 왼쪽 네비게이션 메뉴 -->
<%@include file="/WEB-INF/views/common/include/default_left_nav_menu.jsp"%>
<!-- //nav left menu-->

<!-- 오른쪽 네비게이션 메뉴 -->
<%@include file="/WEB-INF/views/common/include/default_right_nav_menu.jsp"%>
<!-- //nav right menu-->
</div>
<!-- //wrapper-->


<!--
////////////////////////////////////////////////////////////////////////
//////////     JAVASCRIPT  LIBRARY     //////////
/////////////////////////////////////////////////////////////////////
-->

<!-- Jquery Library -->
<script type="text/javascript" src="/resources//js/jquery.min.js"></script>
<script type="text/javascript" src="/resources//js/jquery.ui.min.js"></script>
<script type="text/javascript" src="/resources//plugins/bootstrap/bootstrap.min.js"></script>
<!-- Modernizr Library For HTML5 And CSS3 -->
<script type="text/javascript" src="/resources//js/modernizr/modernizr.js"></script>
<script type="text/javascript" src="/resources//plugins/mmenu/jquery.mmenu.js"></script>
<!-- Holder Images -->
<script type="text/javascript" src="/resources//plugins/holder/holder.js"></script>
<!-- Form plugins -->
<script type="text/javascript" src="/resources//plugins/form/form.js"></script>
<!-- Datetime plugins -->
<script type="text/javascript" src="/resources//plugins/datetime/datetime.js"></script>
<!-- Library Chart-->
<script type="text/javascript" src="/resources//plugins/chart/chart.js"></script>
<!-- Library Themes Customize-->
<script type="text/javascript" src="/resources//js/caplet.custom.js"></script>
<!-- Library datable -->
<script type="text/javascript" src="/resources//plugins/datable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/resources//plugins/datable/dataTables.bootstrap.js"></script>
<script type="text/javascript">

    function fnShowHide( iCol , table){
        var oTable = $(table).dataTable();
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        oTable.fnSetColumnVis( iCol, bVis ? false : true );
    }

    $(function() {

        //////////     DATA TABLE  COLUMN TOGGLE    //////////
        $('[data-table="table-toggle-column"]').each(function(i) {
            var data=$(this).data(),
                    table=$(this).data("table-target"),
                    dropdown=$(this).parent().find(".dropdown-menu"),
                    col=new Array;
            $(table).find("thead th").each(function(i) {
                $("<li><a  class='toggle-column' href='javascript:void(0)' onclick=fnShowHide("+i+",'"+table+"') ><i class='fa fa-check'></i> "+$(this).text()+"</a></li>").appendTo(dropdown);
            });
        });

        //////////     COLUMN  TOGGLE     //////////
        $("a.toggle-column").on('click',function(){
            $(this).toggleClass( "toggle-column-hide" );
            $(this).find('.fa').toggleClass( "fa-times" );
        });

        // Call dataTable in this page only
        $('#table-example').dataTable();
        $('table[data-provide="data-table"]').dataTable();
    });
</script>
</body>
</html>