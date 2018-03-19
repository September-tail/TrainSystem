<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!-- 
   @author 15051706 温昊然
 -->  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <title>regist</title>  
    <script>  
    function jumpToLogin(){  
    document.location.href="login.jsp";  
    }  
    </script>  
    <link href="style/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style/login_2.css">
  </head>  
    
  <body>  
  <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">火车购票系统</a>
		</div>
	</div>
  </nav>
  <div class="login">
	<div class="box-header">
		<sapn><a href="login.jsp" style="color: white; font-weight:bold;">用户注册</a></sapn>
	</div>
	<div class="box-body">
		<form class="form-signin" action="regist" method="post">
			<input type="text" id="inputNumber" name="admin.name" class="form-control" placeholder="请输入您的账号" required autofocus>
			<label for="inputPassword" class="sr-only">密码</label>
			<input type="password" id="inputPassword" name="admin.password" class="form-control" placeholder="请输入密码" required>
			<!-- 新增部分 -->
			<input type="text" id="inputPhone_number" name="admin.phone_number" class="form-control" placeholder="请输入联系电话" required>
			<input type="text" id="inputPeople_name" name="admin.people_name" class="form-control" placeholder="请输入常用联系人姓名" required>
			<input type="text" id="inputPeople_phone" name="admin.people_phone" class="form-control" placeholder="请输入常用联系人身份证" required>
			<br>
			<input class="btn btn-lg btn-primary btn-block" type="submit" value="注册" >
			<a href="login.jsp" class="btn btn-lg btn-primary btn-block">返回登陆</a>
		</form>
			
	</div>
	</div>
<!-- 
 <s:form action="regist" method="post">  
  <table>  
    <tr><td>用户<input type="text" name="admin.name"/></td></tr>  
    <tr><td>密码<input type="password" name="admin.password"/></td></tr>  
    <tr><td><input type="submit" value="注册"/></td><td><input type="button" value="返回登录" onclick="jumpToLogin()"/></td></tr>  
    </table>  
  </s:form>  
   -->
  </body>  
</html>  