package com.atguigu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.mapper.SpuMapper;

@Service
public class SpuServiceImpl implements SpuService {

	@Autowired
	SpuMapper spuMapper;
}
