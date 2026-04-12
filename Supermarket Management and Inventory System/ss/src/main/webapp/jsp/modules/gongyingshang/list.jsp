<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>
	body {
		background: #f5f7fa !important;
		margin: 0 !important;
	}
	#menu-container,
	#menu-container.navbar,
	div#menu-container {
		background: #ffffff !important;
		border-bottom: 2px solid #e5e7eb !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
	}
	#menu-container .nav-item > a,
	#menu-container .nav-item a.nav-link {
		color: #4b5563 !important;
	}
	#menu-container .nav-item > a:hover,
	#menu-container .nav-item a.nav-link:hover {
		color: #3b82f6 !important;
		background: #f3f4f6 !important;
	}
	#breadcrumb-container {
		background: #ffffff !important;
		border-bottom: 1px solid #e5e7eb !important;
	}
	#breadcrumb-container .breadcrumb-title {
		color: #1f2937 !important;
	}
	#center-container {
		background: #f5f7fa !important;
		padding: 30px !important;
	}
	.center-form {
		background: #ffffff !important;
		padding: 20px !important;
		border-radius: 8px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
		margin-bottom: 20px !important;
	}
	.btns {
		margin-bottom: 20px !important;
	}
	.table {
		background: #ffffff !important;
		border-radius: 8px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
	}
	.table thead th {
		background: #f9fafb !important;
		color: #374151 !important;
		border-bottom: 2px solid #e5e7eb !important;
	}
	.table tbody tr {
		border-bottom: 1px solid #f3f4f6 !important;
	}
	.table tbody tr:hover {
		background: #f9fafb !important;
	}
	#pagination {
		background: #ffffff !important;
		padding: 20px !important;
		border-radius: 8px !important;
		box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;
		margin-top: 20px !important;
	}
	.page-item.active .page-link {
		background-color: #3b82f6 !important;
		border-color: #3b82f6 !important;
	}
	.page-link {
		color: #3b82f6 !important;
	}
