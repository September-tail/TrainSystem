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
    <link rel="stylesheet" href="style/admin-user.css">
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
            <a href="showaction" style="background-color: white; color: #000;">
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
<div class="right-top">

    <div class="search-part">
        <form method="post" action="showbystation">
            <label>起始站：</label>
            <input type="text" class="station" name="start_station"/>

            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;终点站：</label>
            <input type="text" class="station" name="end_station"/>
            <!--
            <input type="submit" value="搜索" class="button">
             -->

            <button class="button" type="submit">
                <a style="cursor: pointer">搜索</a>
            </button>

        </form>

    </div>


</div>

<div class="right-part">
    <table style="width: 100%" border="0" id="tb" class="table table-hover table-striped">
        <tr class="content" >
            <th>序号</th>
            <th>车次</th>
            <th>类型</th>
            <th>起始站</th>
            <th>终点站</th>
            <th>出发时间</th>
            <th>到达时间</th>
            <th>历时</th>
            <th>操作</th>
        </tr>
        <s:iterator value="trains">
            <tr class="content-white">
                <th><s:property value="id"/></th>
                <th><s:property value="train_number"/></th>
                <th><s:property value="train_type"/></th>
                <th><s:property value="start_station"/></th>
                <th><s:property value="end_station"/></th>
                <th><s:property value="start_time/3600"/>时
                <s:property value="start_time%3600/60"/>分
                <s:property value="start_time%3600%60"/>秒</th>
                <th><s:property value="end_time/3600"/>时
                <s:property value="end_time%3600/60"/>分
                <s:property value="end_time%3600%60"/>秒</th>
                <th><s:property value="days"/></th>
                <th><a href="deletetrain?id=<s:property value="id"/>">删除</a>|<a href="updatePTrain?train.id=<s:property value="id"/>">编辑</a></th>
            </tr>
        </s:iterator>
    </table>
</div>



</body>
</html>

