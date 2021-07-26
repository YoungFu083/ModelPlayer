<%@page import="uuu.mplayer.entity.Order"%>
<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>結帳成功</title>
		<style>
		</style>
		<%@include file="/subviews/global.jsp"%>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/check_out_ok.css">
	</head>
	<body>

	<%@ include file="/subviews/header.jsp"%>


	<article>
		<%
			Order order = (Order)request.getAttribute("order");
			if(order!=null){
		%>
		<%-- 		${ requestScope.order} --%>
		<div class="checkOutOkBox">
			<section>
				<div class="sectionHeader">
					<h1>結 帳 成 功 !</h1>
				</div>
				<div class="sectionBody">
					<div class="group">
						<label>訂單編號 : </label><span>#<%= order.getId() %></span>
					</div>
					<div class="group2">
						<label>訂單日期時間 :</label> <span> <%= order.getOrderDate() %>
							/ <%= order.getOrderTime().getHour() %> : <%= order.getOrderTime().getMinute() %>
						</span>
					</div>
					<div class="group">
						<label>付款方式 : </label><span><%= order.getPaymentType().getDescription() %></span>
					</div>
					<div class="group2">
						<label>貨運方式 : </label><span><%= order.getShippingType().getDescription() %></span>
					</div>
					<div class="group">
						<label>收件人姓名 : </label><span><%= order.getRecipientName() %></span>
					</div>
					<div class="group2">
						<label>收件人Email : </label><span><%= order.getRecipientEmail() %></span>
					</div>
					<div class="group">
						<label>收件人手機 : </label><span><%= order.getRecipientPhone() %></span>
					</div>
					<div class="group2">
						<label>收件地址 : </label><span><%= order.getRecipientAddress() %></span>
					</div>
					<div class="group">
						<label>總金額 : </label><span><%= order.getTotalAmount() %></span>
					</div>
				</div>
				<div class="sectionFooter">

					<div class="group">
						<a href="<%= request.getContextPath() %>">&lt;&lt;回首頁</a> <a href="#">
							歷史訂單&gt;&gt;</a>
					</div>
				</div>
			</section>

		</div>


		<% } // end of if(order!=null)%>
	</article>

	<%@ include file="/subviews/footer.jsp"%>
</body>
</html>