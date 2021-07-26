<%@page import="uuu.mplayer.entity.Order"%>
<%@page import="java.util.List"%>
<%@page import="uuu.mplayer.service.OrderService"%>
<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>歷史訂單</title>
	  <style>
	  
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  
	  
	  
	
	  
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orders_history.css">
  </head>
  <body>
	
  <%@ include file="/subviews/header.jsp" %>
  		
		<%
			List<Order> list = null;
			if(member!=null){
				OrderService oService = new OrderService();
				list = oService.getOrderHistory(member.getId());
			}
			
			
		
		%>
		<article>
		
		<% if(list != null){ %>
			<div class="orderlist">
				<table class="orders">
					
					<caption><h2>歷史訂單</h2></caption>
					
					<thead>
						<tr>
							<th>訂單編號</th>
							<th>訂購時間</th>
							<th>付款/貨運 方式</th>
							<th>收件地址</th>
							<th>總金額</th>
							<th>訂單明細</th>
						</tr>
					</thead>
				
					<tbody>
				<% for(Order order:list){ %>
						<tr>
							<td>#<%= order.getId() %></td>
							<td><%= order.getOrderDate() %> <%= order.getOrderTime() %></td>
							<td><%= order.getPaymentType().getDescription() %> / <%= order.getShippingType().getDescription() %></td>
							<td><%= order.getRecipientAddress() %></td>
							<td style="text-align: left;">NT&nbsp;$<%= order.getTotalAmount() %></td>
							<td><a href="order_detail.jsp?orderId=<%= order.getId() %>">訂單明細</a></td>
						</tr>

				<% } //end of for(Order order:list) %>		
					</tbody>
				</table>
				
						
			</div>
		<% } else{ %>
				<p>無歷史訂單</p>
		<% }// end of if(list != null) %>
		</article>

    	
  </body>
</html>