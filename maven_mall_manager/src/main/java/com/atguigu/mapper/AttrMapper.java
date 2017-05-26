package com.atguigu.mapper;

import java.util.List;

import com.atguigu.bean.OBJECT_T_MALL_ATTR;

public interface AttrMapper {

	public List<OBJECT_T_MALL_ATTR> select_attr_list_by_class_2_id(int class_2_id);

	
}
