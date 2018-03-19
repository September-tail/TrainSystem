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
        <a href="user-manage.jsp" style="background-color: white; color: #000;">
                <li>用户信息管理</li>
            </a>
            <a href="showaction" >
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
            <a href="login.jsp">
                <li>退出</li>
            </a>

        </ul>

    </div>
  </div>
  
  <s:form action="user-manage" method="post" cssClass="add-train-form">
    <table class="update-table" >
        <tr class="content">
            <td>添加用户信息</td>
            <td>添加用户信息</td>
        </tr>
        <tr>
            <td>
                <label>用&nbsp;&nbsp;户&nbsp;&nbsp;名&nbsp;&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="user.user_name"/></td>
                 <td>
                <label>密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="input" type="text" name="user.user_pwd"/></td>
        </tr>        
        <tr class="content-gray">
            
            <td>
                <label>常用联系人名：</label>
                <input class="input" type="text" name="user.phone"/></td>
                <td>
                <label>身份证号码:&nbsp;</label>
                <input class="input" type="text" name="user.cardID"/></td>
        </tr>
       
        
    </table>
    <button class="button" type="submit">
        <a style="cursor: pointer">确认添加</a>
    </button>
</s:form>

  </body>
</html>
