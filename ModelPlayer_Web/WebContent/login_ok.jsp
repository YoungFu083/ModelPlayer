<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="refresh" content="3; url=<%= request.getContextPath() %>">
	  <title>登入成功</title>
	  <style>
	  
	  </style>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="css/login_ok.css">
  </head>
  <body>
  	
	 <%@ include file="/subviews/header.jsp" %>
	 
  	<article>
  		<h1><%= member != null?member.getName():"無人登入" %> 你好 !</h1>
  		<h2>3秒後會回到<a href="<%= request.getContextPath() %>">首頁</a></h2>
  	</article>
  	
    <%@ include file="/subviews/footer.jsp" %>
    
  </body>
</html>