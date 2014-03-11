<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<!-- 자바스크립트, css 파일들 -->
<%@include file="/WEB-INF/views/common/include/default_header.jsp"%>

<body>
<div id="wrapper">

<!-- 상단 메뉴 -->
<%@include file="/WEB-INF/views/common/include/default_top_menu.jsp"%>

<decorator:body />

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