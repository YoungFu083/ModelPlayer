<%@page import="uuu.mplayer.entity.ShippingType"%>
<%@page import="uuu.mplayer.entity.PaymentType"%>
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
	  <%@include file="/subviews/global.jsp" %>
	  <title>結帳</title>
	  <style>
	  
	  </style>
	  <script >
	  $(init);
	  function init(){
			repopulateForm();
		}
		
		function repopulateForm(){
			//alert("Hello");
			<% if("POST".equals(request.getMethod())) {%>
			$("input[name='receive_name']").val('<%= request.getParameter("receive_name")%>');
			$("input[name='receive_email']").val('<%= request.getParameter("receive_email")%>');
			$("input[name='receive_phone']").val('<%= request.getParameter("receive_phone")%>');			
// 			changeShippingAddressType($("select[name='shippingType']"));
			
			$("input[name='receive_address']").val('<%= request.getParameter("receive_address")%>');
			$("#receive_address").text('<%= request.getParameter("receive_address")%>');
			<%}%>			
		}
	  
	  var upOrDown = 1;			
	  function imgHandler() {
		  
			$("#cartTable").slideToggle(500);
// 			alert(upOrDown)
			if(upOrDown == 1){
				upOrDown--;
				$("#icon").attr("src","<%= request.getContextPath() %>/images/down.png");
				
			}else{
				upOrDown++;
				$("#icon").attr("src","<%= request.getContextPath() %>/images/up.png");
			}
		}
	  
	  
	  
	  
	  
	  </script>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/check_out.css">
  </head>
	<body>
		
		<%@ include file="/subviews/header.jsp" %>
		
		<article>
