<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title text-center" id="myModalLabel">添加机构</h4>
				</div>
				<form class="form-horizontal" role="form">
					<div class="modal-body">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">机构信息</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname"
									placeholder="请输入机构信息">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">机构代码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									placeholder="请输入机构代码">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default col-sm-offset-9"
							data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary col-sm-offset-11">确定</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>