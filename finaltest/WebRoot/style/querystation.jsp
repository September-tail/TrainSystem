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
	<meta charset="UTF-8">
    <title>用户查询-站站查询</title>
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
                <span><a style="color: white; font-weight:bold;" href="querystation.jsp">站站搜索</a></span>
                <span><a href="querynumber.jsp">车次搜索</a></span>
            </div>
            <div class="box-body">
                <div class="search-part">
                    <form action="station_query" method="post" class="form1">
                        <div class="start">
                            <label>起始站：</label>
                            <select name="startstation" id="startstation" class="select">
                            <option >保定</option>
		                    <option>宝鸡</option>
		                    <option>包头</option>
		                    <option>北京</option>
		                    <option>长春</option>
		                    <option>长沙</option>
		                    <option>成都</option>
		                    <option>重庆</option>
		                    <option>大连</option>
		                    <option>大同</option>
		                    <option>敦煌</option>
		                    <option>福州</option>
		                    <option>广州</option>
		                    <option>贵阳</option>
		                    <option>哈尔滨</option>
		                    <option>邯郸</option>
		                    <option>合肥</option>
		                    <option>衡水</option>
		                    <option>杭州</option>
		                    <option>嘉兴</option>
		                    <option>济南</option>
		                    <option>酒泉</option>
		                    <option>库尔勒</option>
		                    <option>昆明</option>
		                    <option>兰州</option>
		                    <option>连云港</option>
		                    <option>南京</option>
		                    <option>青岛</option>
		                    <option>上海</option>
		                    <option>深圳</option>
		                    <option>沈阳</option>
		                    <option>苏州</option>
		                    <option>武昌</option>
		                    <option>厦门</option>
		                    <option>徐州</option>
		                    <option>西安</option>
		                    <option>银川</option>
		                    <option>郑州</option>
                            </select>
                            <!-- <input type="text" name="startstation" id="startstation"/> -->
                        </div>
                        <div class="end">
                            <label>终点站：</label>
                            <select name="endstation" id="endstation" class="select">
                            <option >保定</option>
		                    <option>宝鸡</option>
		                    <option>包头</option>
		                    <option>北京</option>
		                    <option>长春</option>
		                    <option>长沙</option>
		                    <option>成都</option>
		                    <option>重庆</option>
		                    <option>大连</option>
		                    <option>大同</option>
		                    <option>敦煌</option>
		                    <option>福州</option>
		                    <option>广州</option>
		                    <option>贵阳</option>
		                    <option>哈尔滨</option>
		                    <option>邯郸</option>
		                    <option>合肥</option>
		                    <option>衡水</option>
		                    <option>杭州</option>
		                    <option>嘉兴</option>
		                    <option>济南</option>
		                    <option>酒泉</option>
		                    <option>库尔勒</option>
		                    <option>昆明</option>
		                    <option>兰州</option>
		                    <option>连云港</option>
		                    <option>南京</option>
		                    <option>青岛</option>
		                    <option>上海</option>
		                    <option>深圳</option>
		                    <option>沈阳</option>
		                    <option>苏州</option>
		                    <option>武昌</option>
		                    <option>厦门</option>
		                    <option>徐州</option>
		                    <option>西安</option>
		                    <option>银川</option>
		                    <option>郑州</option>
                            </select>
                            <!-- <input type="text" name="endstation" id="endstation"/> -->
                        </div>
                        
                        <button class="button" type="submit">
                			<a style="cursor: pointer" >立即搜索</a>
            			</button>
                    </form>
                </div>

            </div>
        </div>
<!--  
	<form action="station_query" method="post">
		<input type="text" name="startstation" id="startstation"/>
		<input type="text" name="endstation" id="endstation"/>
		<input type="submit" value="查询"/>
	</form>
-->
</body>
</html>