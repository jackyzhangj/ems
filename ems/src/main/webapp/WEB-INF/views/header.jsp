<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="navbar navbar-fixed-top bs-docs-nav" id="top" role="banner">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar"
				aria-controls="bs-navbar" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="/ems/home" class="navbar-brand">设备管理系统</a>
		</div>
		<nav id="bs-navbar" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">设备管理<span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li><a href="#">录入设备</a></li>
					<li><a href="#">状态监测</a></li>
					<li><a href="#">报警管理</a></li>
				</ul></li>
			<li><a href="#">台账管理</a></li>
			<li><a href="/ems/log">日志管理</a></li>
			<li><a href="/ems/authority">权限管理</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">网络控制台<span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li><a href="#">网络连接</a></li>
					<li><a href="#">拓扑</a></li>
					<li><a href="#">网络信息</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;${user.username}</a></li>
			<li><a href="/ems/exit">退出</a></li>
		</ul>
		</nav>
	</div>
	</header>
</body>
</html>