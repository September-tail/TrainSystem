<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <!-- Bootstrap core CSS -->
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style/login_2.css">
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
        <sapn><a href="login.jsp">用户登陆</a></sapn>
        <span><a href="login_2.jsp" style="color: white; font-weight:bold;">管理员登陆</a></span>
    </div>
    <div class="box-body">
        <form class="form-signin" action="login" method="post">
            <input type="text" id="inputNumber" name="admin.name" class="form-control" placeholder="请输入您的账号" required autofocus>
            <label for="inputPassword" class="sr-only">密码</label>
            <input type="password" id="inputPassword" name="admin.password" class="form-control" placeholder="请输入密码" required>
            <br>
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="登录" >
        </form>
    </div>
</div>

</body>
</html>

