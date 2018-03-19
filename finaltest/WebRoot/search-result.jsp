<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!-- 
   @author 15051306 项雨
 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查询结果</title>
    <link rel="stylesheet" href="style/admin-update.css">
    <link rel="stylesheet" href="style/admin-user.css">
    <script type="text/javascript" src="script/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="script/order.js"></script>
</head>
<body> 
	<header>
        <div class="top">
            <img src="image/huoche.png">
            <a href="querystation.jsp">火车购票系统</a>
        </div>
    </header>
    <div class="search-bar">
        <form action="station_queryByNumber" method="post" class="form">
            <div class="train-no">
                <label>车&nbsp;&nbsp;次：</label>
                <input type="text" class="input" name="tnumber" id="tnumber" placeholder="例：D3832">
            </div>
            <div class="start">
                <label>起始站：</label>
                <select  name="startstation" id="startstation" class="select">
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
                <a style="cursor: pointer" >过站详情</a>
            </button>
            
        </form>
    </div>
    <div class="result-table">
	<table class="table table-hover table-striped" summary="user infomation table" id="tableSort">
			<thead>
            <tr>
                <th>&nbsp;&nbsp;</th>
                <th style="cursor: pointer;">车次</th>  <!-- 点击列表标题进行排序 -->
                <th style="cursor: pointer;">类型</th>
                <th style="cursor: pointer;">发站/到站</th>
                <th onclick="$.sortTable.sort('tableSort',1)" style="cursor: pointer;">发/到时间(点击排序)</th>
                <th onclick="$.sortTable.sort('tableSort',2)" style="cursor: pointer;">运行时间(点击排序)</th>
                <th style="cursor: pointer;">参考票价</th>
                <th style="cursor: pointer;">剩余票量</th>
            </tr>
            </thead>
            
            <%-- <c:forEach items="${request.list }" var="u">
            	<th></th>
            </c:forEach> --%>
            <tbody>
            <s:iterator value="#request.list" status="status">
            	<tr>
            		<th>&nbsp;&nbsp;</th>  
			        <th><s:property value="#request.list[#status.index][0]"/></th>
			        <th><s:property value="#request.list[#status.index][1]"/></th>
			        <th>
			        <div>
				        <p><img src="image/始.png" width="16px">&nbsp;<s:property value="#request.list[#status.index][2]"/></p>
				        <p><img src="image/终.png" width="16px">&nbsp;<s:property value="#request.list[#status.index][3]"/></p>
			        </div>
			        </th>
			        <th>  
			        <div>
				        <p><s:property value="#request.list[#status.index][4]/3600"/>时
				        	<s:property value="#request.list[#status.index][4]%3600/60"/>分
				        	<s:property value="#request.list[#status.index][4]%3600%60"/>秒</p>  
				        <p><s:property value="#request.list[#status.index][5]/3600"/>时
				        	<s:property value="#request.list[#status.index][5]%3600/60"/>分
				        	<s:property value="#request.list[#status.index][5]%3600%60"/>秒</p> 
			        </div> 
			        </th> 
			        <th><s:property value="(#request.list[#status.index][4]<#request.list[#status.index][5]?#request.list[#status.index][6]:#request.list[#status.index][6]+86400)/3600"/>时
			        	<s:property value="(#request.list[#status.index][4]<#request.list[#status.index][5]?#request.list[#status.index][6]:#request.list[#status.index][6]+86400)%3600/60"/>分
			        	<s:property value="(#request.list[#status.index][4]<#request.list[#status.index][5]?#request.list[#status.index][6]:#request.list[#status.index][6]+86400)%3600%60"/>秒</th>
			        <th>
                    <div>
                        <p>特等座&nbsp;￥<i><s:property value="#request.list[#status.index][7]"/></i></p>
                        <p>一等座&nbsp;￥<i><s:property value="#request.list[#status.index][8]"/></i></p>
                        <p>二等座&nbsp;￥<i><s:property value="#request.list[#status.index][9]"/></i></p>
                        <p>硬卧&nbsp;￥<i><s:property value="#request.list[#status.index][10]"/></i></p>
                        <p>软卧&nbsp;￥<i><s:property value="#request.list[#status.index][11]"/></i></p>
                        <%-- <P>无座&nbsp;￥<i><s:property value="#request.list[#status.index][6]"/></i></P> --%>
                    </div>
	                </th>
	                <th>
	                    <div>
	                        <p>
	                        <%  
							int i=(int)(1+Math.random()*300); 
							out.print(i);//若要生成1-100的随机数则改为a.nextInt(100)+1即可  
							%>
							张</p>
	                        <p>
	                        <%  
							int j=(int)(1+Math.random()*400); 
							out.print(j);
							%>
							张</p>
	                        <p>
	                        <%  
							int k=(int)(1+Math.random()*400); 
							out.print(k);
							%>
							张</p>
	                        <p>
	                        <%  
							int l=(int)(1+Math.random()*500); 
							out.print(l);
							%>
							张</p>
							<p>
	                        <%  
							int m=(int)(1+Math.random()*500); 
							out.print(m);
							%>
							张</p>
	                    </div>
	                </th>  
			    </tr>  
            </s:iterator>
            </tbody>
	</table>
	</div>
</body>
</html>