<?xml version="1.0" encoding="UTF-8" ?>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../resources/css/main.css" rel="stylesheet" type="text/css"/>
<title><spring:message code="page.title.user.registration" /></title>
</head>
<body>
<div id="container">
<div id="header">
	<%@include file="../header.jsp" %>
</div>
<div id="menu">
	<%@include file="../menu.jsp" %>
</div>
<div id="content">
<h2><spring:message code="page.title.user.registration" /></h2>
<p>
<c:if test="${success-msg != ''}">
	<span class="success"><spring:message code="message.user.success.register" /></span>
</c:if>
<c:if test="${error-msg != ''}">
	<span class="error"><spring:message code="message.user.invalid.register" /></span>
</c:if>
</p>
<p>
<form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/register.html">
<table>
<tbody>
	<tr>
		<td><spring:message code="user.registration.email" /></td>
		<td><form:input path="email" /></td>
	</tr>
	<tr>
		<td><spring:message code="user.registration.password" /></td>
		<td><form:password path="password" /></td>
	</tr>
	<tr>
		<td><input type="submit" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>
</p>
</div>
<div id="footer">
	<%@include file="../footer.jsp" %>
</div>
</div>

</body>
</html>