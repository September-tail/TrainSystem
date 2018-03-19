<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    <link rel="stylesheet" href="style/admin-update.css">
    <link rel="stylesheet" href="style/add-train.css">
    

  </head>
  
  <header>
    <div class="top">
        <img src="image/huoche.png">
        <a href="showaction">火车购票系统</a>
    </div>
  </header>
  
  <body>
  <div class="left-part">
    <div class="word">
        <ul>
            <a href="user-manage.jsp" >
                <li>用户信息管理</li>
            <a href="showaction" >
                <li>车次列表</li>
            </a>
            <a href="addtrain.jsp" >
                <li>添加车次</li>
            </a>
            <a href="showpasses" >
                <li>站点列表</li>
            </a>
            <a href="addpass.jsp" style="background-color: white; color: #000;">
                <li>添加站点</li>
            <a href="login.jsp">
                <li>退出</li>
            </a>

        </ul>

    </div>
  </div>
  
  <s:form action="addpass" method="post" cssClass="add-train-form">
    <table class="update-table" >
        <tr class="content">
            <td>添加站点信息</td>
            <td>添加站点信息</td>
        </tr>
        <tr>
            <td>
                <label>车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="pass.train_number"/>
            </td>
            <td>
                <label>站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="pass.train_station"/></td>
        </tr>        
        <tr class="content-gray">
            <td>
                <label>到站时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="pass.end_time"/></td>
            <td>
                <label>出站时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="pass.start_time"/></td>
        </tr>
        <tr>
            <td>
                <label>站&nbsp;序&nbsp;号&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="pass.train_length"/></td>
        </tr>
        
    </table>
    <button class="button" type="submit">
        <a style="cursor: pointer">确认添加</a>
    </button>
</s:form>

  </body>
</html>
