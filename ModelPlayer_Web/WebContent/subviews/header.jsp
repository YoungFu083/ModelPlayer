<%@page import="uuu.mplayer.entity.Product"%>
<%@page import="uuu.mplayer.entity.CartItem"%>
<%@page import="uuu.mplayer.service.ProductService"%>
<%@page import="uuu.mplayer.entity.ShoppingCart"%>
<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%  
		ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
  		Customer member = (Customer)session.getAttribute("member");
  	%>
  	
	<header id="header">
  			<a href="<%= request.getContextPath() %>" >
  				<img alt="logo" src="<%= request.getContextPath() %>/images/logo.png" class="logo">
  			</a>
  			
  			<div class="meun">
	  			<ul >
	  				<li><a href="<%= request.getContextPath() %>">首頁</a></li>
	  				<li><a href="<%= request.getContextPath() %>/products_list.jsp">商品</a></li>	 			
	  				<li><a href="#"><img src="<%= request.getContextPath() %>/images/member.png" style="width: 21px;">會員</a>
	  					<ul>
	  						<% if(member == null){ %>
		  						<li><a href="javascript:login()">登入</a></li>
		  						<li><a href="<%= request.getContextPath() %>/registered.jsp">註冊</a></li>
		  					<% }else{ %>
		  						<li class="customerName">${sessionScope.member.getName()} 您好 !</li>
		  						<li><a href="#">會員資料</a></li>
		  						<li><a href="<%=request.getContextPath() %>/member/orders_history.jsp">歷史訂單</a></li>
		  						<li><a href="<%=request.getContextPath() %>/logout.do">登出</a></li>
		  					<% } //end of  if(member == null)%>
	  					</ul>
	  				</li>
	  				<li id="subCartHander" onmouseenter="subCartEnterHander(this)" onmouseleave="subCartLeaveHander(this)">  
	  					<a href="<%=request.getContextPath() %>/member/cart.jsp"><img src="<%= request.getContextPath() %>/images/cart.png" style="width: 21px;">購物車(${sessionScope.cart.getTotalQuantity()})</a>
	  				</li>
	  			</ul>
  			</div>
  			<div id='loginDiv'></div>
  	</header>
  	<% 
  		if(cart != null){ 
  			ProductService pService = new ProductService();
  			
  	%>
  	<div class="subCart" onmouseenter="subCartEnterHander(this)" onmouseleave="subCartLeaveHander(this)">
	  	<table>
	  		<thead>
	  			<tr>
	  				<th>商品名稱</th>
	  				<th>是否預購</th>
	  				<th>數量</th>
	  				<th>小計</th>
	  			</tr>
	  		</thead>
	  		<tbody>
	  			<% 
	  				for(CartItem item:cart.getCartSet()){ 
						Product p = item.getProduct();
						boolean preOrder = item.isPreOrdor();
						int stock = pService.getRealTimeStock(p);
						int cartQuantity = cart.getQuantity(item); 
					%>
		  			<tr>
		  				<td><%= p.getName() %></td>
		  				<td><%= (preOrder?"是":"否") %></td>
		  				<td><%= cartQuantity %></td>
		  				<td><%= cart.getAmount(item) %></td>
		  			</tr>
	  			<% } %>
	  		</tbody>
	  	</table>
	  	<a href="<%= request.getContextPath() %>/member/cart.jsp"><div class="checkOut">結帳</div></a>
	</div>
  	<% } %>
  	<script>
  		
  	
  		function subCartEnterHander(){
  			$(".subCart").addClass("show");
  		}
  		
  		function subCartLeaveHander(){
//   			alert("546");
  			$(".subCart").removeClass("show");
  		}
  		
		function login(){
			//alert('login');			
			//用同步GET請求帶出login.jsp
<%-- 			location.href='<%= request.getContextPath()%>/login.jsp'; --%>			
			//用jquery非同步(Ajax) GET請求帶出login.jsp
			$.ajax({
				url:'<%= request.getContextPath()%>/login_fancybox.jsp',
				method:'GET'
			}).done(loginDone);			
		}
		
		function loginDone(result, textStatus, jqXHR){
			//console.log(result);
			$("#loginDiv").html(result);//資料帶入loginDiv
			
			$.fancybox.open({ //用fancybox開啟loginDiv
			    src  : '#loginDiv',
			    type : 'inline',
			    opts : {
			      afterShow : function( instance, current ) {
			        console.info('done!');
		      	  }
		    	}
		  	});
		}
	</script>