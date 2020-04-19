package com.xz.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xz.pojo.User;

@Controller
public class UserController {
	/**
	 * 
	 * 获取所有用户信息
	 * @return
	 */
	@RequestMapping("/users")
	public String getUsers(Model model) {
		List<User> list=new ArrayList<User>();
		list.add(new User("001","涛哥",38));
		list.add(new User("002","旭哥",38));
		list.add(new User("003","飞哥",38));
		model.addAttribute("list", list);
		return "userList";
		
	}

}
