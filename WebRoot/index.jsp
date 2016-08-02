<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript" src="myjs.js"></script>
  <body>
  <form action="index.jsp" method="post" id="f">
  	<select name="locale" onchange="change();">
  		<option>请选择国家</option>
  		<option value="en_US">US</option>
  		<option value="zh_CN">CHINA</option>	
  	</select>
  
  </form>
  <button onclick="asynRequest();">异步请求</button>
  <p><b>Status:</b>
<span id="A1"></span>
</p>

<p><b>Status text:</b>
<span id="A2"></span>
</p>

<b>Response:</b>
<br />
<div id="A3"></div>

  
 <fmt:setLocale value="${param.locale }"/>
 <fmt:setBundle basename="message" var="bundle" scope="page"/>

    <center>
    	<h3><fmt:message bundle="${bundle }" key="title"/></h3>
    	<form action="" method="post">
    		<fmt:message bundle="${bundle }" key="username"/>：<input type="text"><br><br>
    		<fmt:message bundle="${bundle }" key="password"/>：<input type="password"><br><br>
    		<input type="submit" value="<fmt:message bundle="${bundle }" key="commit"/>">
    	</form>
    </center>
    
    <fmt:setLocale value="zh_CN"/>
    <fmt:setBundle basename="message" var="bundle" scope="page"/>
    <h4><fmt:message bundle="${bundle}" key="login.error">
    	<fmt:param>账号</fmt:param>
    
    </fmt:message></h4>
    
  </body>
</html>
