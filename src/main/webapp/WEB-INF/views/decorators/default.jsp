<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<!-- 자바스크립트, css 파일들 -->
<%@ include file="/WEB-INF/views/common/include/default_header.jsp" %>

<body>
<div id="wrapper">

    <!-- 상단 메뉴 -->
    <%@ include file="/WEB-INF/views/common/include/default_top_menu.jsp" %>

    <decorator:body />

    <!-- 상단 메뉴 -->
    <%@ include file="/WEB-INF/views/common/include/default_footer.jsp" %>

</div>

</body>
</html>