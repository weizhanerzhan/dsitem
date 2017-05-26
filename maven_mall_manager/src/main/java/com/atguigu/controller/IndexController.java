package com.atguigu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.atguigu.service.OneServiceImpl;

@Controller
public class IndexController {

	@Autowired
	OneServiceImpl oneService;
	
	@RequestMapping("index")
	public String index(){
		int i = oneService.testDb();
		System.out.println(i);
		return "manager_index";
	}
}
