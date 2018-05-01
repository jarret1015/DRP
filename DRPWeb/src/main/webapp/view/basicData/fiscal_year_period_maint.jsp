<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 设置一个项目路径的变量  -->
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>

	<head>
		<meta charset="utf-8">
		<title>DRP 分销资源计划</title>
		<link rel="icon" type="image/png" href="../../i/favicon.png">
		<link rel="apple-touch-icon-precomposed" href="../../i/app-icon72x72@2x.png" type="text/css">
		<link rel="stylesheet" href="../../css/amazeui.min.css" />
		<link rel="stylesheet" href="../../css/admin.css">
		<script src="../../js/jquery.min.js"></script>
		<script src="../../js/app.js"></script>
		<script type="text/javascript">
			function addForCard() {
				window.self.location = "${ctx}/view/basicData/fiscal_year_period_add.jsp";
			}

			function modifyForCard() {
				window.self.location = "${ctx}/view/basicData/fiscal_year_period_modify.jsp";
			}
		</script>
	</head>

	<body>
		<div class="daohang">
			<ul>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"><a href="index.html">首页</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">帮助中心<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">奖金管理<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">产品管理<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
			</ul>
		</div>
		<div class="admin-biaogelist">
			<div class="listbiaoti am-cf">
				<dl class="am-icon-home" style="float: left;"> 当前位置： 基础数据管理 >会计核算期间维护
				</dl>
			</div>

			<form class="am-form am-g">
				<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
					<thead>
						<tr class="am-success">
							<th class="table-check"><input type="checkbox" /></th>
							<th class="table-id">核算年</th>
							<th class="table-id">核算月</th>
							<th class="table-title">开始日期</th>
							<th class="table-type">结束日期</th>
							<th class="table-date am-hide-sm-only">核算期状态</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2018</td>
							<td>4</td>
							<td>2018-03-25</td>
							<td>2018-03-25</td>
							<td>可用</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2018</td>
							<td>4</td>
							<td>2018-03-25</td>
							<td>2018-03-25</td>
							<td>可用</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2018</td>
							<td>4</td>
							<td>2018-03-25</td>
							<td>2018-03-25</td>
							<td>可用</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2018</td>
							<td>4</td>
							<td>2018-03-25</td>
							<td>2018-03-25</td>
							<td>可用</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2018</td>
							<td>4</td>
							<td>2018-03-25</td>
							<td>2018-03-25</td>
							<td>可用</td>
						</tr>
					</tbody>
				</table>

				<div class="am-btn-group am-btn-group-xs">
					<button type="button" class="am-btn am-btn-default" onclick="addForCard()"><span class="am-icon-plus" ></span> 新增</button>
					<button type="button" class="am-btn am-btn-default" onclick="modifyForCard()"><span class="am-icon-save" ></span> 修改</button>
				</div>

				<ul class="am-pagination am-fr">
					<li class="am-disabled">
						<a href="#">«</a>
					</li>
					<li class="am-active">
						<a href="#">1</a>
					</li>
					<li>
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">»</a>
					</li>
				</ul>

				<hr />
				<p>注： 共5 页 &nbsp;&nbsp;&nbsp;当前第 1页</p>
			</form>
		</div>
		<script src="../../js/amazeui.min.js"></script>
	</body>

</html>