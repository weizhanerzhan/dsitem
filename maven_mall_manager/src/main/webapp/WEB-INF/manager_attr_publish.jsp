<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	//加载页面的时候执行的函数
	$(function(){
		$.getJSON("js/json/class_1.js",function(data){
	//			取得一级分类的静态数据
	//把静态数据添加到一级分类下拉列表中
	     $(data).each(function(i,json){	    	 
	    	 $("#attr_class_1_select").append("<option value="+json.id+">"+json.flmch1+"</option>") ;
	     })	
		})
	})
	
	//	获取二级分类
	function attr_select_class_2_by_class_1(class_1_id){
	
	$.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
		$("#attr_class_2_select").empty();
	     $(data).each(function(i,json){
	    	 $("#attr_class_2_select").append("<option value="+json.id+">"+json.flmch2+"</option>");
	     })	
	    
	})
	}
// 	通过二级分类id查询分类属性信息
	function attr_get_attr_list_by_class_2_id(class_2_id){
		$.post("get_attr_list_by_class_2_id.do",{"class_2_id":class_2_id},function(data){
			$("#attr_attr_inner").html(data);
		});
	}
// 	打开一个新页面：分类添加页面
    function attr_open_add_attr(){
	    var class_2_id=$("#attr_class_2_select").val();
	    var class_2_name=$("#attr_class_2_select option:selected").html();
    	window.open("goto_add_attr/"+class_2_id+"/"+class_2_name+".do");
    }
	
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>属性信息发布</title>
</head>
<body>
	属性信息发布<br>
	 一级分类：
	<select id="attr_class_1_select" onchange="attr_select_class_2_by_class_1(this.value)"></select><br> 
	二级分类：
	<select id="attr_class_2_select" onchange="attr_get_attr_list_by_class_2_id(this.value)"></select><br>
	<hr>
	<div id="attr_attr_inner"></div>
	<hr>
	<a href="javascript:attr_open_add_attr()">添加分类属性</a>
	
</body>
</html>