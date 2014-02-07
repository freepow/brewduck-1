<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="main">


<ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Table</a></li>
    <li class="active">Data Table</li>
</ol>
<!-- //breadcrumb-->

<div id="content">

<div class="row">

<div class="col-lg-12">
<section class="panel">
<header class="panel-heading">
    <h2><strong>Toggle</strong> column </h2>
    <label class="color">Data table toggle <em><strong>with toolsbar </strong></em></label>
</header>
<div class="panel-tools fully color " align="right" data-toolscolor="theme-inverse">
    <ul class="tooltip-area">
        <li>
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-table="table-toggle-column" data-table-target="#toggle-column"  title="Table Column"><i class="fa fa-th-list"></i></button>
                <ul class="dropdown-menu arrow pull-right" role="menu"></ul>
            </div>
        </li>
        <li><a href="javascript:void(0)" class="btn btn-collapse" title="Collapse"><i class="fa fa-sort-amount-asc"></i></a></li>
        <li><a href="javascript:void(0)" class="btn btn-reload"  title="Reload"><i class="fa fa-retweet"></i></a></li>
        <li><a href="javascript:void(0)" class="btn btn-close" title="Close"><i class="fa fa-times"></i></a></li>
    </ul>
</div>
<div class="panel-body">
<form>
<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-hover" data-provide="data-table" id="toggle-column">
<thead>
<tr>
    <th>Rendering engine</th>
    <th>Browser</th>
    <th>Platform(s)</th>
    <th>Engine version</th>
    <th>CSS grade</th>
</tr>
</thead>
<tbody align="center">
<tr class="odd gradeX">
    <td>Trident</td>
    <td>Internet
        Explorer 4.0</td>
    <td>Win 95+</td>
    <td class="center"> 4</td>
    <td class="center">X</td>
</tr>
<tr class="even gradeC">
    <td>Trident</td>
    <td>Internet
        Explorer 5.0</td>
    <td>Win 95+</td>
    <td class="center">5</td>
    <td class="center">C</td>
</tr>
<tr class="odd gradeA">
    <td>Trident</td>
    <td>Internet
        Explorer 5.5</td>
    <td>Win 95+</td>
    <td class="center">5.5</td>
    <td class="center">A</td>
</tr>
<tr class="even gradeA">
    <td>Trident</td>
    <td>Internet
        Explorer 6</td>
    <td>Win 98+</td>
    <td class="center">6</td>
    <td class="center">A</td>
</tr>
<tr class="odd gradeA">
    <td>Trident</td>
    <td>Internet Explorer 7</td>
    <td>Win XP SP2+</td>
    <td class="center">7</td>
    <td class="center">A</td>
</tr>
<tr class="even gradeA">
    <td>Trident</td>
    <td>AOL browser (AOL desktop)</td>
    <td>Win XP</td>
    <td class="center">6</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Firefox 1.0</td>
    <td>Win 98+ / OSX.2+</td>
    <td class="center">1.7</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Firefox 1.5</td>
    <td>Win 98+ / OSX.2+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Firefox 2.0</td>
    <td>Win 98+ / OSX.2+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Firefox 3.0</td>
    <td>Win 2k+ / OSX.3+</td>
    <td class="center">1.9</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Camino 1.0</td>
    <td>OSX.2+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Camino 1.5</td>
    <td>OSX.3+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Netscape 7.2</td>
    <td>Win 95+ / Mac OS 8.6-9.2</td>
    <td class="center">1.7</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Netscape Browser 8</td>
    <td>Win 98SE+</td>
    <td class="center">1.7</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Netscape Navigator 9</td>
    <td>Win 98+ / OSX.2+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.0</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.1</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.1</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.2</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.2</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.3</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.3</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.4</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.4</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.5</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.5</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.6</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">1.6</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.7</td>
    <td>Win 98+ / OSX.1+</td>
    <td class="center">1.7</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Mozilla 1.8</td>
    <td>Win 98+ / OSX.1+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Seamonkey 1.1</td>
    <td>Win 98+ / OSX.2+</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Gecko</td>
    <td>Epiphany 2.20</td>
    <td>Gnome</td>
    <td class="center">1.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>Safari 1.2</td>
    <td>OSX.3</td>
    <td class="center">125.5</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>Safari 1.3</td>
    <td>OSX.3</td>
    <td class="center">312.8</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>Safari 2.0</td>
    <td>OSX.4+</td>
    <td class="center">419.3</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>Safari 3.0</td>
    <td>OSX.4+</td>
    <td class="center">522.1</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>OmniWeb 5.5</td>
    <td>OSX.4+</td>
    <td class="center">420</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>iPod Touch / iPhone</td>
    <td>iPod</td>
    <td class="center">420.1</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Webkit</td>
    <td>S60</td>
    <td>S60</td>
    <td class="center">413</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 7.0</td>
    <td>Win 95+ / OSX.1+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 7.5</td>
    <td>Win 95+ / OSX.2+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 8.0</td>
    <td>Win 95+ / OSX.2+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 8.5</td>
    <td>Win 95+ / OSX.2+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 9.0</td>
    <td>Win 95+ / OSX.3+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 9.2</td>
    <td>Win 88+ / OSX.3+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera 9.5</td>
    <td>Win 88+ / OSX.3+</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Opera for Wii</td>
    <td>Wii</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Nokia N800</td>
    <td>N800</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>Presto</td>
    <td>Nintendo DS browser</td>
    <td>Nintendo DS</td>
    <td class="center">8.5</td>
    <td class="center">C/A<sup>1</sup></td>
