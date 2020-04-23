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
<<<<<<< HEAD
//姚文斌22
//1
//席蒋达123
=======
//姚文彬
private void sysout() {
	// TODO Auto-generated method stub
System.out.println("卢本伟牛逼！！！！");
String name="刘 海 文";
}
>>>>>>> refs/remotes/origin/LhwGood
}
