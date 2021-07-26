<%@page import="uuu.mplayer.entity.Customer"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <title>會員登入</title>
	  <style>
	  
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="css/login.css">
	  <script type="text/javascript">
    	function refreshCaptcha() {
    		/*alert("123");*/
    		var captchaImage = document.getElementById("captchaImage");
    		captchaImage.src="/mpr/images/captcha.jpg?refresh" + new Date();
		}
    	function showPassword(showBox){
			//alert(showBox.checked);
			if(showBox.checked){
				pwd.type="text";
			}else{
				pwd.type="password";
			}
		}
    </script>
  </head>
  <body>
  	
  	
  	<%@ include file="/subviews/header.jsp" %>
  	
  	<article class="formLogin">
  	<%
  		List<String> errorList = (List<String>)request.getAttribute("errors");
  	%>
  	<%= errorList!=null?errorList:"" %>
  		<form action="login.do" class="box" method="post" autocomplete="off">
  			<h1>會 員 登 入</h1>
  			
  			<span>
  				<label>帳號 :</label>
  				<input type="text" name="id" placeholder="帳號" required value="<%=request.getParameter("id")!=null?request.getParameter("id"):""%>">
  			</span>
  			
  			<span>
  				<label>密碼 :</label>
  				<input id="pwd" type="password" name="password" placeholder="密碼" required value="<%=request.getParameter("password")!=null?request.getParameter("password"):""%>">
  				<input type="checkbox" onchange="showPassword(this)" >顯示
  			</span>
  			
  			<span>
	  			<label ><img id="captchaImage" alt="" src="images/captcha.jpg">
	  				<input type="button"  value="更新驗證碼" onclick="refreshCaptcha()">
	  			</label> 
  				<input type="text" name="CAPTCHA" placeholder="輸入圖片中驗證碼" required="required" >
  			</span>
  			
  			<span class="submitBnt">
  				<input type="submit" value="Login">
  			</span>
  		</form>
  	</article>
    
    <%@ include file="/subviews/footer.jsp" %>	
    
  </body>
</html>