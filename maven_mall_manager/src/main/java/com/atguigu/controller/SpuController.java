package com.atguigu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.atguigu.service.SpuServiceImpl;

@Controller
public class SpuController {

	@Autowired
	SpuServiceImpl spuService;
	
	@RequestMapping("goto_spu_publish")
	public String  goto_spu_publish(){
		
		return "manager_spu_publish";
	}
}
