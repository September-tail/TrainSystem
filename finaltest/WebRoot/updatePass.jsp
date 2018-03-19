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
    
    <title>My JSP 'updatePass.jsp' starting page</title>
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
    

    <s:form action="updatepass" method="post" cssClass="add-train-form">
    <table class="update-table" >

        <s:hidden name="pass.id" value="%{pass.id}"></s:hidden>

        <tr class="content">
            <td>更新站点信息</td>
            <td>更新站点信息</td>
        </tr>
        <tr>
            <td>
                <label>车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="pass.train_number" value="%{pass.train_number}" cssClass="input" theme="simple"></s:textfield>
            </td>
            <td>
                <label>站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="pass.train_station" value="%{pass.train_station}" cssClass="input" theme="simple"></s:textfield>
            </td>
        </tr>
        
        <tr class="content-gray">
            <td>
                <label>到站时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="pass.end_time" value="%{pass.end_time}" cssClass="input" theme="simple"></s:textfield></td>
            <td>
                <label>出站时间：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="pass.start_time" value="%{pass.start_time}" cssClass="input" theme="simple"></s:textfield></td>
        </tr>
        <tr >
            <td>
                <label>站&nbsp;序&nbsp;号&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <s:textfield name="pass.train_length" value="%{pass.train_length}" cssClass="input" theme="simple"></s:textfield>
            </td>
            
        </tr>
        
    </table>
    <button class="button" type="submit">
        <a style="cursor: pointer">确认更新</a>
    </button>
	</s:form>
  </body>
</html>
