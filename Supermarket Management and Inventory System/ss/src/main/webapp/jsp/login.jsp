<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>登陆</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>

	<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- Fav and touch icons -->
	<link rel="shortcut icon"
		  href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
</head>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}

	html, body {
		width: 100%;
		height: 100%;
		font-family: 'Segoe UI', 'Microsoft YaHei', sans-serif;
	}

	.content {
		background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
		display: flex;
		width: 100%;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		overflow: hidden;
	}

	.content::before {
		content: '';
		position: absolute;
		width: 200%;
		height: 200%;
		background: radial-gradient(circle, rgba(59, 130, 246, 0.05) 1px, transparent 1px);
		background-size: 50px 50px;
		animation: moveGrid 20s linear infinite;
	}

	@keyframes moveGrid {
		0% { transform: translate(0, 0); }
		100% { transform: translate(50px, 50px); }
	}

	#loginForm {
		border: 2px solid #2d3748;
		border-radius: 20px;
		padding: 60px 80px;
		box-shadow: 0 20px 60px rgba(0,0,0,0.5);
		margin: 0;
		background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
		width: 1200px;
		min-height: auto;
		position: relative;
		z-index: 1;
		animation: slideIn 0.6s ease-out;
	}

	@keyframes slideIn {
		from {
			opacity: 0;
			transform: translateY(-30px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	#loginForm .title {
		border: none;
		border-radius: 16px;
		padding: 35px 0;
		margin: 0 auto 50px;
		color: #ffffff;
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
		width: 100%;
		font-size: 42px;
		font-weight: 700;
		line-height: 1.2;
		text-align: center;
		box-shadow: 0 8px 24px rgba(59, 130, 246, 0.4);
		letter-spacing: 2px;
	}

	#loginForm .list-item {
		margin: 0 auto 35px;
		display: flex;
		width: 100%;
		align-items: center;
		flex-wrap: wrap;
	}

	#loginForm .list-item .item-label {
		color: #94a3b8;
		width: 120px;
		font-size: 16px;
		line-height: 56px;
		font-weight: 500;
	}

	#loginForm .list-item>input {
		padding: 0 24px;
		color: #e2e8f0;
		width: 100%;
		font-size: 16px;
		border: 2px solid #334155;
		border-radius: 12px;
		height: 56px;
		background: #1e293b;
		outline: none;
		transition: all 0.3s ease;
	}

	#loginForm .list-item>input:focus {
		border-color: #3b82f6;
		background: #0f172a;
		box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
	}

	#loginForm .list-item>input::placeholder {
		color: #64748b;
		font-size: 15px;
	}

	#loginForm .list-code {
		margin: 35px auto;
		display: flex;
		width: 100%;
		align-items: center;
		flex-wrap: wrap;
	}

	#loginForm .list-code input {
		padding: 0 24px;
		outline: none;
		margin: 0 20px 0 0;
		color: #e2e8f0;
		width: calc(100% - 140px);
		font-size: 16px;
		border: 2px solid #334155;
		border-radius: 12px;
		height: 56px;
		background: #1e293b;
		transition: all 0.3s ease;
	}

	#loginForm .list-code input:focus {
		border-color: #3b82f6;
		background: #0f172a;
		box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
	}

	#loginForm .list-code .nums {
		cursor: pointer;
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
		display: flex;
		width: 120px;
		border: none;
		border-radius: 12px;
		justify-content: center;
		align-items: center;
		height: 56px;
		color: #ffffff;
		font-weight: 600;
		letter-spacing: 4px;
		font-size: 24px;
		box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
	}

	#loginForm .form-group-r {
		margin: 35px auto;
		width: 100%;
		display: flex;
		justify-content: center;
		gap: 40px;
	}

	#loginForm .form-group-r .checkbox {
		display: inline-flex;
		align-items: center;
		cursor: pointer;
		transition: all 0.3s ease;
		padding: 12px 24px;
		border-radius: 12px;
	}

	#loginForm .form-group-r .checkbox:hover {
		background: rgba(59, 130, 246, 0.1);
	}

	#loginForm .form-group-r .checkbox input {
		margin: 0 10px 0 0;
		width: 20px;
		height: 20px;
		cursor: pointer;
		accent-color: #3b82f6;
	}

	#loginForm .form-group-r .checkbox.active {
		background: rgba(59, 130, 246, 0.15);
	}

	#loginForm .form-group-r .checkbox.active input {
		margin: 0 10px 0 0;
	}

	#loginForm .form-group-r .checkbox label {
		color: #94a3b8;
		font-size: 16px;
		font-weight: 500;
		cursor: pointer;
		user-select: none;
	}

	#loginForm .form-group-r .checkbox.active label {
		color: #3b82f6;
		font-weight: 600;
	}

	#loginForm .form-group-l-r {
		margin: 45px auto 0;
		background: none;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		flex-wrap: wrap;
		gap: 20px;
	}

	#loginForm .form-group-l-r .btn-login {
		border: none;
		cursor: pointer;
		padding: 0;
		margin: 0;
		color: #ffffff;
		letter-spacing: 3px;
		font-size: 20px;
		font-weight: 600;
		border-radius: 14px;
		box-shadow: 0 8px 24px rgba(59, 130, 246, 0.4);
		outline: none;
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
		width: 100%;
		position: relative;
		text-align: center;
		min-width: auto;
		height: 60px;
		transition: all 0.3s ease;
		overflow: hidden;
	}

	#loginForm .form-group-l-r .btn-login::before {
		content: '';
		position: absolute;
		top: 0;
		left: -100%;
		width: 100%;
		height: 100%;
		background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
		transition: left 0.5s ease;
	}

	#loginForm .form-group-l-r .btn-login:hover {
		transform: translateY(-3px);
		box-shadow: 0 12px 32px rgba(59, 130, 246, 0.5);
	}

	#loginForm .form-group-l-r .btn-login:hover::before {
		left: 100%;
	}

	#loginForm .form-group-l-r .btn-register  {
		border: 2px solid #3b82f6;
		cursor: pointer;
		padding: 0 32px;
		margin: 0;
		color: #3b82f6;
		font-size: 16px;
		font-weight: 600;
		line-height: 52px;
		border-radius: 12px;
		box-shadow: 0 2px 8px rgba(0,0,0,0.2);
		outline: none;
		background: transparent;
		width: auto;
		height: 52px;
		transition: all 0.3s ease;
		text-decoration: none;
		display: inline-block;
	}

	#loginForm .form-group-l-r .btn-register:hover {
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
		color: #ffffff;
		transform: translateY(-2px);
		box-shadow: 0 6px 20px rgba(59, 130, 246, 0.4);
		border-color: transparent;
	}

	#loginForm .form-group-l-r .btn-forget  {
		border: 0;
		cursor: pointer;
		padding: 0;
		margin: 8px 0 0;
		color: #64748b;
		text-decoration: none;
		font-size: 15px;
		border-radius: 0;
		outline: none;
		background: none;
		width: 100%;
		text-align: right;
		height: 40px;
		transition: color 0.3s ease;
	}

	#loginForm .form-group-l-r .btn-forget:hover {
		color: #3b82f6;
	}
