<%@page import="uuu.mplayer.service.ProductService"%>
<%@page import="uuu.mplayer.entity.PaymentType"%>
<%@page import="uuu.mplayer.entity.ShippingType"%>
<%@page import="uuu.mplayer.entity.Product"%>
<%@page import="uuu.mplayer.entity.CartItem"%>
<%@page import="uuu.mplayer.entity.ShoppingCart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>購物車</title>
	  <%@include file="/subviews/global.jsp" %>
	  <script type="text/javascript">
	  $(document).ready(init);
	  function init(){
		  	$("#sPayment option[value='STORE']").attr("disabled",true);
			$("#sPayment option[value='ATM']").attr("disabled",true);
			$("#sPayment option[value='CARD']").attr("disabled",true);
			$("#sPayment option[value='SHOP']").attr("disabled",true);
// 			alert("123");
		}
		  function calculateFee(){
				var paymentFee = $("select[name='payment'] option:selected").attr("data-fee");
				var shippingFee = $("select[name='shipping'] option:selected").attr("data-fee");
				var totalAmount = $("#totalAmount").text();
				console.log(paymentFee, shippingFee, totalAmount);
				if(paymentFee){
					totalAmount = Number(totalAmount) + Number(paymentFee) ;
				}
				
				if(shippingFee){
					totalAmount = Number(totalAmount) + Number(shippingFee) ;
				}
				console.log(totalAmount);
				$("#fee").text(shippingFee);
				$("#totalAmountWithFee").text(totalAmount + ".0");
				
				var shippingValue = $("select[name='shipping']").val();
					
				$("#sPayment option[value='STORE']").attr("disabled",true);
				$("#sPayment option[value='ATM']").attr("disabled",true);
				$("#sPayment option[value='CARD']").attr("disabled",true);
				$("#sPayment option[value='SHOP']").attr("disabled",true);
				
				switch(shippingValue){
				case 'STORE':
					$("#sPayment option[value='STORE']").removeAttr("disabled");
					$("#sPayment option[value='ATM']").removeAttr("disabled");
					$("#sPayment option[value='CARD']").removeAttr("disabled");
					break;
				case 'HOME':
					$("#sPayment option[value='ATM']").removeAttr("disabled");
					$("#sPayment option[value='CARD']").removeAttr("disabled");
					break;
				case 'TAIPEI':
				case 'HSINCHU':
				case 'TAICHUNG':
				case 'KAOHSIUNG':
					$("#sPayment option[value='ATM']").removeAttr("disabled");
					$("#sPayment option[value='CARD']").removeAttr("disabled");
					$("#sPayment option[value='SHOP']").removeAttr("disabled");
				}
				
			}
	  
	  
	  </script>
	  
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/cart.css">
  </head>
	<body>
		
		<%@ include file="/subviews/header.jsp" %>
		
		<article>
			<div>${sessionScope.errors}</div>
<%-- 			<div>${sessionScope.cart}</div> --%>

		<% 
			//ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
			if(cart ==null){
		%>
		
		<p>購物車是空的</p>
		
		<% }else{%>
		<form action="update_cart.do" method="post">
			
			<table class="cart">
				<caption><h2>購物車 共<%= cart.getTotalQuantity() %>件</h2></caption>
				<thead>
					<tr>
						<th>商品資料</th>
						<th>單件價格</th>
						<th>預購</th>
						<th>數量</th>
						<th>小計</th>
						<th>移除</th>
					</tr>
				</thead>
				
				<tbody>
					<% 
						ProductService pService = new ProductService();
						for(CartItem item:cart.getCartSet()){ 
							Product p = item.getProduct();
							boolean preOrder = item.isPreOrdor();
							int stock = pService.getRealTimeStock(p);
							int cartQuantity = cart.getQuantity(item);
							if(!preOrder){
								if(cartQuantity > pService.getRealTimeStock(p))cartQuantity = pService.getRealTimeStock(p);
							}else{
								if(cartQuantity > 5)cartQuantity = 5;
							}
								
					%>
						<tr class="cartItem">
							<td style="text-align: left;">
								<img src="<%= p.getPhotoUrl() %>">
								<div><%= p.getName() %></div>
							</td>
							<td>NT$<%= p.getUnitPrice() %></td>
							<td><%= (preOrder?"是":"否") %></td>
							<td>
								<input type="number" name="quantity<%= item.hashCode() %>" value="<%= cartQuantity %>" style="width: 50px;"
								  <% if(!preOrder){ %>
								  		min="0" max="<%= pService.getRealTimeStock(p) %>"
								  <% }else{ %>
								  		min="0" max="5"
								  <% } // end of if(!preOrder) %>
								  >
								<% if(!preOrder){ %>	
									<span style="color: red;display: block;font-size: small;">現貨庫存:<%= pService.getRealTimeStock(p) %></span>
								<% }else{ %>
									<span style="color: red;display: block;font-size: small;">預購上限為:5</span>
								<% } // end of if(!preOrder) %>
							</td>
							<td>NT$<%= cart.getAmount(item) %></td>
							<td>
								<input type="checkbox" id="deleteItem" name="delete<%= item.hashCode() %>">
							</td>
						</tr>
					<% } //end of for %>
				</tbody>
					
				<tfoot>
					<tr>
						<td colspan="3"><a href="<%= request.getContextPath() %>/products_list.jsp">&lt;&lt;返回商品清單</a></td>
						<td colspan="3">
							<input type="submit" id="updateCart" name="updateCart" value="修改購物車">
							
						</td>
					</tr>
				</tfoot>
			</table>
			
			<!-- shippingAndPayment  -->
			
			<div class="shippingAndPayment">
			<h3 class="h3">選擇送貨及付款方式</h3>
				<div class="sectionBody">
					<div class="shipping group">
						<span>送貨方式</span>
						<select id="sShipping" name="shipping" onchange="calculateFee()" >
							<option value="">請選擇...</option>
							<% for(ShippingType sType:ShippingType.values()){ %>
								<option data-fee="<%= sType.getFee() %>" value="<%= sType.name() %>"><%= sType %></option>
							<% } //end of for %>
						</select>
						<span class="shippingNote">
							NOTE
						</span>
					</div>
					<div class="payment group">
						<span>付款方式</span>
						<select id="sPayment" name="payment" onchange="calculateFee()" >
							<option value="">請先選擇送貨方式</option>
							<% for(PaymentType pType:PaymentType.values()){ %>
								<option  value="<%= pType.name() %>"><%= pType %></option>
							<% } //end of for %>
						</select>
					</div>
				</div>
			</div>
			
			<!-- amountInfo  -->
			
			<div class="amountInfo">
				<h3 class="h3">訂單資訊</h3>
				<div class="sectionBody">
					
					<div class="subTotil">
						<span class="leftSide">小計:</span>
						<span class="rightSide">NT$<span id="totalAmount"><%= cart.getTotalAmount() %></span></span>
					</div>
					<div class="fee">
						<span class="leftSide">運費:</span>
						<span class="rightSide">NT$<span id="fee">0</span></span>
					</div>
					
					<hr>
					<div class="total">
						<span class="leftSide">合計:</span>
						<span class="rightSide">NT$<span id="totalAmountWithFee"><%= cart.getTotalAmount() %></span></span>
					</div>
					<input type="submit" name="checkout" value="確 定 結 帳">
				</div>
			</div>
		
		</form>
		
		<% } //end of if(cart ==null) %>
		
		</article>
		
		<%@ include file="/subviews/footer.jsp" %>
		
	</body>
</html>