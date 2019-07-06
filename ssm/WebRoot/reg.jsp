<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
   
  <center>
  <h4>用户注册</h4>
  <form action="reg" method=get">
  <table>
    <tr>
    <td>ID:</td>
    <td><input type="text" name="id" style="width: 120px; height: 25px;"></td>
    </tr>
    <tr>
    <td>用户名:</td>
    <td><input type="text" name="name" style="width: 120px; height: 25px;"></td>
    </tr>
    <tr>
    <td>密码:</td>
    <td><input type="password" name="password" style="width: 120px; height: 25px;"></td>
    </tr>
  </table>
     <input type="submit" value="注册">
  </form>
  <a>已有账号去登录:</a><input type="button" value="登录" color="red" onclick="javascript:location.href='login.jsp'">
 </center>
  </body>
</html>
