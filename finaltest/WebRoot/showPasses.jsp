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
    
    <title>My JSP 'showPasses.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
            <a href="showaction" >
                <li>车次列表</li>
            </a>
            <a href="addtrain.jsp" >
                <li>添加车次</li>
            </a>
            <a href="showpasses" style="background-color: white; color: #000;">
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
         <form method="post" action="showpassbynumber">
             <label>车次：</label>
             <input type="text" class="input" name="train_number"/>
			 <!-- 
             <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;终点站：</label>
             <input type="text" class="station" name="end_station"/>
             
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
    			<th>站名</th>
    			<th>到站时间</th>
    			<th>出战时间</th>
    			<th>站序号</th>
    			<th>操作</th>
    		</tr>
    		<s:iterator value="passes" >
    		<tr class="content-white">
    			<th><s:property value="id"/></th>
    			<th><s:property value="train_number"/></th>
    			<th><s:property value="train_station"/></th>
    			<th><s:property value="end_time/3600"/>时
                <s:property value="end_time%3600/60"/>分
                <s:property value="end_time%3600%60"/>秒</th>
    			<th><s:property value="start_time/3600"/>时
                <s:property value="start_time%3600/60"/>分
                <s:property value="start_time%3600%60"/>秒</th>
    			<th><s:property value="train_length"/></th>
    			<th><a href="deletepass?id=<s:property value="id"/>">删除</a>|<a href="updatePPass?pass.id=<s:property value="id"/>">编辑</a></th>
    		</tr>
    		</s:iterator>
    	</table>
    	
    </div>
  </body>
</html>
