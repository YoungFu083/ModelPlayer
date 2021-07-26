<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>index</title>
	  <style>
	 
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  <script type="text/javascript">

       
	  
	  	
	  </script>
	  
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="css/index.css">
  </head>
  <body>
	
  	<%@ include file="/subviews/header.jsp" %>
  	
  	<article>
  		<!-- image slider start -->
  		<div class="slider">
  			<div class="slides">
  				<!-- radio buttons start -->
  				<input type="radio" name="radio-btn" id="radio1">
  				<input type="radio" name="radio-btn" id="radio2">
  				<input type="radio" name="radio-btn" id="radio3">
  				<input type="radio" name="radio-btn" id="radio4">
  				<!-- radio buttons end -->
  				
  				<!-- slide images start -->
  				<div class="slide first">
  					<img alt="" src="images/no1.jpg">
  				</div>
  				
  				<div class="slide">
  					<img alt="" src="images/no2.jpg">
  				</div>
  				
  				<div class="slide">
  					<img alt="" src="images/no3.jpg">
  				</div>
  				
  				<div class="slide">
  					<img alt="" src="images/no4.jpg">
  				</div>
  				<!-- slide images end -->
  				<!-- automatic navigation start -->
  				<div class="navigation-auto">
  					<div class="auto-btn1"></div>
  					<div class="auto-btn2"></div>
  					<div class="auto-btn3"></div>
  					<div class="auto-btn4"></div>
  				</div>
  				<!-- automatic navigation end -->
  			</div>
  			<!-- manual navigation start -->
  			<div class="navigation-manual">
  				<label for="radio1" class="manual-btn"></label>
  				<label for="radio2" class="manual-btn"></label>
  				<label for="radio3" class="manual-btn"></label>
  				<label for="radio4" class="manual-btn"></label>
  			</div>
  			<!-- manual navigation end -->
  		</div>
  		<!-- image slider end -->
  	
  	</article>
		
	<script type="text/javascript">
		var counter = 1;
		setInterval(function(){
			document.getElementById('radio' + counter).checked = true;
			counter++;
			if(counter > 4){
				counter = 1;
			}
		}, 5000);
		
	
	</script>	

    	
  </body>
</html>