<%-- 			<div>${sessionScope.cart}</div> --%>

		<% 
			
			//ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
		
			String pDescription ="";
			for(PaymentType pType :PaymentType.values()){
				if(pType.name().equals(session.getAttribute("payment"))){
					pDescription = pType.getDescription();
				}
			}
			
			String sDescription = "";
			int sFee = 0;
			for(ShippingType sType :ShippingType.values()){
				if(sType.name().equals(session.getAttribute("shipping"))){
					sDescription = sType.getDescription();
					sFee = (int)sType.getFee();
				}
			}
			//ShippingType sType = (ShippingType)session.getAttribute("shipping");
			if(cart ==null){
			
		%>
		
		<p>購物車是空的</p>
		
		<% }else{%>
		
		${requestScope.errors}
		<form action="check_out.do" method="post" id='cartForm'>
			
			<div class="panel_head">
				<h3>合計:NT$<%= cart.getTotalAmount() %></h3>
				<h5>購物車(<%= cart.getTotalQuantity() %>件)<img  id="icon" onclick="imgHandler()" style="width: 24px;vertical-align: middle;cursor: pointer;" src="<%= request.getContextPath() %>/images/up.png"></h5>
			</div>
			<div id="cartTable">
			<table class="cart" id="table">
				<thead>
					<tr>
						<th>商品資料</th>
						<th>單件價格</th>
						<th>預購</th>
						<th>數量</th>
						<th>小計</th>
					</tr>
				</thead>
				
				<tbody>
					<% 
						for(CartItem item:cart.getCartSet()){ 
							Product p = item.getProduct();
							boolean preOrder = item.isPreOrdor();					
					%>
						<tr class="cartItem">
							<td style="text-align: left;">
								<img src="<%= p.getPhotoUrl() %>">
								<div><%= p.getName() %></div>
							</td>
							<td>NT$<%= p.getUnitPrice() %></td>
							<td><%= (preOrder?"是":"否") %></td>
							<td><%= cart.getQuantity(item) %></td>					 
							<td>NT$<%= cart.getAmount(item) %></td>
						</tr>
					<% } //end of for %>
				</tbody>
					
				<tfoot>
					<tr>
						<td colspan="7">		
							<div class="amountInfo">
								<div class="subtotal group">
									<span class="leftSide">&emsp;&emsp;&emsp;小計:</span>
									<span class="rightSide">NT$<%= cart.getTotalAmount() %></span>
								</div>
								<div class="fee group">
									<span class="leftSide">運費:</span>
									<span class="rightSide">NT$<%= sFee %></span>
								</div>
								<div class="total group">
									<span class="leftSide">&emsp;&emsp;&emsp;合計:</span>
									<span class="rightSide">NT$<%= cart.getTotalAmount() + sFee %></span>
								</div>
							</div>
							<div style="width: 100px;display:block;">
								<a href="<%= request.getContextPath() %>/member/cart.jsp" style="text-decoration: none;vertical-align: bottom;">回到購物車</a>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
			</div>
			<!-- 	member_data		 -->
			
			<div class="left">
				<section class="member_data">
					<div class="section_header">
						<h3>顧客資料</h3>
					</div>
					<div class="section_body">
						
						<div class="form_group">
							<span>會員姓名: </span><br>
							<span class="member">${sessionScope.member.getName()}</span>
						</div>
						<div class="form_group">
							<span>會員Email: </span><br>
							<span class="member">${sessionScope.member.getEmail()}</span>
						</div>
						<div class="form_group">
							<span>會員手機: </span><br>
							<span class="member">${sessionScope.member.getPhone()}</span>
						</div>
					</div>
				</section>
				
				<!-- 	order_note		 -->
			
				<section class="order_note">
					<div class="section_header">
						<h3>訂單備註</h3>
					</div>
					<div class="section_body">
						<textarea name="member_note" placeholder="有什麼想告訴賣家嗎？"></textarea>
					</div>
				</section>
				
			</div>
			
			<!-- 	receive_data		 -->
			<div class="right">
				<section class="receive_data">
					<div class="section_header">
						<div class="rightSide">運費:NT$<span><%= sFee %></span></div>
						<h3>收件人資料</h3>
					</div>
					<div class="section_body">
						
						<p>已選擇的送貨方式:<span><%= sDescription %></span></p>
						<div class="form_group">
							<label>
								<input type="checkbox" onchange="copyMember()">收件人資料與顧客資料相同
							</label>
						</div>
						<div class="form_group">
							<span>收件人姓名</span>
							<input type="text" id="name" name="receive_name" required>
						</div>
						<div class="form_group">
							<span>收件人Email</span>
							<input type="email" id="email" name="receive_email" required>
						</div>
						<div class="form_group">
							<span>收件人手機</span>
							<input type="text" id="phone" name="receive_phone" required>
						</div>
						
						<hr>
						
						<% if(sDescription.equals("送貨到府")){ %>
							<div class="form_group">
								<span>收件人地址</span>
								<input type="text" id="address" name="receive_address" required>
							</div>
						<% }else if(sDescription.equals("台北門市取貨")){ %>
							<div class="form_group">
								<span>台北門市地址 : </span>
								<input type="hidden" id="address" name="receive_address" 
									required value="台北門市地址:台北市松山區復興北路99號14樓">
								<label>台北市松山區復興北路99號14樓</label>
							</div>	
						<% }else if(sDescription.equals("新竹門市取貨")){ %>
							<div class="form_group">
								<span>新竹門市地址 : </span>
								<input type="hidden" id="address" name="receive_address" 
									required value="新竹門市地址:新竹市東區光復路二段295號3樓之2">
								<label>新竹市東區光復路二段295號3樓之2</label>
							</div>	
						<% }else if(sDescription.equals("台中門市取貨")){ %>
							<div class="form_group">
								<span>台中門市地址 : </span>
								<input type="hidden" id="address" name="receive_address" 
									required value="台中門市地址:台中市西區臺灣大道二段309號2樓">
								<label>台中市西區臺灣大道二段309號2樓</label>
							</div>	
						<% }else if(sDescription.equals("高雄門市取貨")){ %>
							<div class="form_group">
								<span>高雄門市地址 : </span>
								<input type="hidden" id="address" name="receive_address" 
									required value="高雄門市地址:高雄市前鎮區中山二路2號25樓">
								<label>高雄市前鎮區中山二路2號25樓</label>
							</div>	
						<% }else if(sDescription.equals("超商取貨")){ %>
							<div class="form_group">
								<input type="button" id='chooseStoreBtn' value='選擇超商' onclick='goEzShip()'>
								<input type="hidden" id="address" name="receive_address" value="">
								<label id="receive_address"></label>
							</div>
						<% } %>
					</div>
				</section>
				
				
				
				<!-- 	payment	 -->
				
				<section class="payment">
					<div class="section_header">
						<h3>付款資料</h3>
					</div>
					<div class="section_body">
						<span>已選擇的付款方式:<span><%= pDescription %></span></span>
					</div>
				</section>
			</div>
			
			
			<input type="submit" value="以上資訊確認無誤，提交訂單!">
		
			
		</form>
		</article>
		
		<!-- 觸發EZShip所需要的[js 和隱藏form] start -->
			<script>                        	
	    	function goEzShip() {//前往EZShip選擇門市
	            $("input[name='receive_name']").val($("input[name='receive_name']").val().trim());
	            $("input[name='receive_email']").val($("input[name='receive_email']").val().trim());
	            $("input[name='receive_phone']").val($("input[name='receive_phone']").val().trim());
	            $("input[name='receive_address']").val($("input[name='receive_address']").val().trim());
	            
	            var protocol = "<%= request.getProtocol().toLowerCase().substring(0, request.getProtocol().indexOf("/")) %>";
	            var ipAddress = "<%= java.net.InetAddress.getLocalHost().getHostAddress()%>";
	            var url = protocol + "://" + ipAddress + ":" + location.port + "<%=request.getContextPath()%>/member/ezship_callback.jsp";                   
	            $("#rtURL").val(url);
	            
	            $("#webPara").val($("form[action='check_out.do']").serialize()); 
	            $("#webPara").val($("#cartForm").serialize());
	            
// 		        alert(url); //測試用，測試完畢後請將此行comment
// 		        alert($("#webPara").val()) //測試用，測試完畢後請將此行comment

		        $("#ezForm").submit();
		    }
	    	
	    	function copyMember(){
				<%
					Customer member1 = (Customer)session.getAttribute("member");
					if(member1!=null){
				%>
					$("#name").val('${sessionScope.member.name}');
					$("#email").val('${sessionScope.member.email}');
					$("#phone").val('${sessionScope.member.phone}');
// 					$("#address").val('${sessionScope.member.address}');
					<% if(sDescription.equals("送貨到府")){ %>
						$("#address").val('${sessionScope.member.address}');
					<% } //end of if(sDescription.equals("送貨到府"))%>
				<%}else{%>
					alert("請先登入");
				<% } %>
			}
		    </script>
		    <form method="post" name="simulation_from" action="http://map.ezship.com.tw/ezship_map_web.jsp" id="ezForm">
		        <input type="hidden" name="suID"  value="test@vgb.com"> <!-- 業主在 ezShip 使用的帳號, 隨便寫 -->
		        <input type="hidden" name="processID" value="VGB202107050000005"> <!-- 購物網站自行產生之訂單編號, 隨便寫 -->
		        <input type="hidden" name="stCate"  value=""> <!-- 取件門市通路代號 -->
		        <input type="hidden" name="stCode"  value=""> <!-- 取件門市代號 -->
		        <input type="hidden" name="rtURL" id="rtURL" value=""> <!-- 回傳路徑及程式名稱 -->
		        <input type="hidden" id="webPara" name="webPara" value=""> <!-- 結帳網頁中cartForm中的輸入欄位資料。ezShip將原值回傳，才能帶回結帳網頁 -->
		    </form>	
		    <!-- 觸發EZShip所需要的[js 和隱藏form] end -->
		<% } //end of if(cart ==null) %>
		
		
		
		
	</body>
</html>