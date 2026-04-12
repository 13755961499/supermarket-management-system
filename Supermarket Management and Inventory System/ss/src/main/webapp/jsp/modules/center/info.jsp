<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
	<!-- ... existing code ... -->
</head>
<!-- ... existing code ... -->
<style>
	/* 修复下拉菜单问题 */
	.dropdown-menu {
		position: absolute !important;
		top: 100% !important;
		left: 0 !important;
		z-index: 1000 !important;
		display: none !important;
		min-width: 160px !important;
		padding: 8px 0 !important;
		margin: 0 !important;
		font-size: 14px !important;
		background: #1e293b !important;
		border: 1px solid rgba(255,255,255,0.1) !important;
		border-radius: 8px !important;
		box-shadow: 0 8px 24px rgba(0,0,0,0.3) !important;
		overflow: hidden !important;
	}

	.dropdown-item {
		display: block !important;
		width: 100% !important;
		padding: 10px 20px !important;
		color: #e2e8f0 !important;
		font-weight: 500 !important;
		text-align: left !important;
		text-decoration: none !important;
		white-space: nowrap !important;
		background: transparent !important;
		border: none !important;
		cursor: pointer !important;
		transition: all 0.2s ease !important;
	}

	.dropdown-item:hover {
		background: rgba(59, 130, 246, 0.2) !important;
		color: #ffffff !important;
	}

	.nav-item.dropdown:hover .dropdown-menu {
		display: block !important;
	}

	/* 清除body伪元素遮挡 */
	body::before,
	body::after {
		display: none !important;
	}

	body {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
		margin: 0 !important;
		font-family: 'Roboto', 'Microsoft YaHei', sans-serif !important;
		min-height: 100vh !important;
		position: relative !important;
	}

	/* 确保菜单层级最高且可点击 */
	#menu-container,
	#navUl,
	.nav-item,
	.dropdown,
	.dropdown-toggle,
	#breadcrumb-container {
		position: relative !important;
		z-index: 999 !important;
		pointer-events: auto !important;
	}

	/* 菜单导航栏 */
	#menu-container,
	#menu-container.navbar,
	div#menu-container {
		background: rgba(255, 255, 255, 0.95) !important;
		backdrop-filter: blur(10px) !important;
		border-bottom: 1px solid rgba(255, 255, 255, 0.3) !important;
		box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1) !important;
	}
	#menu-container .nav-item > a,
	#menu-container .nav-item a.nav-link {
		color: #4b5563 !important;
		padding: 16px 28px !important;
		font-size: 15px !important;
		font-weight: 600 !important;
	}
	#menu-container .nav-item > a:hover,
	#menu-container .nav-item a.nav-link:hover {
		color: #667eea !important;
		background: rgba(102, 126, 234, 0.1) !important;
	}

	/* 面包屑导航 */
	#breadcrumb-container {
		background: rgba(255, 255, 255, 0.9) !important;
		backdrop-filter: blur(10px) !important;
		border-bottom: 1px solid rgba(255, 255, 255, 0.3) !important;
		padding: 16px 30px !important;
	}
	#breadcrumb-container .breadcrumb-title {
		color: #1f2937 !important;
		font-size: 20px !important;
		font-weight: 700 !important;
		margin: 0 !important;
	}
	#breadcrumb-container .breadcrumb-list {
		margin: 5px 0 0 15px !important;
	}

	/* 表单容器 */
	#add-container {
		background: transparent !important;
		padding: 50px 30px !important;
		min-height: calc(100vh - 200px) !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		position: relative !important;
		z-index: 1 !important;
	}

	/* 表单主体 */
	#addOrUpdateForm {
		max-width: 600px !important;
		width: 100% !important;
		text-align: center !important;
		margin: 0 auto !important;
		background: rgba(255, 255, 255, 0.98) !important;
		backdrop-filter: blur(20px) !important;
		padding: 60px !important;
		border-radius: 24px !important;
		box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3), 0 0 0 1px rgba(255, 255, 255, 0.5) inset !important;
		border: none !important;
		position: relative !important;
		overflow: visible !important;
	}

	/* 顶部装饰条 */
	#addOrUpdateForm::before {
		content: '' !important;
		position: absolute !important;
		top: 0 !important;
		left: 0 !important;
		right: 0 !important;
		height: 6px !important;
		background: linear-gradient(90deg, #667eea 0%, #764ba2 50%, #f093fb 100%) !important;
		border-radius: 24px 24px 0 0 !important;
	}

	/* 隐藏原来的 ::after 伪元素 */
	#addOrUpdateForm::after {
		display: none !important;
	}

	/* 标题样式 */
	.form-title {
		text-align: center !important;
		font-size: 28px !important;
		font-weight: 700 !important;
		color: #1f2937 !important;
		margin: 20px 0 40px 0 !important;
		letter-spacing: 1px !important;
		display: block !important;
	}

	/* 表单布局 - 垂直排列 */
	#addOrUpdateForm form {
		display: flex !important;
		flex-direction: column !important;
		gap: 0 !important;
	}

	/* 表单项 - 垂直排列 */
	.form-item {
		margin-bottom: 28px !important;
		position: relative !important;
		width: 100% !important;
	}

	.form-item:last-of-type {
		margin-bottom: 36px !important;
	}

	.form-item label {
		display: flex !important;
		align-items: center !important;
		gap: 8px !important;
		color: #374151 !important;
		font-weight: 600 !important;
		font-size: 15px !important;
		margin-bottom: 12px !important;
		letter-spacing: 0.5px !important;
	}
	.form-item label::before {
		content: '' !important;
		display: inline-block !important;
		width: 4px !important;
		height: 18px !important;
		background: linear-gradient(180deg, #667eea 0%, #764ba2 100%) !important;
		border-radius: 2px !important;
	}
	.form-item .form-control {
		width: 100% !important;
		border: 2px solid #e5e7eb !important;
		border-radius: 12px !important;
		padding: 16px 20px !important;
		font-size: 15px !important;
		transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
		background: #fafafa !important;
	}
	.form-item .form-control:focus {
		border-color: #667eea !important;
		box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.15), 0 4px 12px rgba(102, 126, 234, 0.1) !important;
		outline: none !important;
		background: #ffffff !important;
		transform: translateY(-2px) !important;
	}
	.form-item .form-control::placeholder {
		color: #9ca3af !important;
	}

	/* 按钮容器 */
	.form-btn {
		margin-top: 40px !important;
		margin-bottom: 0 !important;
		text-align: center !important;
		display: flex !important;
		gap: 16px !important;
		justify-content: center !important;
		align-items: center !important;
	}

	/* 提交按钮 */
	.btn-add {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
		border: none !important;
		border-radius: 12px !important;
		padding: 16px 60px !important;
		font-size: 16px !important;
		font-weight: 700 !important;
		color: #ffffff !important;
		cursor: pointer !important;
		transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
		box-shadow: 0 8px 24px rgba(102, 126, 234, 0.4) !important;
		letter-spacing: 1px !important;
		display: inline-flex !important;
		align-items: center !important;
		justify-content: center !important;
		position: relative !important;
		overflow: hidden !important;
	}
	.btn-add::before {
		content: '✓ ' !important;
		margin-right: 8px !important;
		font-size: 18px !important;
	}
	.btn-add:hover {
		transform: translateY(-3px) !important;
		box-shadow: 0 12px 32px rgba(102, 126, 234, 0.5) !important;
	}
	.btn-add:active {
		transform: translateY(-1px) !important;
	}

	/* 错误提示 */
	.error {
		color: #ef4444 !important;
		font-size: 13px !important;
		margin-top: 8px !important;
		display: flex !important;
		align-items: center !important;
		gap: 6px !important;
		font-weight: 500 !important;
	}
	.error::before {
		content: '⚠️' !important;
		font-size: 14px !important;
	}

	/* 返回顶部按钮 */
	.back-to-top {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
		border-radius: 50% !important;
		width: 50px !important;
		height: 50px !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		color: #ffffff !important;
		box-shadow: 0 8px 24px rgba(102, 126, 234, 0.4) !important;
		transition: all 0.3s ease !important;
	}
	.back-to-top:hover {
		transform: translateY(-5px) scale(1.1) !important;
		box-shadow: 0 12px 32px rgba(102, 126, 234, 0.5) !important;
	}

	/* 响应式设计 */
	@media (max-width: 768px) {
		#add-container {
			padding: 20px 15px !important;
		}
		#addOrUpdateForm {
			padding: 40px 30px !important;
		}
		#addOrUpdateForm::after {
			font-size: 22px !important;
		}
		.form-btn {
			flex-direction: column !important;
			gap: 12px !important;
		}
		.btn-add {
			width: 100% !important;
		}
	}
