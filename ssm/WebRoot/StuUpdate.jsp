<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
       <h4>修改学生信息</h4>
       <form action="StudentUpdate" method="post">
           <table>
           <tr>
              <td>学号:</td>
              <td><input type="text" name="id" value="${st.id}"></td>   
           </tr>
           <tr>
              <td>姓名:</td>
              <td><input type="text" name="name" value="${st.name}"></td>   
           </tr>
           <tr>
              <td>性别:</td>
              <td><input type="text" name="sex" value="${st.sex}"></td>    
           </tr>
           <tr>
              <td>班级:</td>
              <td><input type="text" name="classcode" value="${st.classcode}"></td>     
           </tr>
           <tr>
              <td>年龄:</td>
              <td><input type="text" name="age" value="${st.age}"></td> 
           </tr>
           <tr>
              <td>籍贯:</td>
              <td><input type="text" name="addr" value="${st.addr}"></td>    
           </tr>
           </table>
           <input type="submit" value="修改">
           <input type="button" value="返回" onclick="javascript:location.href='lis'">
       </form>
       </center>
  </body>
</html>
