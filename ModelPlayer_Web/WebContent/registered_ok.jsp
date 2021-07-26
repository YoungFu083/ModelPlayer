<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="refresh" content="3; url=<%= request.getContextPath() %>">
	  <title>註冊成功</title>
	  <style>
	  
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="css/login_ok.css">
  </head>
  <body>
  
  	<%@ include file="/subviews/header.jsp" %>
  	
  	<article>
  		<% 
  		Customer c = (Customer)request.getAttribute("customer");//註冊成功但未登入
		//Customer c = (Customer)session.getAttribute("member");//註冊成功並直接登入
  		%>
  		<% if(c != null) {%>
  			<h1><%= c.getName() %>歡迎加入會員 !</h1>
  		<% }else {  %>
  			<h1>註冊失敗!!!</h1>
  		<% } //end of if%>
  		<h2>3秒後會回到<a href="<%= request.getContextPath() %>">首頁</a></h2>
  	</article>
  	
    <%@ include file="/subviews/footer.jsp" %>
    
  </body>
</html>