</style>
<body>
<div id="main-container">
	<%@ include file="../../static/topNav.jsp"%>
	<div id="menu-container" class="navbar">
		<ul class="navbar-nav navbar-horizontal" id="navUl"></ul>
	</div>
	<div id="breadcrumb-container">
		<h3 class="breadcrumb-title">供应商管理</h3>
		<ol class="breadcrumb-list">
			<li class="breadcrumb-item-home"><a href="#"><span class="ti-home"></span></a></li>
			<li class="breadcrumb-item-one"><span>供应商管理</span></li>
			<li class="breadcrumb-item-two"><span>供应商列表</span></li>
		</ol>
	</div>
	<div id="center-container">
		<div class="center-form">
			<div class="form-item">
				<label>供应商名称</label>
				<input type="text" id="gongyingshangmingchengSearch" class="form-control form-control-sm" placeholder="请输入供应商名称" aria-controls="tableId">
			</div>
			<button onclick="search()" type="button" class="btn btn-search btn-primary">查询</button>
		</div>
		<div class="btns">
			<button onclick="add()" type="button" class="btn btn-success btn-add 新增"><i class="fa fa-plus"></i><span>添加</span></button>
			<button onclick="deleteMore()" type="button" class="btn btn-danger btn-del 删除"><i class="fa fa-remove"></i><span>批量删除</span></button>
		</div>
		<table id="tableId" class="table table-bordered">
			<thead>
			<tr>
				<th class="no-sort" style="min-width: 35px;">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="select-all" onclick="chooseAll()">
						<label class="custom-control-label" for="select-all"></label>
					</div>
				</th>
				<th onclick="sort('gongyingshangbianhao')">供应商编号<i id="gongyingshangbianhaoIcon" class="fa fa-sort"></i></th>
				<th onclick="sort('gongyingshangmingcheng')">供应商名称<i id="gongyingshangmingchengIcon" class="fa fa-sort"></i></th>
				<th onclick="sort('gongsidizhi')">公司地址<i id="gongsidizhiIcon" class="fa fa-sort"></i></th>
				<th onclick="sort('lianxidianhua')">联系电话<i id="lianxidianhuaIcon" class="fa fa-sort"></i></th>
				<th onclick="sort('jinglizhanghao')">经理账号<i id="jinglizhanghaoIcon" class="fa fa-sort"></i></th>
				<th onclick="sort('jinglixingming')">经理姓名<i id="jinglixingmingIcon" class="fa fa-sort"></i></th>
				<th>操作</th>
			</tr>
			</thead>
			<tbody></tbody>
		</table>
		<div id="pagination">
			<div class="dataTables_length" id="tableId_length">
				<select name="tableId_length" aria-controls="tableId" id="selectPageSize" onchange="changePageSize()">
					<option value="10">10</option>
					<option value="25">25</option>
					<option value="50">50</option>
					<option value="100">100</option>
				</select>
				<span class="text">条每页</span>
			</div>
			<ul class="pagination">
				<li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
					<a class="page-link" href="#" tabindex="-1">上一页</a>
				</li>
				<li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
					<a class="page-link" href="#">下一页</a>
				</li>
			</ul>
		</div>
	</div>
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>
		<%@ include file="../../static/getRoleButtons.js"%>
		<%@ include file="../../static/crossBtnControl.js"%>
		var tableName = "gongyingshang";
		var pageType = "list";
		var searchForm = { key: ""};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder= '';
		var ids = [];
		var checkAll = false;
		function init() {}
		function changePageSize() {
			pageIndex=1;
			var selection = document.getElementById('selectPageSize');
			var index = selection.selectedIndex;
			pageSize = selection.options[index].value;
			getDataList();
		}
		function sort(columnName){
			var iconId = '#'+columnName+'Icon'
			$('th i').attr('class','fa fa-sort');
			if(sortColumn == '' || sortColumn != columnName){
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class','fa fa-sort-asc');
			}
			if(sortColumn == columnName){
				if(sortOrder == 'asc'){
					sortOrder = 'desc';
					$(iconId).attr('class','fa fa-sort-desc');
				}else{
					sortOrder = 'asc';
					$(iconId).attr('class','fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}
		function search(){
			searchForm = { key: ""};
			if($('#gongyingshangmingchengSearch').val() != null && $('#gongyingshangmingchengSearch').val() != ''){
				searchForm.gongyingshangmingcheng ="%" +  $('#gongyingshangmingchengSearch').val() + "%";
			}
			pageIndex=1;
			getDataList();
		}
		function getDataList() {
			http("gongyingshang/page","GET",{
				page: pageIndex,
				limit: pageSize,
				sort: sortColumn,
				order: sortOrder,
				gongyingshangmingcheng : searchForm.gongyingshangmingcheng,
			},(res)=>{
				if(res.code == 0){
					clear();
					dataList = res.data.list;
					totalPage = res.data.totalPage;
					for(var i = 0;i < dataList.length; i++){
						var trow = setDataRow(dataList[i],i);
						$('tbody').append(trow);
					}
					pagination();
					getRoleButtons();
				}
			});
		}
		function setDataRow(item,number){
			var row = document.createElement('tr');
			row.setAttribute('class','useOnce');
			var checkbox = document.createElement('td');
			var checkboxDiv = document.createElement('div');
			checkboxDiv.setAttribute("class","custom-control custom-checkbox");
			var checkboxInput = document.createElement('input');
			checkboxInput.setAttribute("class","custom-control-input");
			checkboxInput.setAttribute("type","checkbox");
			checkboxInput.setAttribute('name','chk');
			checkboxInput.setAttribute('value',item.id);
			checkboxInput.setAttribute("id",number);
			checkboxDiv.appendChild(checkboxInput);
			var checkboxLabel = document.createElement('label');
			checkboxLabel.setAttribute("class","custom-control-label");
			checkboxLabel.setAttribute("for",number);
			checkboxDiv.appendChild(checkboxLabel);
			checkbox.appendChild(checkboxDiv);
			row.appendChild(checkbox)
			var gongyingshangbianhaoCell  = document.createElement('td');
			gongyingshangbianhaoCell.innerHTML = item.gongyingshangbianhao;
			row.appendChild(gongyingshangbianhaoCell);
			var gongyingshangmingchengCell  = document.createElement('td');
			gongyingshangmingchengCell.innerHTML = item.gongyingshangmingcheng;
			row.appendChild(gongyingshangmingchengCell);
			var gongsidizhiCell  = document.createElement('td');
			gongsidizhiCell.innerHTML = item.gongsidizhi;
			row.appendChild(gongsidizhiCell);
			var lianxidianhuaCell  = document.createElement('td');
			lianxidianhuaCell.innerHTML = item.lianxidianhua;
			row.appendChild(lianxidianhuaCell);
			var beizhuCell  = document.createElement('td');
			var jinglizhanghaoCell  = document.createElement('td');
			jinglizhanghaoCell.innerHTML = item.jinglizhanghao;
			row.appendChild(jinglizhanghaoCell);
			var jinglixingmingCell  = document.createElement('td');
			jinglixingmingCell.innerHTML = item.jinglixingming;
			row.appendChild(jinglixingmingCell);
			var btnGroup = document.createElement('td');
			var detailBtn = document.createElement('button');
			var detailAttr = "detail(" + item.id + ')';
			detailBtn.setAttribute("type","button");
			detailBtn.setAttribute("class","btn btn-info btn-sm 查看");
			detailBtn.setAttribute("onclick",detailAttr);
			detailBtn.innerHTML = "查看"
			btnGroup.appendChild(detailBtn)
			var editBtn = document.createElement('button');
			var editAttr = 'edit(' +  item.id + ')';
			editBtn.setAttribute("type","button");
			editBtn.setAttribute("class","btn btn-warning btn-sm 修改");
			editBtn.setAttribute("onclick",editAttr);
			editBtn.innerHTML = "修改"
			btnGroup.appendChild(editBtn)
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' +  item.id + ')';
			deleteBtn.setAttribute("type","button");
			deleteBtn.setAttribute("class","btn btn-danger btn-sm 删除");
			deleteBtn.setAttribute("onclick",deleteAttr);
			deleteBtn.innerHTML = "删除"
			btnGroup.appendChild(deleteBtn)
			row.appendChild(btnGroup)
			return row;
		}
		function pageNumChange(val) {
			if(val == 'pre') {
				pageIndex--;
			}else if(val == 'next'){
				pageIndex++;
			}else{
				pageIndex = val;
			}
			getDataList();
		}
		function download(url){ window.open(url); }
		function mediaPlay(url){ window.open(url); }
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			if(totalPage!=0) {
				for(var i=0;i<3;i++){ if(endIndex==totalPage){ break;} endIndex++; point--; }
				for(var i=0;i<3;i++){ if(beginIndex==1){break;} beginIndex--; point--; }
				if(point>0){
					while (point>0){ if(endIndex==totalPage){ break;} endIndex++; point--; }
					while (point>0){ if(beginIndex==1){ break;} beginIndex--; point-- }
				}
			}
			if(pageIndex>1){ $('#tableId_previous').show(); }else{ $('#tableId_previous').hide(); }
			for(var i=beginIndex;i<=endIndex;i++){
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick',"pageNumChange("+i+")");
				if(pageIndex == i){ pageNum.setAttribute('class','paginate_button page-item active useOnce'); }
				else{ pageNum.setAttribute('class','paginate_button page-item useOnce'); }
				var pageHref = document.createElement('a');
				pageHref.setAttribute('class','page-link');
				pageHref.setAttribute('href','#');
				pageHref.setAttribute('aria-controls','tableId');
				pageHref.setAttribute('data-dt-idx',i);
				pageHref.setAttribute('tabindex',0);
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$('#tableId_next').before(pageNum);
			}
			if(pageIndex < totalPage){ $('#tableId_next').show(); $('#tableId_next a').attr('data-dt-idx',endIndex+1); }
			else{ $('#tableId_next').hide(); }
			var pageNumInfo = "当前第 "+ pageIndex + " 页，共 "+ totalPage + " 页";
			$('#tableId_info').html(pageNumInfo);
		}
		function toThatPage(){
			if(index<0 || index>totalPage){ alert('请输入正确的页码'); }
			else { pageNumChange(index); }
		}
		function chooseAll(){
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){ boxs[i].checked= checkAll; }
		}
		function deleteMore(){
			ids = []
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){ if(boxs[i].checked){ ids.push(boxs[i].value) } }
			if(ids.length == 0){ alert('请勾选要删除的记录'); }
			else{ remove(ids); }
		}
		function remove(id) {
			var mymessage = confirm("真的要删除吗？");
			if (mymessage == true) {
				var paramArray = [];
				if (id == ids){ paramArray = id; }else{ paramArray.push(id); }
				httpJson("gongyingshang/delete","POST",paramArray,(res)=>{
					if(res.code == 0){ getDataList(); alert('删除成功'); }
				});
			} else { alert("已取消操作"); }
		}
		<%@ include file="../../static/logout.jsp"%>
		function edit(id) {
			window.sessionStorage.setItem('id', id)
			window.location.href = "add-or-update.jsp"
		}
		function clear(){
			var elements = document.getElementsByClassName('useOnce');
			for(var i = elements.length - 1; i >= 0; i--) { elements[i].parentNode.removeChild(elements[i]); }
		}
		function add(){ window.location.href = "add-or-update.jsp" }
		function getSum(colName){
			http("gongyingshang"+colName,"GET",{ tableName: "gongyingshang", columnName: colName },(res)=>{
				if(res.code == 0){ return res.data.sum; }
			});
		}
		function detail(id){
			window.sessionStorage.setItem("id", id);
			window.location.href = "info.jsp";
		}
		function crossTable(obj,crossTableName,crossOptAudit,statusColumnName,tips,statusColumnValue){
			window.sessionStorage.setItem('crossTableId',obj.id);
			window.sessionStorage.setItem('crossObj', JSON.stringify(obj));
			window.sessionStorage.setItem('crossTableName',"gongyingshang");
			window.sessionStorage.setItem('statusColumnName',statusColumnName);
			window.sessionStorage.setItem('statusColumnValue',statusColumnValue);
			window.sessionStorage.setItem('tips',tips);
			if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
				for (var o in obj){ if(o==statusColumnName && obj[o]==statusColumnValue){ alert(tips); return } }
			}
			var url = "../"+crossTableName+"/add-or-update.jsp?cross=true";
			window.location.href = url;
		}
		$(document).ready(function() {
			$('#tableId_previous').attr('class','paginate_button page-item previous')
			$('#tableId_next').attr('class','paginate_button page-item next')
			$('#tableId_filter').hide()
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			init();
			getDataList();
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>
</body>
</html>
