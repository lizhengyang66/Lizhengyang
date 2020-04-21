package com.lzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lzy.pojo.Goods;
import com.lzy.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	GoodsService service;
	
	@RequestMapping("/all")
	public String getGoodsAll(Model model) {
		List<Goods> list=service.selectAll();
		model.addAttribute("list",list);
		System.out.println("333");
		return "goodsList";
	}
	@RequestMapping("/hello")
	public String hello() {
		return "test";
		
	}
	@RequestMapping("/add")
	public String login() {
		System.out.println("1");
		return"addgood";
	}
}
