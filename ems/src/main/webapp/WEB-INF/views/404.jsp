<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>访问的页面不存在</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/error.css"/>" />
</head>
<body>
	<div id="container">
		<img class="png" src="<c:url value="/resources/images/404.png"/>" />
		<img class="png msg" src="<c:url value="/resources/images/404_msg.png"/>" />
		<p>
			<a href="/ems/home"><img class="png"
				src="<c:url value="/resources/images/404_to_index.png"/>" /></a>
		</p>
	</div>
	<div id="cloud" class="png"></div>
</body>
</html>