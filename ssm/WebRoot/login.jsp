<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>学生信息管理系统用户登录</title>
  </head>
  <body>
  <script type="text/javascript">
   function loginform(){
   var s=document.forms["form"]["name"].value;
       if(s.value=="" || s.value==null){
           alert("用户名不能为空");
           document.s.focus();
           return false;
       }  
   }
  </script>
  <center>
   <h4 style="color:red">欢迎登录！</h4>
   <form name="form" onsubmit="return loginform()" action="login" method="post">
   <table border="0">
       <tr>
          <td>账号:</td>
          <td><input type="text" name="name"  placeholder="请输入您的用户名" style="width: 140px; height: 25px"></td>
       <tr/>  
       <tr>
          <td>密码:</td>
          <td><input type="Password" name="password" placeholder="请输入您的密码" style="width: 140px; height: 25px"></td>
       <tr/>         
    </table>
    <input type="submit" value="登录" color="red">
    <input type="button" value="注册" color="red" onclick="javascript:location.href='reg.jsp'">
   </form>
  </center>
  </body>
</html>