</style>
<body>
<!-- ... existing code ... -->


	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>

		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-horizontal" id="navUl">

			</ul>
		</div>
		<!-- /Menu -->


		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<h2 class="form-title">👤 修改个人信息</h2>
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>用户名</label>
					<input id="username" name="username" class="form-control" placeholder="用户名">
				</div>
				<div class="form-btn">
					<button id="submitBtn" type="button" class="btn btn-primary btn-add">提交</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->

	<%@ include file="../../static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>

	<%@ include file="../../utils/menu.jsp"%>

	<%@ include file="../../static/setMenu.js"%>

	<%@ include file="../../utils/baseUrl.jsp"%>
		var tableName = "";
		var pageType = "add-or-update";
		var updateId = "";
		var accountTableName = ''

		var ruleForm = {};

		// 表单提交
		function submit() {
			if (validform() == true) {

				$.ajax({
					type : "POST",
					url : baseUrl + accountTableName + "/update",
					contentType : "application/json",
					data : JSON.stringify({id: updateId,username: $('#username').val()}),
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							alert("修改成功");
							window.sessionStorage.setItem('username',$('#username').val())
							window.location.reload();
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg)
						}
					},
				});
			} else {
				alert("表单未填完整或有错误");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					username: {
						required : true,
					},
				},
				messages : {
					username: {
						required : "用户名不能为空",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation() {
			jQuery.validator
					.addMethod(
							"isPhone",
							function(value, element) {
								var length = value.length;
								var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
								return this.optional(element)
										|| (length == 11 && mobile.test(value));
							}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element)
						|| idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}

		function getId() {
			var userName = window.sessionStorage.getItem('username')
			accountTableName = window.sessionStorage.getItem('accountTableName')
			$.ajax({
				type : "GET",
				url : baseUrl + accountTableName + "/page",
				data : {
					username : userName
				},
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					if (res.code == 0) {
						updateId = res.data.list[0].id
						$('#username').val(res.data.list[0].username)
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
		}

		$(document).ready(function() {
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置导航栏菜单
			setMenu();

			//添加表单校验信息文本
			addValidation();
			getId();
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
		});
		// 用户登出
	<%@ include file="../../static/logout.jsp"%>

	</script>
</body>

</html>
