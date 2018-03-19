<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search-by-number.jsp' starting page</title>
    
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
  
  <body>
  	<header>
        <div class="top">
            <img src="image/huoche.png">
            <a href="querystation.jsp">火车购票系统</a>
        </div>
    </header>
    <div class="result-table">
    	<table class="table table-hover table-striped">
    		<tr>
    			<th>&nbsp;</th>
    			<th>车次</th>
    			<th>站名</th>
    			<th>到站时间</th>
    			<th>出战时间</th>
    			<th>站序号</th>
    		</tr>
    		<s:iterator value="passes" >
    			<tr>
    				<th>&nbsp;&nbsp;</th>
	    			<th><s:property value="train_number"/></th>
	    			<th><s:property value="train_station"/></th>
	    			<th>
	    			<s:property value="end_time/3600"/>时
	    			<s:property value="end_time%3600/60"/>分
	    			<s:property value="end_time%3600%60"/>秒
	    			</th>
	    			<th><s:property value="start_time/3600"/>时
	    			<s:property value="start_time%3600/60"/>分
	    			<s:property value="start_time%3600%60"/>秒
	    			</th>
	    			<th><s:property value="train_length"/></th>
    			</tr>
    		</s:iterator>
    		
    	</table>
    </div>
   
  </body>
</html>