<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changepass.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="style/login_2.css">

  </head>
  
  <body>
  <div class="turn-square">
  <p>中转信息</p>
  <table>
  	<s:iterator value="#request.list" status="status">
  		<tr>
  			<s:iterator value="#request.list[#status.index]" status="a">
  			<th><s:property value="#request.list[#status.index][#a.index]"/></th>
  			</s:iterator>
  		</tr>
    </s:iterator>
  </table>
   
	</div>
  </body>
</html>
