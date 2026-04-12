<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	/* 白色主题 - 菜单容器样式 */
	.navbar.navbar-horizontal#menu-container,
	#menu-container.navbar {
		background: #ffffff !important;
		border-bottom: 2px solid #e5e7eb !important;
		padding: 0 !important;
		margin-top: 70px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
	}

	#menu-container .navbar-nav {
		display: flex !important;
		flex-wrap: nowrap !important;
		list-style: none !important;
		padding: 0 20px !important;
		margin: 0 !important;
		justify-content: flex-start !important;
		align-items: stretch !important;
	}

	#menu-container .nav-item {
		position: relative !important;
		margin: 0 !important;
		flex: 0 0 auto !important;
	}

	/* 菜单项样式 */
	#menu-container .nav-item > a,
	#menu-container .nav-item a.nav-link {
		padding: 16px 28px !important;
		color: #4b5563 !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		font-size: 15px !important;
		font-weight: 600 !important;
		text-decoration: none !important;
		transition: all 0.3s ease !important;
		border: none !important;
		background: transparent !important;
		letter-spacing: 0.5px !important;
		position: relative !important;
		overflow: hidden !important;
		min-width: 100px !important;
	}

	/* 菜单项悬停效果 */
	#menu-container .nav-item > a:hover,
	#menu-container .nav-item a.nav-link:hover {
		color: #3b82f6 !important;
		background: #f3f4f6 !important;
		box-shadow: inset 0 -3px 0 0 #3b82f6 !important;
	}

	/* 下拉箭头隐藏 */
	#menu-container .nav-item > a.dropdown-toggle::after {
		content: none !important;
		display: none !important;
	}

	/* 下拉菜单样式 */
	#menu-container .nav-item .dropdown-menu {
		border-radius: 0 0 8px 8px !important;
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1) !important;
		background: #ffffff !important;
		border: 1px solid #e5e7eb !important;
		border-top: 2px solid #3b82f6 !important;
		min-width: 180px !important;
		padding: 8px 0 !important;
		margin-top: 0 !important;
	}

	/* 下拉菜单项 */
	#menu-container .nav-item .dropdown-menu .dropdown-item {
		padding: 12px 20px !important;
		color: #4b5563 !important;
		font-size: 14px !important;
		transition: all 0.3s ease !important;
		border-left: 3px solid transparent !important;
	}

	#menu-container .nav-item .dropdown-menu .dropdown-item:hover {
		color: #3b82f6 !important;
		background: #f3f4f6 !important;
		border-left-color: #3b82f6 !important;
		padding-left: 24px !important;
	}

	/* 面包屑导航 */
	#breadcrumb-container {
		background: #ffffff !important;
		border-bottom: 1px solid #e5e7eb !important;
		padding: 14px 30px !important;
		display: flex !important;
		align-items: center !important;
	}

	#breadcrumb-container .breadcrumb-title {
		color: #1f2937 !important;
		font-size: 16px !important;
		font-weight: 600 !important;
		margin: 0 !important;
	}

	#breadcrumb-container .breadcrumb-list {
		list-style: none !important;
		padding: 0 !important;
		margin: 0 0 0 15px !important;
		display: flex !important;
	}

	#breadcrumb-container .breadcrumb-item-home a {
		color: #6b7280 !important;
		text-decoration: none !important;
		font-size: 14px !important;
	}

	#breadcrumb-container .breadcrumb-item-home a:hover {
		color: #3b82f6 !important;
	}

	/* 首页内容区域 */
	#home-container {
		padding: 30px !important;
		margin: 0 !important;
		background: #f5f7fa !important;
		width: 100% !important;
		min-height: calc(100vh - 200px) !important;
	}

	#home-container div.home-container-title {
		padding: 30px 0 !important;
		margin: 0 auto 50px !important;
		color: #1f2937 !important;
		font-weight: bold !important;
		font-size: 34px !important;
		text-align: center !important;
		text-shadow: none !important;
		letter-spacing: 2px !important;
	}

	/* 卡片容器 */
	#home-container .cards {
		margin: 0 auto 50px !important;
		display: grid !important;
		grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)) !important;
		gap: 24px !important;
		max-width: 1500px !important;
	}

	/* 统计卡片 */
	#home-container .cards .item {
		border-radius: 16px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
		background: #ffffff !important;
		border: 1px solid #e5e7eb !important;
		padding: 30px !important;
		transition: all 0.3s ease !important;
		cursor: pointer !important;
		position: relative !important;
		overflow: hidden !important;
	}

	#home-container .cards .item::before {
		content: '' !important;
		position: absolute !important;
		top: 0 !important;
		left: 0 !important;
		width: 100% !important;
		height: 4px !important;
		background: linear-gradient(90deg, #3b82f6 0%, #2563eb 100%) !important;
		opacity: 0 !important;
		transition: opacity 0.3s ease !important;
	}

	#home-container .cards .item:hover::before {
		opacity: 1 !important;
	}

	#home-container .cards .item:hover {
		transform: translateY(-5px) !important;
		box-shadow: 0 8px 20px rgba(59, 130, 246, 0.15) !important;
		border-color: #3b82f6 !important;
	}

	#home-container .cards .item .link {
		background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%) !important;
		width: 65px !important;
		height: 65px !important;
		border-radius: 14px !important;
		display: flex !important;
		align-items: center !important;
		justify-content: center !important;
		margin-bottom: 20px !important;
		box-shadow: 0 4px 12px rgba(59, 130, 246, 0.25) !important;
		transition: all 0.3s ease !important;
	}

	#home-container .cards .item:hover .link {
		transform: scale(1.1) !important;
		box-shadow: 0 6px 16px rgba(59, 130, 246, 0.35) !important;
	}

	#home-container .cards .item .link i {
		color: #ffffff !important;
		font-size: 30px !important;
	}

	#home-container .cards .item .item-body {
		margin: 0 !important;
		flex-direction: column !important;
		display: flex !important;
	}

	#home-container .cards .item .item-body .num {
		margin: 10px 0 !important;
		color: #3b82f6 !important;
		font-weight: bold !important;
		font-size: 36px !important;
		line-height: 1 !important;
	}

	#home-container .cards .item .item-body .name {
		margin: 6px 0 !important;
		color: #6b7280 !important;
		font-size: 15px !important;
		line-height: 1.5 !important;
		font-weight: 500 !important;
	}

	/* 图表容器 */
	.homeCharts {
		display: grid !important;
		grid-template-columns: repeat(auto-fit, minmax(550px, 1fr)) !important;
		gap: 24px !important;
		margin-top: 40px !important;
		max-width: 1500px !important;
		margin-left: auto !important;
		margin-right: auto !important;
	}

	.chart-box {
		background: #ffffff !important;
		border: 1px solid #e5e7eb !important;
		border-radius: 16px !important;
		padding: 28px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
	}

	.chart-title {
		color: #1f2937 !important;
		font-size: 19px !important;
		font-weight: bold !important;
		margin-bottom: 24px !important;
		padding-bottom: 14px !important;
		border-bottom: 2px solid #e5e7eb !important;
	}

	.chart-content {
		width: 100% !important;
		height: 380px !important;
	}
