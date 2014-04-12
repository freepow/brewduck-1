<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/common/include/full_content_header.jsp" %>
 <decorator:body />

<decorator:getProperty property="page.local_script"></decorator:getProperty>
