<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/toastr.min.css"/>" />
</head>
<body>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header text-center">
				<h1 class="modal-title">
					<small>用户登录</small>
				</h1>
			</div>
			<form id="myForm">
				<div class="modal-body">

					<div class="input-group">
						<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span> <input type="text"
							id="username" name="username" class="form-control" placeholder="用户名" required="required" autofocus="autofocus"
							maxLength="8">
					</div>

					<div class="input-group">
						<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span> <input type="password"
							id="password" name="password" class="form-control" placeholder="密码 " required="required" maxLength="20">
					</div>
					<div class="remember">
						<label class="checkbox"> <input id="rememberPwd" name="rememberPwd" type="checkbox" value="true">记住密码
						</label>
					</div>

				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success btn-sm">登录</button>
				</div>
			</form>
		</div>
	</div>

	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/resources/js/toastr.min.js"/>"></script>
	<script src="<c:url value="/resources/js/login.js"/>"></script>
</body>
</html>