</style>
<body style="background: #f5f7fa !important; margin: 0; min-height: 100vh;">
<div id="main-container">
	<!-- Top Navigation -->
	<%@ include file="jsp/static/topNav.jsp"%>

	<!-- Menu -->
	<div id="menu-container" class="" style="background: #ffffff !important; border-bottom: 2px solid #e5e7eb !important; box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;">
		<ul class="navbar-nav navbar-horizontal" id="navUl">
		</ul>
	</div>
	<!-- /Menu -->

	<!-- Breadcrumb -->
	<div id="breadcrumb-container">
		<h3 class="breadcrumb-title">主页</h3>
		<ol class="breadcrumb-list">
			<li class="breadcrumb-item-home">
				<a href="#">
					<span class="ti-home"></span>
				</a>
			</li>
		</ol>
	</div>
	<!-- /Breadcrumb -->

	<!-- Main Content -->
	<div id="home-container">
		<div class="home-container-title">欢迎使用 超市采购与库存管理系统</div>

		<div class="cards">
			<div class="item" onclick="window.location.href='${pageContext.request.contextPath}/jsp/modules/shangpinxinxi/list.jsp'">
				<div class="link">
					<i class="ti-package"></i>
				</div>
				<div class="item-body">
					<div class="num" id="productCount">0</div>
					<div class="name">商品总数</div>
				</div>
			</div>

			<div class="item" onclick="window.location.href='${pageContext.request.contextPath}/jsp/modules/shangpinruku/list.jsp'">
				<div class="link">
					<i class="ti-import"></i>
				</div>
				<div class="item-body">
					<div class="num" id="stockInCount">0</div>
					<div class="name">入库记录</div>
				</div>
			</div>

			<div class="item" onclick="window.location.href='${pageContext.request.contextPath}/jsp/modules/shangpinxiaoshou/list.jsp'">
				<div class="link">
					<i class="ti-shopping-cart"></i>
				</div>
				<div class="item-body">
					<div class="num" id="salesCount">0</div>
					<div class="name">销售订单</div>
				</div>
			</div>

			<div class="item" onclick="window.location.href='${pageContext.request.contextPath}/jsp/modules/gongyingshang/list.jsp'">
				<div class="link">
					<i class="ti-truck"></i>
				</div>
				<div class="item-body">
					<div class="num" id="supplierCount">0</div>
					<div class="name">供应商数量</div>
				</div>
			</div>
		</div>

		<div class="homeCharts">
			<div class="chart-box">
				<div class="chart-title">销售趋势分析</div>
				<div id="salesChart" class="chart-content"></div>
			</div>

			<div class="chart-box">
				<div class="chart-title">库存分布统计</div>
				<div id="stockChart" class="chart-content"></div>
			</div>
		</div>

	</div>
	<!-- /Main Content -->