</tr>
<tr class="gradeC">
    <td>KHTML</td>
    <td>Konqureror 3.1</td>
    <td>KDE 3.1</td>
    <td class="center">3.1</td>
    <td class="center">C</td>
</tr>
<tr class="gradeA">
    <td>KHTML</td>
    <td>Konqureror 3.3</td>
    <td>KDE 3.3</td>
    <td class="center">3.3</td>
    <td class="center">A</td>
</tr>
<tr class="gradeA">
    <td>KHTML</td>
    <td>Konqureror 3.5</td>
    <td>KDE 3.5</td>
    <td class="center">3.5</td>
    <td class="center">A</td>
</tr>
<tr class="gradeX">
    <td>Tasman</td>
    <td>Internet Explorer 4.5</td>
    <td>Mac OS 8-9</td>
    <td class="center">-</td>
    <td class="center">X</td>
</tr>
<tr class="gradeC">
    <td>Tasman</td>
    <td>Internet Explorer 5.1</td>
    <td>Mac OS 7.6-9</td>
    <td class="center">1</td>
    <td class="center">C</td>
</tr>
<tr class="gradeC">
    <td>Tasman</td>
    <td>Internet Explorer 5.2</td>
    <td>Mac OS 8-X</td>
    <td class="center">1</td>
    <td class="center">C</td>
</tr>
<tr class="gradeA">
    <td>Misc</td>
    <td>NetFront 3.1</td>
    <td>Embedded devices</td>
    <td class="center">-</td>
    <td class="center">C</td>
</tr>
<tr class="gradeA">
    <td>Misc</td>
    <td>NetFront 3.4</td>
    <td>Embedded devices</td>
    <td class="center">-</td>
    <td class="center">A</td>
</tr>
<tr class="gradeX">
    <td>Misc</td>
    <td>Dillo 0.8</td>
    <td>Embedded devices</td>
    <td class="center">-</td>
    <td class="center">X</td>
</tr>
<tr class="gradeX">
    <td>Misc</td>
    <td>Links</td>
    <td>Text only</td>
    <td class="center">-</td>
    <td class="center">X</td>
</tr>
<tr class="gradeX">
    <td>Misc</td>
    <td>Lynx</td>
    <td>Text only</td>
    <td class="center">-</td>
    <td class="center">X</td>
</tr>
<tr class="gradeC">
    <td>Misc</td>
    <td>IE Mobile</td>
    <td>Windows Mobile 6</td>
    <td class="center">-</td>
    <td class="center">C</td>
</tr>
<tr class="gradeC">
    <td>Misc</td>
    <td>PSP browser</td>
    <td>PSP</td>
    <td class="center">-</td>
    <td class="center">C</td>
</tr>
<tr class="gradeU">
    <td>Other browsers</td>
    <td>All others</td>
    <td>-</td>
    <td class="center">-</td>
    <td class="center">U</td>
</tr>
</tbody>
</table>
</form>
</div>
</section>
</div>

</div>
<!-- //content > row-->

</div>
<!-- //content-->


</div>
<!-- //main-->


<content tag="script">

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
    <!-- Library datable -->
    <script type="text/javascript" src="/resources/plugins/datable/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/resources/plugins/datable/dataTables.bootstrap.js"></script>


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

</content>