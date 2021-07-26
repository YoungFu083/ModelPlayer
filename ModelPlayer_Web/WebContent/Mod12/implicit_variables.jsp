<%@page import="java.time.LocalDate"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>隱含變數</title>
</head>
<body>
	<!--  http://localhost:8080/vgb/mod12/implicit_variables.jsp?abc=test&efg=test2  -->
	<p>用了out將現在日期輸出在這一行最後，今天是: <% out.print(LocalDate.now()); %></p>
	<hr>
	<h2>request</h2>
	<p>request的method: <%= request.getMethod() %></p>
	<form action='' method='POST'>
		<label>id:</label><input name='id'>
		<input type='submit' value='送POST給自己這個網頁'>
	</form>
	<p>request的url: <%= request.getRequestURL() %></p>
	<p>request中url的protocol: <%= request.getProtocol() %></p>
	<p>request中url的伺服器 hostName: <%= request.getLocalName() %></p>
	<p>request中url的伺服器 ip address: <%= request.getLocalAddr() %></p>
	<p>request中url的伺服器 portNumber: <%= request.getLocalPort() %></p>
	<p>request中url的Client hostName: <%= request.getRemoteHost() %></p>
	<p>request中url的Client ip address: <%= request.getRemoteAddr() %></p>
	<p>request中url的Client portNumber: <%= request.getRemotePort() %></p>
	<p>request中contextRoot(contextPath): <%= request.getContextPath() %></p>
	<p>request中uri: <%= request.getRequestURI() %></p>
	<% request.setCharacterEncoding("utf-8"); %>
	<p>request中formData name:id : <%= request.getParameter("id") %></p>
	<p>request中formData name:abc : <%= request.getParameter("abc") %></p>
	<p>request中queryString: <%= request.getQueryString() %></p>
	<p>request中headers的user-agent: <%= request.getHeader("user-agent") %></p>
</body>
</html>