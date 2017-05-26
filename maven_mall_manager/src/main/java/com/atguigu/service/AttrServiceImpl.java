package com.atguigu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.OBJECT_T_MALL_ATTR;
import com.atguigu.mapper.AttrMapper;

@Service
public class AttrServiceImpl implements AttrService {

	@Autowired
	AttrMapper attrMapper;
	@Override
	public List<OBJECT_T_MALL_ATTR> get_attr_list_by_class_2_id(int class_2_id) {
		
		List<OBJECT_T_MALL_ATTR> list=attrMapper.select_attr_list_by_class_2_id(class_2_id);
		return list;
	}

}
