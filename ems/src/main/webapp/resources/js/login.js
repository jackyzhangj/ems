$("#myForm").submit(function(event) {
	$.ajax({
		type : "POST",
		url : "/ems/login",
		async : false,
		data : JSON.stringify({
			username : $("#username").val(),
			password : $("#password").val(),
			rememberPwd : $("#rememberPwd").val()
		}),
		contentType : 'application/json',
		success : function(result) {
			if (result.status == 'OK') {
				window.location.href = "/ems/home"
			} else {
				toastr.options.positionClass = "toast-top-center"
				toastr.error(result.errorMessage, '', {
					timeOut : 1000
				})
			}
		},
		error : function(e) {
			toastr.options.positionClass = "toast-top-center"
			toastr.error(JSON.stringify(e), '登录', {
				timeOut : 1000
			})
		}
	});
	return false;
});