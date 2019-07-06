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
    
    <title>学生信息管理系统</title>
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
  <h4>学生信息管理</h4> <a href="main.jsp">《《《返回主页面</a>
        <table border="1">
          <tr>
             <th>学号</th>
             <th>姓名</th>
             <th>性别</th>
             <th>班级</th>
             <th>年龄</th>
             <th>籍贯</th>
             <th colspan="3">操作</th>
          </tr>
          
          <c:forEach items="${lists}" var="d">
				<tr>
					<td>${d.id}</td>
					<td>${d.name}</td>
					<td>${d.sex}</td>
					<td>${d.classcode}</td>
					<td>${d.age}</td>
					<td>${d.addr}</td>
					<td>
						<a href="Stuselone?id=${d.id}">修改</a>
					</td>
					<td>
						<a href="Studentdelete?id=${d.id}">删除</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="9">
					<a href="Striset.jsp">添加</a>
				</td>
			</tr>			                  
          </table>
          </center>    
  </body>
</html>
