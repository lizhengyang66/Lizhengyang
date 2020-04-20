package com.lzy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.lzy.pojo.Goods;

public interface GoodsMapper {
	//@Select("select * from goods")
	List<Goods> selectAll();

}
