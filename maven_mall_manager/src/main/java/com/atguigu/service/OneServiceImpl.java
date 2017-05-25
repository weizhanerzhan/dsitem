package com.atguigu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.mapper.TestMapper;

@Service
public class OneServiceImpl implements OneService {

	@Autowired
	TestMapper  testMapper;
	@Override
	public int testDb() {
		int i = testMapper.select_test();
		return i;
	}

}
