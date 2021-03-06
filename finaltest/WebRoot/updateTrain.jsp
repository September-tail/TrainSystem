<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="UTF-8">
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
            <a href="showaction">
                <li>车次列表</li>
            </a>
            <a href="addtrain.jsp" >
                <li>添加车次</li>
            </a>
            <a href="showpasses" >
                <li>站点列表</li>
            </a>
            <a href="addpass.jsp" >
                <li>添加站点</li>
            </a>
            <a href="login.jsp">
                <li>退出</li>
            </a>

        </ul>

    </div>
	</div>

    <s:form action="updatetrain" method="post" cssClass="add-train-form">
    <table class="update-table" >

        <s:hidden name="train.id" value="%{train.id}"></s:hidden>
        <tr class="content">
            <td>更新车次信息</td>
            <td>更新车次信息</td>
        </tr>
        <tr>
            <td>
                <label>车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.train_number" value="%{train.train_number}" cssClass="input" theme="simple"></s:textfield>
            </td>
            <td>
                <label>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.train_type" value="%{train.train_type}" cssClass="input" theme="simple"></s:textfield>
            </td>
        </tr>
        <tr class="content-gray">
            <td>
                <label>起&nbsp;始&nbsp;站&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.start_station" value="%{train.start_station}" cssClass="input" theme="simple"></s:textfield>
            </td>
            <td>
                <label>终&nbsp;点&nbsp;站&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.end_station" value="%{train.end_station}" cssClass="input" theme="simple"></s:textfield>
            </td>
        </tr>
        <tr>
            <td>
                <label>行驶天数：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.days" value="%{train.days}" cssClass="input" theme="simple"></s:textfield></td>
            <td>
                <label>出发时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.start_time" value="%{train.start_time}" cssClass="input" theme="simple"></s:textfield></td>
        </tr>
        <tr class="content-gray">
            <td>
                <label>到达时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="train.end_time" value="%{train.end_time}" cssClass="input" theme="simple"></s:textfield>
            </td>
        </tr>
    </table>
    <button class="button" type="submit">
        <a style="cursor: pointer">确认更新</a>
    </button>
	</s:form>

  </body>
</html>
