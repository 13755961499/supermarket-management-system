<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#top-container {
		border-radius: 0;
		box-shadow: 0 4px 20px rgba(0,0,0,0.5);
		padding: 0 30px;
		z-index: 11;
		top: 0;
		left: 0;
		background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
		display: flex;
		width: 100%;
		justify-content: space-between;
		position: fixed;
		height: 70px;
	}

	#top-container .top-logo {
		color: #e2e8f0;
		background: none;
		width: 250px;
		font-size: 16px;
		height: 64px;
	}

	#top-container .top-title {
		margin: 0 0 0 20px;
		color: #e2e8f0;
		background: none;
		font-weight: 600;
		width: auto;
		font-size: 22px;
		line-height: 70px;
		position: relative;
		text-decoration: none;
		letter-spacing: 1px;
		text-shadow: 0 2px 10px rgba(59, 130, 246, 0.3);
		transition: all 0.3s ease;
	}

	#top-container .top-title:hover {
		color: #3b82f6;
	}

	#top-container .top-nav {
		padding: 0;
		margin: 0;
		background: none;
		display: flex;
		width: auto;
		justify-content: flex-end;
		align-items: center;
		list-style: none;
		text-align: right;
		height: 100%;
	}

	#top-container .top-nav .nav-item-full {
		padding: 0;
		margin: 0 5px;
		line-height: 70px;
		position: relative;
		height: 100%;
	}

	#top-container .top-nav .nav-item-full a {
		cursor: pointer;
		padding: 0;
		text-decoration: none;
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100%;
	}

	#top-container .top-nav .nav-item-full a span {
		border-radius: 10px;
		padding: 10px;
		margin: 0;
		color: #94a3b8;
		background: rgba(59, 130, 246, 0.1);
		font-size: 18px;
		transition: all 0.3s ease;
		border: 1px solid transparent;
	}

	#top-container .top-nav .nav-item-full a:hover span {
		color: #3b82f6;
		background: rgba(59, 130, 246, 0.2);
		border-color: rgba(59, 130, 246, 0.3);
		box-shadow: 0 0 15px rgba(59, 130, 246, 0.3);
	}

	#top-container .top-nav .nav-item {
		padding: 0;
		margin: 0 5px;
		line-height: 70px;
		position: relative;
		height: 100%;
	}

	#top-container .top-nav .nav-item>a {
		cursor: pointer;
		padding: 0;
		text-decoration: none;
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100%;
	}

	#top-container .top-nav .nav-item>a span {
		border-radius: 10px;
		padding: 10px;
		margin: 0;
		color: #94a3b8;
		background: rgba(59, 130, 246, 0.1);
		font-size: 18px;
		transition: all 0.3s ease;
		border: 1px solid transparent;
	}

	#top-container .top-nav .nav-item>a:hover span {
		color: #3b82f6;
		background: rgba(59, 130, 246, 0.2);
		border-color: rgba(59, 130, 246, 0.3);
		box-shadow: 0 0 15px rgba(59, 130, 246, 0.3);
	}

	#top-container .top-nav .nav-item .dropdown-menu {
		border-radius: 12px;
		box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
		top: 100%;
		left: inherit;
		background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
		border: 1px solid #334155;
		width: 180px;
		margin-top: 10px;
		position: absolute;
		right: 0;
		min-width: auto;
		height: auto;
		padding: 8px 0;
	}

	#top-container .top-nav .nav-item .dropdown-menu h5 {
		padding: 12px 16px;
		color: #e2e8f0;
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
		width: 100%;
		font-size: 14px;
		font-weight: 600;
		line-height: 1.5;
		border-radius: 8px 8px 0 0;
		margin: 0 0 8px 0;
	}

	#top-container .top-nav .nav-item .dropdown-menu a {
		padding: 10px 16px;
		color: #94a3b8;
		background: transparent;
		display: flex;
		align-items: center;
		width: 100%;
		font-size: 14px;
		height: auto;
		transition: all 0.3s ease;
	}

	#top-container .top-nav .nav-item .dropdown-menu a:hover {
		padding: 10px 16px;
		color: #ffffff;
		background: linear-gradient(135deg, rgba(59, 130, 246, 0.2) 0%, rgba(37, 99, 235, 0.2) 100%);
		display: flex;
		align-items: center;
		width: 100%;
		font-size: 14px;
		height: auto;
	}

	#top-container .top-nav .nav-item .dropdown-menu a .icon {
		border-radius: 6px;
		padding: 4px;
		margin: 0 10px 0 0;
		color: #3b82f6;
		font-size: 16px;
		line-height: 1;
	}

	#top-container .top-nav .nav-item .dropdown-menu a .text {
		color: inherit;
		font-size: inherit;
		line-height: 1.5;
	}

	#top-container .nav-item .dropdown-toggle::after {
		content: none;
	}
</style>
<div id="top-container">
	<a class="top-title" href="${pageContext.request.contextPath}/index.jsp">超市采购与库存管理系统</a>
	<ul class="top-nav">
		<li class="nav-item-full">
			<a class="nav-link">
				<span class="ti-fullscreen fullscreen"></span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
				<span class="ti-user"></span>
			</a>
			<div class="dropdown-menu lochana-box-shadow2 profile animated flipInY">
				<h5></h5>
				<a class="dropdown-item exit" href="#" onclick="logout()">
					<span class="icon ti-power-off"></span>
					<span class="text">退出</span>
				</a>
			</div>
		</li>
	</ul>
</div>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		if(window.sessionStorage.getItem('role')=='管理员') {
			$('#toFront').hide();
		}
		if(window.sessionStorage.getItem('role')!='管理员') {
			$('#backUp').hide();
		}
	});
</script>
