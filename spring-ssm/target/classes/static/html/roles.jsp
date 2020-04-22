<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="css/amazeui.min.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/app.css">
</head>

<body>

	<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg"> </strong><small>
							<i class="icon-home"></i> &gt; 首页 &gt; 角色管理
						</small>
					</div>
				</div>
				<hr>
				<div class="container" style="padding: 0px 10px 0px 10px">
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-6">
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">

									<button type="button" class="am-btn am-btn-default btnAdd" onclick="location.href='AddRole'">
										<span class="icon-plus"></span> 新增
									</button>

								</div>
							</div>
						</div>
						<div class="am-u-sm-12 am-u-md-3">
							<div class="am-input-group am-input-group-sm">
								<input id="roleName" class="am-form-field" placeholder="请输入角色名称"
									type="text"> <span class="am-input-group-btn">
									<button class="am-btn am-btn-default" type="button"
										id="btnsearch">搜索</button>
								</span>
							</div>
						</div>
					</div>

					<div class="am-g" style="margin-top: 5px;">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-id"><input id="chkAll" type="checkbox">
											</th>

											<th>角色名称</th>
											<th class="table-title">角色编号</th>
											<th class="table-title">角色描述</th>

											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody id="tUser">
									<c:forEach items="${list}" var="l">
										<tr>
											<td><input name="chks" value="701" type="checkbox"></td>
											<td><a href="javascript:void(0)">${l.name}</a></td>
											<td>${l.code}</td>
											<td>${l.descn}</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button" id="role_701"
															class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														<button type="button" onclick="location.href = 'selectid?id=${l.id}'"
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 分配权限
														</button>
														<button type="button" onclick="location.href = 'selectrole?id=${l.id}'"
															class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
															<span class="am-icon-copy"></span> 取消权限
														</button>
														<button type="button"
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
															onclick="delUser(701,1)">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>

			</div>
			<!-- content end -->
		</div>
	</div>

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="js/jquery-1.11.3.min.js"></script>
	<!--<![endif]-->
	<script type="text/javascript" src="myplugs/js/plugs.js"></script>
	<script>
		$(function() {

			$(".btnedit").click(function() {

				$.jq_Panel({
					title : "修改角色",
					iframeWidth : 500,
					iframeHeight : 300,
					url : "editRole.html"
				});
			});

			$(".btnAdd").click(function() {


			});
		});
	</script>
</body>

</html>