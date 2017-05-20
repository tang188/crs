<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="keywords" content="校园维修系统">
<meta http-equiv="description" content="校园维修系统">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/css/studentMain.css'/>">
<link rel="stylesheet" href="<c:url value='/css/pageContent.css'/>">
<%-- <script type="text/javascript" src="<c:url value='/js/noticeList.js'/>"></script>
 --%>
<title>校园修缮系统</title>

</head>
<body>
<%@ include file="/WEB-INF/pages/student/pageHeader.jsp" %>
<%@ include file="/WEB-INF/pages/student/pageMenu.jsp" %>

	
<div class="content">
	<div class="mainbody">
		<form action="/student/changePassword.do" method="post">
			<div>
			原密码：<input type="password" name="oldPassword">
			</div>
			
			<div>
			新密码：<input type="password" name="newPassword">
			</div>
			<div>
			重复密码：<input type="password" name="valiPassword">
			</div>
			<span style="color: red">${error}</span>
			<br>
			<button type="submit">提交</button>
			<button type="reset">取消</button>
		</form>
	  
	</div>
	
</div>

<%@ include file="/WEB-INF/pages/pageBottom.jsp" %>
</body>
</html>