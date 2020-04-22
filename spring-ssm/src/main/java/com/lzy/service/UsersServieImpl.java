package com.lzy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzy.mapper.UsersMapper;
import com.lzy.pojo.Users;
@Service
public class UsersServieImpl implements UsersService {
	@Autowired
	UsersMapper mapper;

	@Override
	public Users findByName(String name) {
		// TODO Auto-generated method stub
		return mapper.findByName(name);
	}

}
