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
	function a(){}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加属性</title>
</head>
<body>
      ${class_2_name}分类属性添加<br>
   <a >添加属性</a><br>
   <form action="add_attr.do" method="post">
	   <table border="1">
	      <tr><td>属性名：<input type="text"/></td><td></td><td><a>添加值</a></td></tr><br>
	      
	      <tr><td>属性值:<input type="text"/></td><td>值名:<input type="text"/></td><td><a>删除</a></td></tr><br>
	      
	   </table>
   </form>
    <input type="submit" value="添加分类属性"/>

</body>
</html>