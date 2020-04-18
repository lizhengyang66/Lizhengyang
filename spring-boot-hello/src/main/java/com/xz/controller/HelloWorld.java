package com.xz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class HelloWorld {
	@RequestMapping("/hello")
	@ResponseBody
	public String showHello() {
		System.out.println("---进入了Hello控制器-------");
		return"Hello World!";
	}

}
