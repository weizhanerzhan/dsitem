package com.atguigu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atguigu.bean.OBJECT_T_MALL_ATTR;
import com.atguigu.service.AttrServiceImpl;

@Controller
public class AttrController {

	@Autowired
	AttrServiceImpl attrService;
	
	@RequestMapping("add_attr.do")
	public String add_attr(List<OBJECT_T_MALL_ATTR> list_attr,int class_2_id,String class_2_name){
		return "redirect:/goto_add_attr/"+class_2_id+"/"+class_2_name+".do";
	}
	
	@RequestMapping("goto_add_attr/{class_2_id}/{class_2_name}")
	public String goto_add_attr(@PathVariable int class_2_id,@PathVariable String class_2_name){
		
		return "manager_add_attr";
	}
	
	@RequestMapping("goto_attr_publish/{success}")
	public String goto_attr_publish(ModelMap map,@PathVariable String success){
		map.addAttribute("success", "ok");
		return "manager_attr_publish";
	}
	
	@RequestMapping(value="get_attr_list_by_class_2_id",method=RequestMethod.POST)
	public String get_attr_list_by_class_2_id(int class_2_id,ModelMap map){
//		根据二级分类id，查询对应的分类属性集合
		List<OBJECT_T_MALL_ATTR> list_attr_value=attrService.get_attr_list_by_class_2_id(class_2_id);
		map.put("list_attr_value", list_attr_value);
		return "manager_attr_publish_inner";
	}
}
