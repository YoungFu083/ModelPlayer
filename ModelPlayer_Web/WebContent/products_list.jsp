<%@page import="uuu.mplayer.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="uuu.mplayer.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>產品清單</title>
	<%@include file="/subviews/global.jsp"%>
	<script>
			function getProduct(productId){
				//alert(productId);
				//同步GET請求
				//location.href='product.jsp?productId='+productId;
				
				//jQuery ajax(非同步)GET請求
				$.ajax({
					url:'product_fancybox.jsp?productId='+productId,
					method:'GET'
				}).done(getProductDone);	
			}
			
			function getProductDone(result){
				console.log(result);
				$("#productDetail").html(result);//資料帶入productDetail
				
				$.fancybox.open({ //用fancybox開啟productDetail
				    src  : '#productDetail',
				    type : 'inline',
				    opts : {
				      afterShow : function( instance, current ) {
				        console.info('done!');
			      	  }
			    	}
			  	});
				
			}
			
			function getProductsOfType(){
				var type = $("#productsType").val();
				//alert(type);
				switch(type){
				case '1':
					location.replace("?type=1");
					break;
				case '2':
					location.replace("?type=2");
					//alert("2");
					break;
				case '3':
					location.replace("?type=3");
					//alert("3");
					break;
				case '4':
					location.replace("?type=4");
					break;
				case '5':
					location.replace("?type=5");
					break;
				case '0':
					location.replace("?type=0");
					break;
				
				}
				
			}
	</script>
	
	<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/css/header.css">
	<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/css/footer.css">
	<link rel="stylesheet" type="text/css" href="css/products_list.css">
	</head>
<body>

	<%@ include file="/subviews/header.jsp"%>
	
	<div class="articleProductList">
		<hr>
		<select id="productsType" onchange="getProductsOfType()">
			<option value="">選擇系列</option>
			<option value="1">鬼滅之刃</option>
			<option value="2">獵人</option>
			<option value="3">死神</option>
			<option value="4">遊戲</option>
			<option value="5">咒術迴戰</option>
			<option value="0">其它</option>
		</select>
<!-- 		<div class="typeA"> -->
<!-- 			<a href="?type=1">鬼滅之刃</a> <a href="?type=2">獵人</a> <a href="?type=3">死神</a> -->
<!-- 			<a href="?type=4">遊戲王</a> <a href="?type=5">咒術迴戰</a> <a -->
<!-- 				href="?type=0">其它</a> -->
<!-- 		</div> -->
		
		<%
		//1.讀取request中的Parameter
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");

		ProductService service = new ProductService();
		List<Product> list = null;
		if (type != null && type.length() > 0) {
			list = service.getAllProductsByType(Integer.parseInt(type));
		} else {
			list = service.getAllProducts();
		}
		%>
		<ul id='products' type="none">
			<%
			if (list != null && list.size() > 0) {
			%>
			<%
			for (Product p : list) {
			%>
			<li class='productItem'><a
				href="javascript:getProduct(<%= p.getId()%>)"><img
					src='<%=p.getPhotoUrl()%>'></a>
				<div class="imgText">
					<h4 class='productName'>
						<a href="<%= request.getContextPath()%>/product.jsp?productId=<%=p.getId()%>">
						<%= p.getName() %></a></h4>
					<div class='productPrice'>
						<span class='price'><%=p.getUnitPrice()%></span> 元
					</div>
				</div></li>
			<%
			} //end for
			%>
			<%
			} //end if
			%>
		</ul>
	</div>

	<div id='productDetail'></div>

</body>
</html>