package com.xz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class HelloWorld {
	@RequestMapping("/hello")
	@ResponseBody
	public String showHello() {
		System.out.println("---杩涘叆浜咹ello鎺у埗鍣�-------");
		return"Hello World!";
	}
//李子阳
//娴嬭瘯12
//zht
//李斌
}
