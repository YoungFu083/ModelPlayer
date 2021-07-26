<%@page import="java.time.LocalDate"%>
<%@page import="uuu.mplayer.service.ProductService"%>
<%@page import="uuu.mplayer.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>產品介紹</title>
	<%@include file="/subviews/global.jsp" %>
	
	<script type="text/javascript">
// 	$(document).ready(init);
// 	function init(){
		
// 	}
	
	function addCart(){
		//alert("加入購物車!")
		//return true; //繼續原本同步的submit		
		//不做任何回傳，也是繼續原本同步的submit
		
		//改成ajax
		//alert($("#addCartForm").attr("action"));
		//alert($("#addCartForm").serialize());
		$.ajax({
			url:$("#addCartForm").attr("action"),
			method:$("#addCartForm").attr("method"),
			data: $("#addCartForm").serialize()
		}).done(addCartDone);
		return false; //取消原本同步的submit，別忘了在<form... onsubmot='return addCart()'>
	}
	
	function addCartDone(result){
		//alert(result);
		//$(".subCart").text(result);
		location.replace(" <%= request.getContextPath() %>/products_list.jsp");
	}
	
	
	
	</script>
	
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	<link rel="stylesheet" type="text/css" href="css/product.css">
</head>
	<body>
	
		
		
		<% 
			ProductService pService = new ProductService();
			int preOrderNumber = 0;
			String productId = request.getParameter("productId");
			Product p = null;
			if(productId!=null && productId.length()>0){
				ProductService service = new ProductService();
				p = service.getProductById(productId);
			}	
		%>
		
		<div class="articleFancyBox">
		
<%-- 		<%= productId %> --%>
		<% if(p==null) {%>
				<p>查無此產品(<%= productId %>)</p>
			<%}else{ %>
			
			<div class="productBox">
				<div class="productImg">
					<img alt="" src="<%= p.getPhotoUrl() %>">
					<div class="product">
						<h2>【<%= p.getName() %>】</h2>
						<h3> TWD $<%= p.getUnitPrice() %></h3>
						
						<div class="productInfo">
							<div class="preOrder">
								<% if(p.isPreOrder()){ %>
									<% if(LocalDate.now().isBefore(p.getShippingDate())){ preOrderNumber++; %>
											<span>預計出貨日期 : <%= p.getShippingDate()%></span>
											<p>此商品為預購商品。</p>
									<% }else if(p.getStock() < 1){ preOrderNumber++;%>
											<span>預計出貨日期 : <%= LocalDate.now().plusMonths(3)%></span>
											<p>目前庫存不足，請先預購。</p>
									<% } //end of if %>
								<% }else{ %>
									<% if(LocalDate.now().isBefore(p.getShippingDate())){ preOrderNumber++; %>
										<span>預計出貨日期 : <%= p.getShippingDate()%></span>
										<p>此商品為預購商品。</p>
									<% }else{ %>
										<p>此商品為已售完。</p>
									<% } %>
								<% } //end of if(isPreOrder()) %>
							</div>
							<div>
								<%= p.getDescription().replace("\n", "<br>") %>
								
							</div>
						</div>
						
						<hr>
						<form id='addCartForm' action="add_cart.do" method="post" onsubmit="return addCart();">
						<input type="hidden" name="productId" value="<%= productId %>">
							<span>數量 : </span>
							<select name="quantity">
								<% int max = (preOrderNumber > 0 ?5:pService.getRealTimeStock(p)); %>
								<% for(int i = 1 ; i <= max ; i++){ %>
									<option value="<%= i %>"><%= i %></option>
								<% } %>
							</select>
							<% if(preOrderNumber == 0){ %>
								<span style="color: red;font-size: small;">剩餘庫存 : <%= pService.getRealTimeStock(p) %></span>
							<% }else{ %>
								<span style="color: red;font-size: small;">預購上限為 : 5</span>
							<% }	//end of if(preOrderNumber == 0) %>
							<% if(p.isPreOrder()){ %>
								<% if(LocalDate.now().isBefore(p.getShippingDate())){ %>
								
									<input type="hidden" name="preOrder" value="1">
									<input type="submit" value="我要預購">		
																
								<% }else if(p.getStock() < 1){ %>
								
									<input type="hidden" name="preOrder" value="1">
									<input type="submit" value="我要預購">	
																	
								<% }else{ %>
									<input type="hidden" name="preOrder" value="0">
									<input type="submit" value="加入購物車">
								<% } %>
							<%}else{ %>
								<% if(LocalDate.now().isBefore(p.getShippingDate())){ %>
								
									<input type="hidden" name="preOrder" value="1">
									<input type="submit" value="我要預購">
									
								<% }else{ %>
									<input type="hidden" name="preOrder" value="0">
									<input type="submit" value="加入購物車(已售完)" disabled="disabled">
									
								<% } %>
							<% } %>
						</form>
					</div>
				</div>
			</div>
			
		<% }//end of if((p==null)) %>
		
		</div>
		
		 
	</body>
</html>