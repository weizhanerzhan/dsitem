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
<title>后台管理主页面</title>
</head>
<body>
   <a href="goto_spu_publish.do">商品信息发布</a><br>
   <a href="goto_attr_publish/success.do">属性信息发布</a><br>
   <a href="">库存信息发布</a><br>
</body>
</html>