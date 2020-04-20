package com.lzy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lzy.mapper.GoodsMapper;
import com.lzy.pojo.Goods;
@Service
@Transactional
public class GoodsServiceimpl implements GoodsService {
	@Autowired
	GoodsMapper mapper;
	
	@Override
	public List<Goods> selectAll() {
		return mapper.selectAll();
	}

}
