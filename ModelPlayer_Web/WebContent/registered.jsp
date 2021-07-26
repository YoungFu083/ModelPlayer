<%@page import="uuu.mplayer.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
	  <meta charset="UTF-8">
	  <title>註冊</title>
	  <style>
	  
	  </style>
	  <%@include file="/subviews/global.jsp" %>
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/header.css">
	  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/footer.css">
	  <link rel="stylesheet" type="text/css" href="css/registered.css">
	  <script type="text/javascript">
	  <% request.setCharacterEncoding("utf-8"); %>
    	function refreshCaptcha() {
    		/*alert("123");*/
    		var captchaImage = document.getElementById("captchaImage");
    		captchaImage.src="/mpr/images/register_captcha.jpg?refresh" + new Date();
		}
    	
		$(document).ready(repopulateForm);	
		
		function repopulateForm(){
// 			alert("Hello");
			<% if("POST".equals(request.getMethod())) {%>
				$("input[name='id']").val("<%= request.getParameter("id")%>");
<%-- 				$("input[name='password1']").val('<%= request.getParameter("password1")%>'); --%>
<%-- 				$("input[name='password2']").val('<%= request.getParameter("password2")%>'); --%>
				$("input[name='name']").val('<%= request.getParameter("name")%>');

				$("#male").prop("checked",<%= request.getParameter("gender").charAt(0)==Customer.MALE %>);
				$("#female").prop("checked",<%= request.getParameter("gender").charAt(0)==Customer.FEMALE%>);

				$("input[name='birthday']").val('<%= request.getParameter("birthday")%>');
				$("input[name='email']").val('<%= request.getParameter("email")%>');
				$("input[name='address']").val('<%= request.getParameter("address")%>');
				$("input[name='phone']").val('<%= request.getParameter("phone")%>');
				$("select[name='bloodType']").val('<%= request.getParameter("bloodType")%>');
				$("#subscribed").prop("checked", <%= request.getParameter("subscribed")!=null%>);				
			<% } %>			
		}
		
		function showPassword(showBox){
			alert(showBox.checked);
			if(showBox.checked){
				pwd.type='text';
			}else{
				pwd.type='password';
			}
		}
    	
    </script>
  </head>
  <body>
  
  	<%@ include file="/subviews/header.jsp" %>
	
  	<article class="formSignUp">
  	${requestScope.errors} <%-- el示範 --%>
  		<form action="registered.do" class="box" method="post">
  			<h1>會員註冊</h1>
  			
  			<span>
	  			<label for="id">帳號 : </label>
	  			<input type="text" name="id" placeholder="請輸入身分證號" required="required"
	  			pattern="[A-Z][1289][0-9]{8}" maxlength="10" >
  			</span>
  			
  			<span>
  				<label for="password">密碼 : </label>
  				<input type="password" id="pwd" name="password" placeholder="請輸入6 ~ 20個字元" required="required" maxlength = "20">
  				<input type="checkbox" onchange="showPassword(this)">顯示
  			</span>
  			
  			
  			<span> 			
  				<label for="name">姓名 : </label>
  				<input type="text" name="name" placeholder="姓名" required="required">
  			</span>
  			  
  			<span>  			
  				<label for="email">Email : </label>
  				<input type="email" name="email" placeholder="Email" required="required">
  			</span>
  			
  			<span>
  				<label for="birthday">生日 : </label>
  				<input type="date" name="birthday" required="required">
  			</span>
  			
  			<span class="genderSpan">
  				<label for="gender" >性別 : </label>
  				<input id="male" type="radio" name="gender" value="M"> 男
  				<input id="female" type="radio" name="gender" value="F"> 女
  			</span>
  				
  			<span>	
  				<label for="address">地址 : </label>
  				<input type="text" name="address" placeholder="地址" >
  			</span>
  			
  			<span>
  				<label for="phone">手機 : </label>
  				<input type="text" name="phone" placeholder="手機號碼">
  			</span>
  			
  			<span>
  				<label for="CAPTCHA">驗證碼 : </label>
  				<input type="text" name="CAPTCHA" placeholder="請輸入圖片內容" required="required">
  				<img id="captchaImage" alt="" src="images/register_captcha.jpg">
  				<img src="images/refresh.png" onclick="refreshCaptcha()" style="width: 20px;">
  			</span>
  			
  			<span>
  				<div class="checkbox">
  					<input type="checkbox" name="subscription">是否訂閱電子報
  				</div>
  			</span>
  			
  			<span>
  				<input type="submit" value="註冊">
  			</span>
  		</form>
  	</article>
  	
  	<%@ include file="/subviews/footer.jsp" %>
  
  </body>
</html>