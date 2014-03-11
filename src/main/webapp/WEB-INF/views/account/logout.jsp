<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String userAgent = request.getHeader("user-agent");

    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    // internet explorer
    if (userAgent.indexOf("MSIE") > -1) {
        response.setHeader("Cache-Control", "no-cache");
    }
    // firefox
    else if (userAgent.indexOf("Firefox") > -1) {
        response.setHeader("Cache-Control", "no-store");
    }
    // chrome
    else if (userAgent.indexOf("Chrome") > -1) {
        response.setHeader("Cache-Control", "no-store");
    }
    // other browser
    else {
        response.setHeader("Cache-Control", "no-cache");
    }

    response.sendRedirect("/");
%>
