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
								<i class="icon-home"></i> &gt; 首页 &gt; 员工管理</small>
						</div>
					</div>
					<hr>
					<div class="container">
						<div class="am-g">
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button type="button" class="am-btn am-btn-default btnAdd">
											<span class="icon-plus"></span> 新增
										</button>

										<button type="button" class="am-btn am-btn-default" id="btnremove" onclick="delAll()">
											<span class="icon-trash"></span> 删除
										</button>
									</div>
								</div>
							</div>


							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input class="am-form-field" placeholder="请输入员工姓名" id="username" type="text">
									<span class="am-input-group-btn">
										<button class="am-btn am-btn-default" type="button" id="btnsearch">
											搜索
										</button> </span>
								</div>
							</div>
						</div>
						<div class="am-g" style="margin-top: -30px;">
							<div class="am-u-sm-12">
								<form class="am-form" action="user/delAll.action">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												
												<th class="table-id">
													菜单id
												</th>
												<th>
													父级菜单id
												</th>
												<th class="table-title">
													菜单名字
												</th>
												<th>
													菜单目标链接
												</th>
												<th class="table-set">
													操作
												</th>
											</tr>
										</thead>
										<tbody id="tUser">
										<c:forEach items="${list}" var="l">
											<tr>
												<td>${l.id}</td>
												<td>${l.parent_id}</td>
												<td>
													<a href="#">${l.name}</a>
												</td>
												<td>${l.target}</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary btnEdit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(1,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
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

		<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!--<![endif]-->
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
			$(function() {
				$(".btnAdd").click(function() {
					$.jq_Panel({
						title: "添加用户",
						url: "addUser.html",
						iframeWidth: 800,
						iframeHeight: 600,
					});
				});

				$(".btnEdit").click(function() {
					$.jq_Panel({
						title: "编辑用户",
						url: "addUser.html",
						iframeWidth: 800,
						iframeHeight: 600,
					});

				});

			});
		</script>
	</body>

</html>