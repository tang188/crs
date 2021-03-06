<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<%@ include file="/WEB-INF/pages/admin/pageHeader.jsp"%>
	<%@ include file="/WEB-INF/pages/admin/pageMenu.jsp"%>

<% String s=request.getParameter("sid"); %>
	<div class="content">
		<div class="mainbody">
			<form action="/admin/changeStudent.do?sid=<%=s%>" method="post">
				<div>
					姓名：<input type="text" name="name">
				</div>
				<div>
					密码：<input type="text" name="password">
				</div>
				<div>
					电话：<input type="tel" name="tel">
				</div>
				<div>
					<label> 性别：<input type="radio" name="sex" id="male"
						value="1" checked> 男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="sex" id="female" value="2"> 女
					</label>
				</div>
				<div>
					年龄：<input type="number" name="age">
				</div>
				<div>
					学院：<input type="text" name="dept">
				</div>
				<div>
					专业：<input type="text" name="specialty">
				</div>
				<div>
					班级：<input type="text" name="classNo">
				</div>
				<div>
					住址：<input type="text" name="addr">
				</div>
				<br>
				<button type="submit">提交</button>
				<button type="reset">重置</button>
			</form>
		</div>
	</div>

	<%@ include file="/WEB-INF/pages/pageBottom.jsp"%>
</body>
</html>