</style>
<body>

<div class="content">
	<div id="login-wrapper">
		<form id="loginForm" action="" method="post">
			<div class="title">超市采购与库存管理系统</div>
			<div class="list-item">
				<input type="text" id="username" name="username" placeholder="请输入用户名" class="form-control-i" required>
			</div>
			<div class="list-item">
				<input type="password" name="password" placeholder="请输入密码" class="form-control-i" required>
			</div>


			<div class="form-group-l-r">
				<button class="btn btn btn-primary btn-login" type="submit" onclick="login()">登录</button>
				<a class="btn-register" href="modules/jingli/register.jsp">经理注册</a>
				<a class="btn-register" href="modules/yuangong/register.jsp">员工注册</a>
			</div>
		</form>
	</div>
</div>

<!-- MAIN EFFECT -->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/preloader.js"></script>-->
<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/app.js"></script>-->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/load.js"></script>-->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/main.js"></script>-->
<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
<script type="text/javascript">

	<%@ include file="utils/menu.jsp"%>

	<%@ include file="utils/baseUrl.jsp"%>
	var role = "";
	var accountTableName = "";
	var codes = [{
		num: 1,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}, {
		num: 2,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}, {
		num: 3,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}, {
		num: 4,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}]

	//渲染角色选择
	function setRoleOption() {
		var box = document.createElement('div');
		box.setAttribute('class', 'form-group-r');
		var menuNum = 0;
		for (var i = 0; i < menus.length; i++) {
			if(menus[i].hasBackLogin=='是') {
				if(menuNum==0) {
					role = menus[i].roleName;
					$('#loginForm').attr('action', baseUrl + menus[i].tableName + '/login');
					accountTableName = menus[i].tableName;
				}
				menuNum++;
			}
		}
		if(menuNum>1) {
			role = '';
			$('#loginForm').attr('action', '');
			accountTableName = '';
			for (var i = 0; i < menus.length; i++) {
				if(menus[i].hasBackLogin=='是') {
					//console.log(menu[i].roleName)
					var div = document.createElement('div');
					div.setAttribute('class', 'checkbox');
					var label = document.createElement('label');
					//label.innerHTML = menus[i].roleName;
					var checkbox = document.createElement('input');
					checkbox.setAttribute('type', 'radio');
					checkbox.setAttribute('name', 'chk');
					checkbox.setAttribute('value', menus[i].roleName);
					var attr = "checkRole(" + "\'" + menus[i].roleName + "\',\'"
							+ menus[i].tableName + "\')";
					checkbox.setAttribute('onclick', attr);
					//label.setAttribute('class','checkbox inline');
					label.innerHTML = menus[i].roleName;
					div.appendChild(checkbox);
					div.appendChild(label);
					box.appendChild(div);
				}
			}
		}
		$('form .form-group-l-r').before(box);
	}
	function checkRole(roleName, tableName) {
		role = roleName;
		$('#loginForm').attr('action', baseUrl + tableName + '/login');
		accountTableName = tableName;
	}

	$('#login-wrapper').on('change', 'input[type=radio]', function () {
		$('#login-wrapper .form-group-r .checkbox').removeClass('active');
		$(this).parent().addClass('active');
	});

	function login() {

		$("#loginForm")
				.ajaxForm(
						function(res) {
							if (role == "" || role == null) {
								alert("请选择角色后再登录");
							} else {
								if (res.code == 0) {
									var username = $('#username').val();
									window.sessionStorage.setItem('accountTableName',accountTableName)
									window.sessionStorage.setItem('username',username);
									window.sessionStorage.setItem('token',
											res.token);
									window.sessionStorage.setItem('role',
											role);
									http(accountTableName+'/session','GET',{},(res2)=>{
										if(res2.code == 0){
											window.sessionStorage.setItem('userid',res2.data.id);
											window.location.href = "${pageContext.request.contextPath}/index.jsp";
										}
									});
								} else {
									alert(res.msg);
								}
							}

						});
	}
	function ready() {
		setRoleOption();
		//$('form').attr('action',baseUrl + 'users/login');
	}
	document.addEventListener("DOMContentLoaded", ready);

	function randomString() {
		var len = 4;
		var chars = [
			'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			'3', '4', '5', '6', '7', '8', '9'
		]
		var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
		var sizes = ['14', '15', '16', '17', '18']

		var output = []
		for (var i = 0; i < len; i++) {
			// 随机验证码
			var key = Math.floor(Math.random() * chars.length)
			codes[i].num = chars[key]
			// 随机验证码颜色
			var code = '#'
			for (var j = 0; j < 6; j++) {
				var key = Math.floor(Math.random() * colors.length)
				code += colors[key]
			}
			codes[i].color = code
			// 随机验证码方向
			var rotate = Math.floor(Math.random() * 30)
			var plus = Math.floor(Math.random() * 2)
			if (plus == 1) rotate = '-' + rotate
			codes[i].rotate = 'rotate(' + rotate + 'deg)'
			// 随机验证码字体大小
			var size = Math.floor(Math.random() * sizes.length)
			codes[i].size = sizes[size] + 'px'
		}
		var str = ''
		for(var i = 0;i<codes.length;i++) {
			str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
		}
		$('#nums').html('').append(str);
	}
	randomString();
</script>

</body>

</html>
