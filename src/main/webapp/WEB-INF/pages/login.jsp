<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="keywords" content="校园维修系统">
<meta http-equiv="description" content="校园维修系统">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/css/login.css'/>">
<script type="text/javascript" src="<c:url value='/js/login.js'/>"></script>
<title>校园修缮系统</title>
</head>
<body>
<!-- 	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel"> -->
		<div class="modal-dialog" >
			<div class="modal-content" style="min-height: 480px;" >
				<div class="modal-header">
					<h4 class="modal-title text-center" id="myModalLabel">登录</h4>
				</div>
				<div class="modal-body">
					<img src="/images/head portrait.jpg"
						class="img-responsive center-block" alt="register head portrait">
					<form class="form-horizontal" action="/login/login.do"
						method="post">
						<div class="form-group">
							<div class="col-xs-1 col-xs-offset-3 text-right">
								
							</div>
							<div class="col-xs-6">账号
								<input type="text" class="form-control" id="account"
									name="account">
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-1 col-xs-offset-3 text-right">
								
							</div>
							<div class="col-xs-6">密码
								<input type="password" class="form-control"
									id="login_password" name="password">
							</div>
						</div>
						<div class="radio col-xs-4 col-xs-offset-4">
							<label> <input type="radio" name="login_radios"
								id="loginRadios1" value="1" checked> 学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <input type="radio" name="login_radios"
								id="loginRadios2" value="2"> 管理员
							</label> <br>							
							<span style="color: red">${msg }</span>
							
							
						</div>
						<div class="col-xs-4 col-xs-offset-4 nologin">
							<a href="<c:url value='/page/findPassword.do'/>">忘记密码</a> <a
								href="<c:url value='/page/register.do'/>"
								class="col-xs-offset-3">快速注册</a>
						</div>
						<button class="btn btn-default col-xs-3 col-xs-offset-5"
							type="submit">登录</button>
					</form>
				</div>
			</div>
		</div>
</body>
</html>