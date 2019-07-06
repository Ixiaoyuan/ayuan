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
    <script type="text/javascript">
     //if
      x=10;
      if(x<18){        
       document.write("我要甜甜的恋爱");
       document.write("<br />");
      }
      
      //条件运算符
      var b="2";
      var x="0";
      var greeting=(x=="0")?b:"1";
      document.write(greeting);
      
      //if else if
      var d =new Date();
      d=14;
      var time=d;
      if(time<10){
      document.write("<b>Good morning</b>");
      document.write("<br />");
      }else if(time >10 && time<13){
      document.write("<b>Good afternoon</b>"); 
      document.write("<br />");
      }else{
      document.write("<b>Good night</b>");
      document.write("<br />");
      }
      
      //警告框
      function dis(){
           alert("充电中"+'\n'+"嘤嘤嘤");
      }
     
     //确认框
     function was(){
		var r=confirm("确定关机吗？");
		if (r==true)
		  {
		  alert("确认");
		  }
		else
		  {
		  alert("取消");
		  }
      }
      function play(){
       var name=prompt("正在充电中","宝贝");
       if(name!=null && name!=""){
        document.write("充电型号"+name);
       }
    }
    //确认框
	function out()
		{
		var s=confirm("确定要取消充电吗？");
		if (s==true)
		  {
		  alert("电源已拔出！");
		  }
		else
		  {
		  alert("继续充电！");
		  }
		}
		
		function dudu(){
		//提示框
		       var y=prompt("宝贝充电完成","宝贝"); 
		       if(y!=null && y!=""){
		       alert(y+"充电完成啦");
		       }
		}
		
		function my(){
		alert("您好！");
		}
		//带参数的函数
		function mytxt(txt){
		    alert(txt);
		}
		//返回值的函数
		function myc(){
		  
		   return ("滚蛋");	
		}
		
		 //带参数返回值的函数
		 
		 function myzhi(x,y){
		   return x+y;
		 }
</script>
<script>
       //返回值函数
       document.write(myc());
       //带参数返回值的函数
       document.write(myzhi(5,6));
       document.write("<br />");
		for(var i=0; i<=10;i++)
		{
		document.write("The number is " + i);
		document.write("<br />");
		}
	    
	    var a =15;
		while(a<20){
		  document.write("傻逼"+a);
		  document.write("<br />");
		  a=a+1;
		}
		
		var s =3;
		do{
		  document.write(s);
		}while(s>3)
		document.write("<br />");
		//break 终止循环
		for (var i=0;i<=10;i++)
		{
		if (i==3){
		break;
		}
		document.write("The number is " + i);
		document.write("<br />");
		}
		//cuntinue 本次循环结束 进行下一个值得循环 也就是说 i不会输出3直接下一个循环i=4
		for (var i=0;i<=10;i++)
		{
		if (i==3){
		continue;
		}
		document.write("s" + i);
		document.write("<br />");
		}
		
		//for in循环遍历数组
		var x;
		var mycars = new Array();
		mycars[0] = "Saab";
		mycars[1] = "Volvo";
		mycars[2] = "BMW";
		for (x in mycars)
		{
		document.write(mycars[x] +x+ "<br />");
		}
		
		//try catch语句
        var txt="";
		function message()
		{
		try
		   {
		   adddlert("Welcome guest!");
		   }
		catch(err)
		   {
		   txt="本页中存在错误。\n\n";
		   txt+="错误描述：" + err.description + "\n\n";
		   txt+="点击“确定”继续。\n\n";
		   alert(txt);
		   }
		}
		
	  /*var txt="";
		function message()
		{
		try
		   {
		   aSSSlert("Welcome guest!");
		   }
		catch(err)
		   {
		     txt="本页中存在错误。\n\n";
		     txt+="点击“确定”继续查看本页，\n";
		     txt+="点击“取消”返回首页。\n\n";
		     if(!confirm(txt))
		         {
		         document.location.href="login.jsp";
		       //tpa=http://www.w3school.com.cn/index.html
		       }
		   }*/
</script>
    <br/> 
    <br/>
    <input type="button" onclick="dis()" value="点击进行充电">
    <br/>
    <br/>
    <input type="button" onclick="was()" value="关机"/>
    <br/>
    <br/>
    <input type="button" onclick="play()" value="充电中"/>
    <br/>
    <br/>
    <input type="button" onclick="out()" value="请求取消充电"/>    
    <br/>
    <br/>
    <input type="button" onclick="dudu()" value="充电完成"/>
    <br/>
    <br/>
    <form>
    <input type="button" onclick="my()" value="调用函数"/>
    </form>
    <br/>
    <input type="button" onclick="mytxt('拧好')" value="调用有参函数"/>
    <br/>
    <form method="post" action="logi.jsp" onsubmit="return checkForm()">
    </form>
    <br/>
    <input type="button" value="查看消息" onclick="message()"/>
  </body>
</html>
