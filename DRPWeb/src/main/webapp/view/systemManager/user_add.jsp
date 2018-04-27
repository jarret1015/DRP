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
</head>

<body>
	<div class="daohang">
		<ul>
			<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"><a href="../right.html" target="main">首页</a></button>></li>
			<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">帮助中心<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
			<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">奖金管理<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
			<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">产品管理<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
		</ul>
	</div>
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<dl class="am-icon-home" style="float: left;"> 当前位置：用户管理>
				<a href="flow_card_maint.html">用户维护</a>>添加
			</dl>
		</div>

		<form class="am-form am-g" id="myForm">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped" name="tblFlowCardDetail" id="tblFlowCardDetail">
				<thead>
					<tr class="am-success">
						<th class="table-id">用户代码</th>
						<th class="table-id">用户名称</th>
						<th class="table-type">密码</th>
						<th class="table-type">联系电话</th>
						<th class="table-type">邮箱</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="userCode" id="userCode" value="" /></td>
						<td><input type="text" name="userName" id="userName" value="" /></td>
						<td><input type="password" name="userPassword" id="userPassword" value=""></td>
						<td><input type="text" name="userTel" id="userTel" value="" /></td>
						<td><input type="text" name="userEmail" id="userEmail" value="" /></td>
					</tr>
				</tbody>
			</table>

			<div class="am-btn-group am-btn-group-xs">
				<input name="btnSave" type="button" id="btnSave" value="保存">
				<input name="btnBack" type="button" id="btnBack" onClick="goBack()" value="返回">
			</div>
		</form>

	</div>
	<script src="../../js/amazeui.min.js"></script>
	<script language="javascript">
		var rowIndex = 0;

		function DeleteRow(rowTag) {
			//alert(rowTag);
			var i = document.getElementById("tblFlowCardDetail").rows(rowTag).rowIndex;
			var j;
			for(j = i; j <= rowIndex; j++) {
				document.getElementById("tblFlowCardDetail").rows(j).cells(0).all("btnSelectAimClient").index--;
				document.getElementById("tblFlowCardDetail").rows(j).cells(2).all("btnSelectItem").index--;
			}
			//alert(i);
			document.getElementById("tblFlowCardDetail").deleteRow(i);
			rowIndex--;
		}

		function goBack() {
			window.self.location = "${ctx}/user_maint.action"
		}

		$('#btnSave').click(
			function() {
				$.ajax({
					type: "POST",
					url: "${ctx}/add.action",
					data: $("#myForm").serializeArray(),
					success: function(result) { //成功
						alert("注册成功！"); //就将返回的数据显示出来
						window.location.href = "${ctx}/user_maint.action"
					}
				})
			});
	</script>
</body>

</html>