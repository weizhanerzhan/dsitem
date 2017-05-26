<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
// 加载页面的时候执行的函数
	$(function(){
		$.getJSON("js/json/class_1.js",function(data){
// 			取得一级分类的静态数据
// 把静态数据添加到一级分类下拉列表中
         $(data).each(function(i,json){
        	 $("#spu_class_1_select").append("<option value="+json.id+">"+json.flmch1+"</option>")        	 
         })	
		})
	})
	
// 	获取二级分类
	function spu_select_class_2_by_class_1(class_1_id){

    $.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
    	$("#spu_class_2_select").empty();
         $(data).each(function(i,json){
        	 $("#spu_class_2_select").append("<option value="+json.id+">"+json.flmch2+"</option>")        	 
         })	
         spu_select_class_mark_by_class_1(class_1_id);
	})
}	
// 	获取品牌分类
	function spu_select_class_mark_by_class_1(class_1_id){

    $.getJSON("js/json/class_mark_"+class_1_id+".js",function(data){
    	$("#spu_class_mark_select").empty();
         $(data).each(function(i,json){
        	 $("#spu_class_mark_select").append("<option value="+json.id+">"+json.ppmch+"</option>")        	 
         })	
	})
	}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息发布</title>
</head>
<body>
    商品信息发布<br>
    一级分类：<select id="spu_class_1_select" onchange="spu_select_class_2_by_class_1(this.value)"></select><br>
    二级分类：<select id="spu_class_2_select"></select><br>
    品牌：<select id="spu_class_mark_select"></select><br>
    

</body>
</html>