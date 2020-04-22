<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户修改</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="margin-top: 30px">
	<br><br><br><br>
	<div class="am-cf am-padding am-padding-bottom-0">
						<div class="am-fl am-cf">
							<strong class="am-text-primary am-text-lg"> </strong><small>
								<i class="icon-home"></i> &gt; 首页 &gt; 用户管理</small>
						</div>
					</div>
	<h3>用户管理：</h3>
		<form action="queryEmp" method="get">
			根据用户名：<input type="text" name="name">
			根据授权状态： <select name="status">
				<option>所有</option>
				<option>可用</option>
				<option>不可用</option>
			</select>
			<input type="submit" value="查询" placeholder="根据用户名查询">
			<a style="float: right;" href="selectRoles" class="btn btn-primary btn-md">增加用户</a>
		</form>
		<br />
		<table class="table table-bordered  table-hover">
			<tr class="success">
				<td>序号</td>
				<td>用户名</td>
				<td>状态(√为可用)</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${list}" var="l">
				<tr class="warning">
					<td>${l.id}</td>
					<td>${l.username}</td>
					<td><input type="checkbox" class="che${l.status}"
						disabled="disabled"></td>
					<td><a name="del" href="javascript:void(0)"
						class="btn btn-primary btn-xs">删除</a> <a href="#"
						class="btn btn-primary btn-xs">修改</a> <a name="upda"
						href="javascript:void(0)" class="btn btn-primary btn-xs">${l.status==0?"禁用":"启用"}</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(".che0").prop("checked", true);
		//异步删除
		$("[name=del]").click(function() {
			var $tr = $(this).parents("tr");
			//获取商品编号
			var id = $tr.find("td:eq(0)").text().trim();
			//发送异步
			$.get("deluser", {
				"id" : id
			}, callback, "text");
			function callback(msg) { //删除结果信息：成功|失败
				if (msg == "成功") {
					$tr.remove();
				}
			}
		})
		$("[name=upda]").click(function() {
			var $tr = $(this).parents("tr");
			var tex = $(this).text();
			var id = $tr.find("td:eq(0)").text().trim();
			if (tex == "禁用") {
				$.get("updasta", {
					"status" : "1",
					"id" : id
				}, callback, "text");
				function callback(msg) {
					if (msg == "成功") {
						
						$tr.find("input").prop("checked", false);
						$tr.find("td:eq(3)").find("a:eq(2)").text("启用");
					}
				}
			} else if (tex == "启用") {
				$.get("updasta", {
					"status" : "0",
					"id" : id
				}, callback, "text");
				function callback(msg) {
					if (msg == "成功") {
						$tr.find("input").prop("checked", true);
						$tr.find("td:eq(3)").find("a:eq(2)").text("禁用");
					}
				}
			}
		})
	</script>
</body>
</html>