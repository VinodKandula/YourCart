<?xml version="1.0" encoding="UTF-8" ?>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../../resources/css/main.css" rel="stylesheet" type="text/css" />
<title><spring:message code="page.title.shop.edit" /></title>
</head>
<body>
<div id="container">
	<div id="header">
		<%@include file="../header.jsp"%>
	</div>
	<div id="menu">
		<%@include file="../menu.jsp"%>
	</div>
	<div id="content">
		<h2>
			<spring:message code="page.title.shop.edit" />
		</h2>
		<p>Здесь можно внести изменения в ваш магазин.</p>
		<p><span class="success">${success_msg}</span></p>
		<form:form method="PUT" commandName="shopDTO"
			action="${pageContext.request.contextPath}/shop/edit.html">
			<table>
				<form:hidden path="id" />
				<tbody>
					<tr>
						<td>Имя:</td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td>Категория:</td>
						<td>
						<form:select path="category">
							<form:option value="cloth">Одежда</form:option>
							<form:option value="cosmetics">Косметика</form:option>
							<form:option value="food">Еда</form:option>
							<form:option value="chemistry">Бытовая Химия</form:option>
						</form:select>					
						</td>
					</tr>
					<tr>
						<td>Тип:</td>
						<td>
							<form:radiobutton path="type" value="internet" />Интернет<br/>
							<form:radiobutton path="type" value="real" />Реальный<br/>
							<form:radiobutton path="type" value="real_internet" />Комбо<br/>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="Редактировать" /></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</form:form>

	</div>
	<div id="footer">
		<%@include file="../footer.jsp"%>
	</div>
</div>
</body>
</html>