<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>

</head>

<body>

	<div class="panel panel-default"
		style="margin: 40px; padding-top: 50px;">
		<div class="panel-header">取消权限</div>
		<div class="panel-body">
			<div id="dvpagecontent"
				style="padding: 10px; width: 80%; margin: 0px auto;">
				<div class="content-box">
					<div class="content-box-content">
					
							<form action="remoRM?rid=${uid}" method="post" id="form">
								
								
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
//发送异步的请求请求服务器，获取所有的菜单
 myajax =$.ajax({
    		url:"removerole",
    		type:"get",
    		data: {"rid":${uid}},
    		dataType:"json",
    		success:callback
    	});
function callback(menus){
	var $bi=$("<input name='roleId' value='201' type='hidden'>")
	$("#form").append($bi);
	$(menus).each(function(){
		var $a1=$("<div style='overflow: hidden; margin: 20px auto;'></div>");
		$("#form").append($a1);
		var $a2=$("<span class='parentChk spcheckboxCheck'> <input value='"+this.id+"' checked='checked' name='id' class='subchk' type='checkbox'>&nbsp;<label class='labelfor'>"+this.name+" </label></span>")
		$a1.append($a2);
		$(this.childMenu).each(function(){
			var $d1=$("<div style='margin: 40px auto 10px 30px; clear: both; overflow: hidden; width: 800px;'></div>");
			$a1.append($d1);
			var $d2=$("<div style='width: 195px; padding 5px; float: left;'><span class='childChk spcheckboxCheck'> <input checked='checked' value='"+this.id+"' name='id' class='subchk'type='checkbox'>&nbsp;&nbsp;<label class='labelfor'>"+this.name+" </label> </span></div><div style='float: left; margin: 5px; border-right: 1px solid #efefef; padding: 10px;'></div>")
			$d1.append($d2);
		});
	});

	var $c1=$("<input style='display: inline-block; margin-bottom: 0; padding: .5em 1em; vertical-align: middle; font-size: 1.0rem; font-weight: 400; line-height: 1.2; text-align: center; white-space: nowrap; background-image: none; border: 1px solid transparent; border-radius: 0; color: #fff; background-color: #5eb95e; border-color: #5eb95e;'value='取消权限' type='submit'>")
	$("form").append($c1);

}
</script>
</html>