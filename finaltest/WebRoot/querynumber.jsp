<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <title>用户查询-车次查询</title>
    <link rel="stylesheet" href="style/admin-update.css">
    <link rel="stylesheet" href="style/admin-user.css">
    <script src="script/laydate/laydate.js"></script>
    <script type="text/javascript">
        laydate.render({
            elem: '#date' //指定元素
        });
    </script>
</head>
<body>
    <header>
        <div class="top">
            <img src="image/huoche.png">
            <a href="querystation.jsp">火车购票系统</a>
        </div>
    </header>
    <div class="search-box">
        <div class="box-header">
            <span><a href="querystation.jsp">站站搜索</a></span>
            <span><a style="color: white; font-weight:bold;" href="querynumber.jsp">车次搜索</a></span>
        </div>
        <div class="box-body">
            <div class="search-part">
                <form method="post" action="usershowbynumber" class="form2">
                    <div class="start">
                        <label>车次：</label>
                        <input type="text" class="input" name="train_number" placeholder="例：D3832">
                    </div>
                    <button class="button" type="submit">
                        <a  style="cursor: pointer">立即搜索</a>
                    </button>
                </form>
            </div>

        </div>
    </div>
</body>
</html>
