<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/pages/common.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title>校园修缮系统</title>
		<meta charset="utf-8">
		<meta http-equiv="keywords" content="校园修缮系统">
		<meta http-equiv="description" content="校园修缮系统">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>" type="image/x-icon"/>
		
		<link rel="stylesheet" href="<c:url value='/css/模板.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/模板.js'/>"></script>
	</head>
	<body>
	<h1>
	异常原因：${message}
	</h1>
	</body>
</html>