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
		background: #f8fafc !important;
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

	/* 表单容器 */
	#add-container {
		background: #f8fafc !important;
		padding: 20px !important;
		min-height: calc(100vh - 100px) !important;
		display: flex !important;
		align-items: flex-start !important;
		justify-content: center !important;
		position: relative !important;
		z-index: 1 !important;
	}

	/* 表单主体 */
	#addOrUpdateForm {
		max-width: 900px !important;
		width: 100% !important;
		text-align: center !important;
		margin: 20px auto !important;
		background: #ffffff !important;
		padding: 30px 40px !important;
		border-radius: 12px !important;
		box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08) !important;
		border: none !important;
		position: relative !important;
		overflow: visible !important;
	}

	/* 隐藏原来的装饰条 */
	#addOrUpdateForm::before {
		display: none !important;
	}

	/* 隐藏原来的 ::after 伪元素 */
	#addOrUpdateForm::after {
		display: none !important;
	}

	/* 标题样式 */
	.form-title {
		text-align: center !important;
		font-size: 24px !important;
		font-weight: 700 !important;
		color: #0f172a !important;
		margin: 0 0 30px 0 !important;
		letter-spacing: 1px !important;
		display: block !important;
		width: 100% !important;
	}

	/* 表单布局 - 垂直排列 */
	#addOrUpdateForm form {
		display: flex !important;
		flex-direction: column !important;
		gap: 0 !important;
	}

	/* 表单项 - 垂直排列 */
	.form-item {
		margin: 0 0 20px 0 !important;
		position: relative !important;
		width: 100% !important;
		display: flex !important;
		align-items: center !important;
	}

	.form-item:last-of-type {
		margin-bottom: 30px !important;
	}

	.form-item label {
		display: block !important;
		color: #334155 !important;
		font-weight: 600 !important;
		font-size: 15px !important;
		margin-bottom: 0 !important;
		letter-spacing: 0.5px !important;
		width: 120px !important;
		min-width: 120px !important;
		text-align: right !important;
		line-height: 40px !important;
		padding: 0 12px 0 0 !important;
	}

	.form-item label::before {
		display: none !important;
	}

	.form-item .form-control {
		width: 100% !important;
		max-width: 450px !important;
		border: 1px solid #e2e8f0 !important;
		border-radius: 8px !important;
		padding: 0 14px !important;
		font-size: 15px !important;
		transition: all 0.2s ease !important;
		background: #f8fafc !important;
		height: 42px !important;
		line-height: 42px !important;
		margin: 0 !important;
		box-shadow: none !important;
	}

	.form-item .form-control:focus {
		border-color: #3b82f6 !important;
		box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15) !important;
		outline: none !important;
		background: #ffffff !important;
		transform: none !important;
	}

	.form-item .form-control::placeholder {
		color: #9ca3af !important;
	}

	/* 按钮容器 */
	.form-btn {
		margin-top: 30px !important;
		margin-bottom: 0 !important;
		text-align: center !important;
		display: flex !important;
		gap: 16px !important;
		justify-content: center !important;
		align-items: center !important;
		width: 100% !important;
		padding-top: 20px !important;
		border-top: 1px solid #f1f5f9 !important;
	}

	/* 提交按钮 */
	.btn-add {
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%) !important;
		border: none !important;
		border-radius: 8px !important;
		padding: 0 40px !important;
		height: 42px !important;
		line-height: 42px !important;
		font-size: 15px !important;
		font-weight: 600 !important;
		color: #ffffff !important;
		cursor: pointer !important;
		transition: all 0.2s ease !important;
		box-shadow: none !important;
		min-width: 120px !important;
		letter-spacing: 0.5px !important;
		display: inline-flex !important;
		align-items: center !important;
		justify-content: center !important;
		position: relative !important;
		overflow: visible !important;
	}

	.btn-add::before {
		display: none !important;
	}

	.btn-add:hover {
		transform: translateY(-1px) !important;
		box-shadow: 0 4px 12px rgba(59, 130, 246, 0.35) !important;
	}

	.btn-add:active {
		transform: translateY(0) !important;
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
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%) !important;
		border-radius: 50% !important;
		width: 50px !important;
		height: 50px !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		color: #ffffff !important;
		box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3) !important;
		transition: all 0.3s ease !important;
	}

	.back-to-top:hover {
		transform: translateY(-3px) !important;
		box-shadow: 0 6px 16px rgba(59, 130, 246, 0.4) !important;
	}

	/* 响应式设计 */
	@media (max-width: 768px) {
		#add-container {
			padding: 20px 15px !important;
		}
		#addOrUpdateForm {
			padding: 30px 20px !important;
		}
		.form-item {
			flex-direction: column !important;
			align-items: flex-start !important;
		}
		.form-item label {
			width: 100% !important;
			text-align: left !important;
			margin-bottom: 8px !important;
		}
		.form-item .form-control {
			width: 100% !important;
			max-width: none !important;
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
				<h2 class="form-title">🔒 修改密码</h2>
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>原密码</label>
					<input id="oldPassword" name="oldPassword" type="password" class="form-control" placeholder="原密码">
				</div>
				<div class="form-item">
					<label>新密码</label>
					<input id="newPassword" name="newPassword" type="password" class="form-control" placeholder="新密码">
				</div>
				<div class="form-item">
					<label>确认密码</label>
					<input id="confirmPassword" type="password" name="confirmPassword" class="form-control" placeholder="确认密码">
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
	<%@ include file="../../static/md5.js"%>
		var tableName = "xiugaimima";
		var pageType = "add-or-update";
		var updateId = "";
		var password = '';
		var accountTableName = ''

		var ruleForm = {};


		// 表单提交
		function submit() {
			if (validform() == true) {
				if(password == $('#oldPassword').val()){
					httpJson(accountTableName + "/update","POST",{
						id:updateId,
						mima: $('#newPassword').val(),
						password: $('#newPassword').val()
					},(res)=>{
						if(res.code == 0){
							window.location.href = '../../login.jsp';
							alert('修改成功，请重新登陆');
						}
					});
				}else{
					alert('原密码输入错误')
				}
			} else {
				alert("表单未填完整或有错误");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					oldPassword : {
						required : true,
					},
					newPassword : {
						required : true,
					},
					confirmPassword : {
						required : true,
						equalTo: "#newPassword",
					},
				},
				messages : {
					oldPassword : {
						required : "原密码不能为空",
					},
					newPassword : {
						required : "新密码不能为空",
					},
					confirmPassword : {
						required : "确认密码不能为空",
						equalTo: "两次密码输入不一致",
					},
				}
			}).form();
		}

		function getId() {
			var userName = window.sessionStorage.getItem('username')
			accountTableName = window.sessionStorage.getItem('accountTableName')
			http(accountTableName+'/session','GET',{},(res)=>{
				if(res.code == 0){
					updateId = res.data.id;
					if(res.data != null && res.data.mima != null && res.data.mima != ''){
						password = res.data.mima;
					} else if(res.data != null && res.data.password != null && res.data.password != ''){
						password = res.data.password;
					}

				}
			});
		}
		$(document).ready(function() {
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置导航栏菜单
			setMenu();
			getId();
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
			<%@ include file="../../static/myInfo.js"%>
		});
		// 用户登出
	<%@ include file="../../static/logout.jsp"%>

	</script>
</body>

</html>
