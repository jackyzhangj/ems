<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<title>权限管理</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/toastr.min.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/master.css"/>" />
</head>
<body>
	<%-- Header section section --%>
	<%@ include file="header.jsp"%>

	<%-- Main content section --%>
	<div id="wrap">
		<div id="main" class="container clear-top">
			<div>
				<ol class="breadcrumb">
					<li><a href="#">权限管理</a></li>
				</ol>
				<div>具体内容</div>
			</div>
		</div>
	</div>

	<%-- Footer section --%>
	<%@ include file="footer.jsp"%>

	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/resources/js/toastr.min.js"/>"></script>
</body>
</html>