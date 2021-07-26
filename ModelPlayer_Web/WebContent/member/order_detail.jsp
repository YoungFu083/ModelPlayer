<%@page import="uuu.mplayer.entity.OrderItem"%>
<%@page import="uuu.mplayer.service.OrderService"%>
<%@page import="uuu.mplayer.entity.Order"%>
<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>訂單明細</title>
	  <style>
	  
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/order_detail.css">
  </head>
  <body>
	
  	<%@ include file="/subviews/header.jsp" %>
		<% 
			
			String orderId = request.getParameter("orderId");
			
			Order order = null;
			if(member != null && orderId != null){
				OrderService oService = new OrderService();
				order = oService.getOrderById(orderId, member);
			}
		%>
		
		
		<article>
<%-- 		<%= order %> --%>
		<% if(order == null){ %>
			<p>查無此訂單</p>
		<% }else{ %>
			<div id="orderDetail" >
				<table class="customer">
					<caption><h2>#<%= order.getId() %>訂單明細</h2></caption>
					<thead>
						<tr>
							<td class="tital">訂單日期時間:</td><td><%= order.getOrderDate() %> / <%= order.getOrderTime() %></td>
							<td class="tital">收件人姓名:</td><td><%= order.getRecipientName() %></td>
							<td class="tital">收件人手機:</td><td><%= order.getRecipientPhone() %></td>
						</tr>
						<tr>
							<td class="tital ">收件人E-mail:</td><td><%= order.getRecipientEmail() %></td>
							<td class="tital ">付款方式:</td><td><%= order.getPaymentType().getDescription() %></td>
							<td class="tital">送貨方式:</td><td><%= order.getShippingType().getDescription() %></td>
							
						</tr>
						<tr>
							<td class="tital">收件人地址:</td><td colspan="4"><%= order.getRecipientAddress() %></td>
						</tr>
					</thead>
				</table>
			<%
				if(order.getOrderItemSet()!=null && order.getOrderItemSet().size()>0){
			%>	
				<table class="product">
					<thead>
						<tr>
							<th>商品名稱</th>
							<th>是否預購</th>
							<th>購買件數</th>
							<th>購買售價</th>
							<th>小計</th>
						</tr>
					</thead>
					
					<tbody>
					<% 
						for(OrderItem item:order.getOrderItemSet()) {
			    		Product p = item.getProduct(); 
					
					%>
						<tr>
							<td><a href="<%= request.getContextPath() %>/product.jsp?productId=<%= item.getProduct().getId() %>"><%= item.getProduct().getName() %></a></td>
							<td><%= (item.isPreOrder()?"是":"否") %></td>
							<td><%= item.getQuantity() %></td>
							<td>NT$<%= item.getPrice() %></td>
							<td>NT$<%= item.getAmount() %></td>
						</tr>
					<% } //end of for %>
					</tbody>
				</table>
			<% } // end of if %>
			</div>
		<% }// end of if(order == null) %>
		</article>

		
		
		
    	
  </body>i
</html>