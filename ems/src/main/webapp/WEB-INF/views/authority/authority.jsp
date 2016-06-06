<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<title>权限管理</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/toastr.min.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/master.css"/>" />
</head>
<body>
	<%-- Header section section --%>
	<%@ include file="../header.jsp"%>

	<%-- Main content section --%>
	<div id="wrap">
		<div id="main" class="container clear-top">
			<div style="border-bottom: 1px solid #eee; margin-bottom: 2px;">权限管理</div>

			<div class="row" style="margin: 0px;">
				<div class="col-xs-2" style="padding: 0px;">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">权限管理</h3>
						</div>
						<ul class="nav nav-pills nav-stacked">
							<c:if test="${type=='org'}">
								<li class="active"><a href="/ems/authority/org">&nbsp;&nbsp;&nbsp;&nbsp;组织机构</a></li>
							</c:if>
							<c:if test="${type!='org'}">
								<li><a href="/ems/authority/org">&nbsp;&nbsp;&nbsp;&nbsp;组织机构</a></li>
							</c:if>
							<c:if test="${type=='user'}">
								<li class="active"><a href="/ems/authority/user">&nbsp;&nbsp;&nbsp;&nbsp;用户管理</a></li>
							</c:if>
							<c:if test="${type!='user'}">
								<li><a href="/ems/authority/user">&nbsp;&nbsp;&nbsp;&nbsp;用户管理</a></li>
							</c:if>
							<c:if test="${type=='auth'}">
								<li class="active"><a href="/ems/authority/auth">&nbsp;&nbsp;&nbsp;&nbsp;用户权限管理</a></li>
							</c:if>
							<c:if test="${type!='auth'}">
								<li><a href="/ems/authority/auth">&nbsp;&nbsp;&nbsp;&nbsp;用户权限管理</a></li>
							</c:if>
							<c:if test="${type=='authset'}">
								<li class="active"><a href="/ems/authority/authset">&nbsp;&nbsp;&nbsp;&nbsp;用户权限设置</a></li>
							</c:if>
							<c:if test="${type!='authset'}">
								<li><a href="/ems/authority/authset">&nbsp;&nbsp;&nbsp;&nbsp;用户权限设置</a></li>
							</c:if>
							<c:if test="${type=='history'}">
								<li class="active"><a href="/ems/authority/history">&nbsp;&nbsp;&nbsp;&nbsp;历史曲线</a></li>
							</c:if>
							<c:if test="${type!='history'}">
								<li><a href="/ems/authority/history">&nbsp;&nbsp;&nbsp;&nbsp;历史曲线</a></li>
							</c:if>
							<c:if test="${type=='db'}">
								<li class="active"><a href="/ems/authority/db">&nbsp;&nbsp;&nbsp;&nbsp;数据库操作</a></li>
							</c:if>
							<c:if test="${type!='db'}">
								<li><a href="/ems/authority/db">&nbsp;&nbsp;&nbsp;&nbsp;数据库操作</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				<div class="col-xs-10" style="padding: 0px 20px;">
					<div class="row">
						<c:if test="${type=='org'}">
							<h3 class="text-center">组织机构</h3>
						</c:if>
						<c:if test="${type=='user'}">
							<h3 class="text-center">用户管理</h3>
						</c:if>
						<c:if test="${type=='auth'}">
							<h3 class="text-center">用户权限管理</h3>
						</c:if>
						<c:if test="${type=='authset'}">
							<h3 class="text-center">用户权限设置</h3>
						</c:if>
						<c:if test="${type=='history'}">
							<h3 class="text-center">历史曲线</h3>
						</c:if>
						<c:if test="${type=='db'}">
							<h3 class="text-center">数据库操作</h3>
						</c:if>
					</div>
					<c:if test="${type=='org'}">
						<div>
							<div class="btn-toolbar" role="toolbar"
								style="margin-bottom: 3px;">
								<div class="btn-group">
									<button type="button" class="btn btn-default"
										data-toggle="modal" data-target="#myModal">添加</button>
									<button type="button" class="btn btn-default"
										data-toggle="modal" data-target="#myModal">编辑</button>
									<button type="button" class="btn btn-default"
										data-toggle="modal" data-target="#myModal">删除</button>
									<%-- <%@ include file="edit.jsp"%> --%>
									<jsp:include page="edit.jsp" />
								</div>
							</div>
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>序号</th>
										<th>机构信息</th>
										<th>机构代码</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="width: 60px;">1</td>
										<td>计量部</td>
										<td>01</td>
									</tr>
									<tr>
										<td>2</td>
										<td>自动化院</td>
										<td>02</td>
									</tr>
									<tr>
										<td>3</td>
										<td>后勤部</td>
										<td>03</td>
									</tr>
								</tbody>
							</table>
						</div>
					</c:if>
					<c:if test="${type=='user'}">
						<div class="text-center">用户管理</div>
					</c:if>
					<c:if test="${type=='auth'}">
						<div class="text-center">用户权限管理</div>
					</c:if>
					<c:if test="${type=='authset'}">
						<div class="text-center">用户权限设置</div>
					</c:if>
					<c:if test="${type=='history'}">
						<div class="text-center">历史曲线</div>
					</c:if>
					<c:if test="${type=='db'}">
						<div class="text-center">数据库操作</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<%-- Footer section --%>
	<%@ include file="../footer.jsp"%>

	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/resources/js/toastr.min.js"/>"></script>
	<script src="<c:url value="/resources/js/common.js"/>"></script>
</body>
</html>