</div>

<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">Top</a>
<!-- /Back to Top -->

<%@ include file="jsp/static/foot.jsp"%>
<script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>

<script>
	<%@ include file="jsp/utils/menu.jsp"%>
	<%@ include file="jsp/static/setMenu.js"%>
	<%@ include file="jsp/utils/baseUrl.jsp"%>
	<%@ include file="jsp/static/crossBtnControl.js"%>
	// 用户登出
	<%@ include file="jsp/static/logout.jsp"%>


	$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			}
		}
		$('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		$('.sidebar-header h3 a').html(projectName)
		var token = window.sessionStorage.getItem("token");
		if(token == "null" || token == null){
			alert("请登录后再操作");
			window.location.href = ("jsp/login.jsp");
		}
		setMenu();
		<%@ include file="jsp/static/myInfo.js"%>

		loadDashboardData();
	});

	function loadDashboardData() {
		http('shangpinxinxi/page', 'GET', { page: 1, limit: 1 }, (res) => {
			if(res.code == 0) {
				$('#productCount').text(res.data.total);
			}
		});

		http('shangpinruku/page', 'GET', { page: 1, limit: 1 }, (res) => {
			if(res.code == 0) {
				$('#stockInCount').text(res.data.total);
			}
		});

		http('shangpinxiaoshou/page', 'GET', { page: 1, limit: 1 }, (res) => {
			if(res.code == 0) {
				$('#salesCount').text(res.data.total);
			}
		});

		http('gongyingshang/page', 'GET', { page: 1, limit: 1 }, (res) => {
			if(res.code == 0) {
				$('#supplierCount').text(res.data.total);
			}
		});

		initSalesChart();
		initStockChart();
	}

	function initSalesChart() {
		var salesChart = echarts.init(document.getElementById('salesChart'));
		var option = {
			backgroundColor: 'transparent',
			tooltip: {
				trigger: 'axis',
				backgroundColor: '#ffffff',
				borderColor: '#e5e7eb',
				textStyle: { color: '#1f2937' }
			},
			legend: {
				data: ['销售额'],
				textStyle: { color: '#6b7280' },
				top: 0
			},
			grid: {
				left: '3%',
				right: '4%',
				bottom: '3%',
				containLabel: true
			},
			xAxis: {
				type: 'category',
				boundaryGap: false,
				data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
				axisLine: { lineStyle: { color: '#e5e7eb' } },
				axisLabel: { color: '#6b7280' }
			},
			yAxis: {
				type: 'value',
				axisLine: { lineStyle: { color: '#e5e7eb' } },
				axisLabel: { color: '#6b7280' },
				splitLine: { lineStyle: { color: '#f3f4f6' } }
			},
			series: [{
				name: '销售额',
				type: 'line',
				smooth: true,
				data: [12000, 15000, 18000, 14000, 20000, 25000, 22000],
				itemStyle: { color: '#3b82f6' },
				areaStyle: {
					color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
						{ offset: 0, color: 'rgba(59, 130, 246, 0.2)' },
						{ offset: 1, color: 'rgba(59, 130, 246, 0.02)' }
					])
				}
			}]
		};
		salesChart.setOption(option);
		window.addEventListener('resize', function() { salesChart.resize(); });
	}

	function initStockChart() {
		var stockChart = echarts.init(document.getElementById('stockChart'));
		var option = {
			backgroundColor: 'transparent',
			tooltip: {
				trigger: 'item',
				backgroundColor: '#ffffff',
				borderColor: '#e5e7eb',
				textStyle: { color: '#1f2937' }
			},
			legend: {
				orient: 'vertical',
				right: 10,
				top: 'center',
				textStyle: { color: '#6b7280' }
			},
			series: [{
				name: '库存分布',
				type: 'pie',
				radius: ['40%', '70%'],
				center: ['40%', '50%'],
				avoidLabelOverlap: false,
				itemStyle: {
					borderRadius: 10,
					borderColor: '#ffffff',
					borderWidth: 2
				},
				label: { show: false },
				data: [
					{ value: 335, name: '食品类', itemStyle: { color: '#3b82f6' } },
					{ value: 310, name: '饮料类', itemStyle: { color: '#10b981' } },
					{ value: 234, name: '日用品', itemStyle: { color: '#f59e0b' } },
					{ value: 135, name: '生鲜类', itemStyle: { color: '#ef4444' } },
					{ value: 148, name: '其他', itemStyle: { color: '#8b5cf6' } }
				]
			}]
		};
		stockChart.setOption(option);
		window.addEventListener('resize', function() { stockChart.resize(); });
	}
</script>
<style>
	#menu-container {
		background: #ffffff !important;
		border-bottom: 2px solid #e5e7eb !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
	}
</style>
</body>

</html>
