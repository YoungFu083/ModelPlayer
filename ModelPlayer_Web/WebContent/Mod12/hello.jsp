<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Random"%>
<%@page import="uuu.mplayer.entity.Customer"%>
<%@page import="uuu.mplayer.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>Hello, 現在client的時間:
		<script>
			document.write(new Date());
		</script>
	</h2>	
	<%	//取得現在日期時間(java.util.Date or java.time.LocalDateTime)
		//Date now = new Date(); //java.util.Date
		LocalDateTime now = LocalDateTime.now();
		System.out.println(now); //輸出在server console
	%>
	<h2>Hello! 現在server時間:
		<%	
			out.println(now); //輸出在jsp			
		%>		 
		<%
			Thread.sleep(new Random().nextInt(1200)+300);//故意產生server的延遲 
		%>
	</h2>
		<%
			CustomerService service = new CustomerService();
			Customer c = service.login("A123456789", "asdf1234");			
			System.out.println(c); 
		%>
	<p>
		帳號: <%= c.getId() %><br>
		姓名: <% out.println(c.getName()); %><br>
		密碼:<% out.println(c.getPassword()); %><br>
		性別:<% out.println(c.getGender()); %><br>
		email:<% out.println(c.getEmail()); %><br>
		生日:<% out.println(c.getBirthday()); %>, <% out.println(c.getAge()); %>歲<br>		
		地址:<% out.println(c.getAddress()); %><br>
		電話:<%= c.getPhone() %><br>
		是否訂閱電子報: <%= c.isSubscribed()?"是":"否" %>
	</p>
	
	
</body>
</html>