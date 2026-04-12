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
		border-radius: 12px !important;
		box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5) !important;
		top: 100% !important;
		left: auto !important;
		right: 0 !important;
		background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%) !important;
		border: 1px solid #334155 !important;
		min-width: 180px !important;
		width: auto !important;
		margin-top: 10px !important;
		position: absolute !important;
		height: auto !important;
		padding: 12px 0 !important;
		overflow: hidden !important;
	}

	#top-container .top-nav .nav-item .dropdown-menu h5 {
		padding: 12px 16px !important;
		color: #ffffff !important;
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%) !important;
		width: 100% !important;
		font-size: 13px !important;
		font-weight: 600 !important;
		line-height: 1.4 !important;
		border-radius: 8px 8px 0 0 !important;
		margin: 0 0 8px 0 !important;
		white-space: nowrap !important;
		overflow: hidden !important;
		text-overflow: ellipsis !important;
	}

	#top-container .top-nav .nav-item .dropdown-menu a {
		padding: 10px 16px !important;
		color: #e2e8f0 !important;
		background: transparent !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		width: 100% !important;
		font-size: 14px !important;
		height: auto !important;
		transition: all 0.3s ease !important;
		white-space: nowrap !important;
		text-decoration: none !important;
	}

	#top-container .top-nav .nav-item .dropdown-menu a:hover {
		padding: 10px 16px !important;
		color: #ffffff !important;
		background: linear-gradient(135deg, rgba(59, 130, 246, 0.2) 0%, rgba(37, 99, 235, 0.2) 100%) !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		width: 100% !important;
		font-size: 14px !important;
		height: auto !important;
	}

	#top-container .top-nav .nav-item .dropdown-menu a .icon {
		border-radius: 6px !important;
		padding: 4px !important;
		margin: 0 8px 0 0 !important;
		color: #3b82f6 !important;
		font-size: 16px !important;
		line-height: 1 !important;
	}

	#top-container .top-nav .nav-item .dropdown-menu a .text {
		color: inherit !important;
		font-size: inherit !important;
		line-height: 1.4 !important;
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
