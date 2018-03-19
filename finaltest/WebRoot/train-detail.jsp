<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
            <th>&nbsp;&nbsp;</th>
            <th>车次</th>
            <!-- <th>类型</th> -->
            <th>站名</th>
            <th>到站时间</th>
            <th>出站时间</th>
            
        </tr>

        <s:iterator value="#request.list" status="status">
            <tr>
                <th>&nbsp;&nbsp;</th>
                <th><s:if test="#status.first">
                	<s:property value="#request.list[#status.index][0]"/>
                	</s:if></th>
                <!-- <th>普快</th> -->
                <th><s:property value="#request.list[#status.index][1]"/></th>
                
                
                <th><s:if test="#status.index!=0">
                	<s:property value="#request.list[#status.index][3]/3600"/>时
                	<s:property value="#request.list[#status.index][3]%3600/60"/>分
                	<s:property value="#request.list[#status.index][3]%3600%60"/>秒
                	</s:if>
                <s:else>--</s:else></th>
                <th><s:if test="!#status.last">
                	<s:property value="#request.list[#status.index][2]/3600"/>时
                	<s:property value="#request.list[#status.index][2]%3600/60"/>分
                	<s:property value="#request.list[#status.index][2]%3600%60"/>秒
                	</s:if>
                	<s:else>--</s:else>
                </th>
            </tr>
        </s:iterator>
    </table>
</div>
</body>
</html>