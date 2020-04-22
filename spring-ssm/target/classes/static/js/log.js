
$("#form").on("click",".parentChk",function(){
	if (!$(this).hasClass("spcheckbox")) { //如果取消
		$(this).next().find(".childChk,.childchildChk")
				.removeClass("spcheckboxCheck");
		$(this).next().find(".childChk,.childchildChk")
				.addClass("spcheckbox");
		$(this).next().find(".subchk").removeAttr("checked");
		$(this).removeClass("spcheckboxCheck");
		$(this).addClass("spcheckbox");
		$(this).children(0).removeAttr("checked");
	} else {
		$(this).next().find(".childChk,.childchildChk")
				.removeClass("spcheckbox");
		$(this).next().find(".childChk,.childchildChk")
				.addClass("spcheckboxCheck");
		$(this).next().find(".subchk").attr("checked",
				"checked");
		$(this).removeClass("spcheckbox");
		$(this).addClass("spcheckboxCheck");
		$(this).children(0).attr("checked", "checked");
	}
})
$("#form").on("click",".childChk",function(){
	if ($(this).hasClass("spcheckbox")) { //如果子元素取消选中
		var part = $(this).parent().parent();
		part.siblings().removeClass("spcheckbox");
		part.siblings().addClass("spcheckboxCheck");
		part.siblings().find(".subchk").attr("checked", "checked");
		$(this).removeClass("spcheckbox");
		$(this).addClass("spcheckboxCheck");
		$(this).children(0).attr("checked", "checked");
	} else {
		var part = $(this).parent().parent();
		$(this).removeClass("spcheckboxCheck");
		$(this).addClass("spcheckbox");
		$(this).children(0).removeAttr("checked");
		if (part.find(".spcheckboxCheck").length == 0) {
			part.siblings().removeClass("spcheckboxCheck");
			part.siblings().addClass("spcheckbox");
			part.siblings().find(".subchk").removeAttr("checked");
		}
	}
})
	$("#form").on("click",".childchildChk",function(){
		if ($(this).hasClass("spcheckbox")) {
			var part = $(this).parent().parent();
			$(this).removeClass("spcheckbox");
			$(this).addClass("spcheckboxCheck");
			$(this).children(0).attr("checked", "checked");
		} else {
			$(this).removeClass("spcheckboxCheck");
			$(this).addClass("spcheckbox");
			$(this).children(0).removeAttr("checked");
		}
	})
