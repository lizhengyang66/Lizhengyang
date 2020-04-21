package com.lzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	/**
	 * 测试方法
	 */
	@RequestMapping("/hello")
	@ResponseBody
	public String hello() {
		System.out.println("hello");
		return "ok";
		
	}
	/**
	 * 测试
	 */
	@RequestMapping("test")
	public String testThymeleaf(Model model) {
		//把数据存入model
		model.addAttribute("name", "可以");
		return "test";
	}

}
