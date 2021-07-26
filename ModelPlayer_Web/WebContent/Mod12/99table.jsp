<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>99 tables</title>
	<style type="text/css">
		table{
			border-collapse: collapse;
			width: 80%;
			margin: auto;
		}
		
		table td , table caption{
	 		border: 1px solid ;
	 		padding: 8px;
		}
		
		table tr:nth-child(even){
			background-color: #f2f2f2;
		}
		
		table tr:hover {
			background: #ddd;
		}
		
		table caption{
			padding: 8px 3px;
			background-color: #04AA6D;
			color: #fff; 
		}
	
	</style>
</head>
<body>
	<table>
		<caption>99 tables</caption>
		<% for(int i = 1 ; i < 10 ; i++){ %>
		<tr>
			<% for(int j = 1 ; j < 10 ; j++){ %>
			<td><%= i %> * <%= j %> = <%= i*j %></td>
			<% } %>
		</tr>
		<% } %>
	</table>
</body>
</html>