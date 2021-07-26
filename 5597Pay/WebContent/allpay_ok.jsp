<%@ page pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" >
<title>信用卡支付成功-歐付寶O'Pay電子支付成功</title>
<link id="paymentCSS" href="./allpay_files/payment.css" rel="stylesheet" type="text/css">
<link href="./allpay_files/sweetalert2.css" rel="stylesheet" type="text/css">
<link href="./allpay_files/popup.css" rel="stylesheet">
<style>
	table td{text-aligh:left}
	.doNotShow{display:none}
	#busy{color:white;width:100%;margin:auto;text-align:center;}
</style>
<script src="https://code.jquery.com/jquery-3.0.0.js" 
	integrity="sha256-jrPLZ+8vDxt2FnE1zvZXCkCcebI/C8Dt5xyaQBjxQIo=" 
	crossorigin="anonymous"></script>
<script>
	$(init);
	function init(){
		setTimeout(function(){ 
			$("#busy").remove();			
			$("article").fadeIn("slow");
		}, 2500);
	}
</script>
</head>
<body style="margin:24px 8px">
	<div>
		<div class="site-main-wrapper appdevice on-touch" >
		    <div class="site-main on-touch" >
			    <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="main-pic on-touch">               
			    	<img src="./allpay_files/showcase.png" alt="使用歐付寶，血拼也能賺錢" style='margin:auto;display:block'>
			    </a>
		    </div>			
	    </div>
			<h3 id='busy'>
				<br><br><br><br>
				<image src='ajax-loader.gif' style='display:block;margin:auto'>
				系統授權中，請稍後...
			</h3>
	    	<article class='doNotShow' style='background-color: white;border-radius: 1em;width:75%;margin:2em auto;padding:1em;'>											
					<h3 style='text-align:center'>信用卡付款成功!</h3>					
					<form method='get' action="${param.url}" style="width:100%;margin:auto;">					
						<input type='hidden' name='customerId' value='${param.customerId}'>
						<input type='hidden' name='orderId' value='${param.orderId}'>
						<input type='hidden' name='MerchantTradeNo' value='${param.orderIdStr}'>
						<table style='width:405px;margin:auto'>
						<tr>
							<th>交易時間:</th>
							<td><input readonly name='process_date' value='${LocalDate.now()} ${LocalTime.now().toString().substring(0,8)}'></td>
						</tr>
						<tr>
							<th>刷卡金額:</th>
							<td><input readonly type='text' name='amount' value='${param.totalAmount}'></ts>
						</dl>
						<tr>
							<th>授權代碼:</th>
							<td>
								<input type='text' value='***${requestScope.authCode.substring(3,6)}' readonly>
								<input type='hidden' name='auth_code' value='${requestScope.authCode}' readonly>
							</td>
						</tr>
						<tr>
							<th>信用卡號:</th>
							<td>
								<input readonly style='width:4em' type='text' name='card6no' value='${param.CCpart1}-${param.CCpart2.substring(0,2)}'>
								**-****-<input readonly type='text' name='card4no' value='${param.CCpart4}'>
							</td>						
						</tr>
						<tr><th colspan='2'><input type='submit' style='background-color:lightgray' value='授權成功，返回店家畫面'></th>
						</table>
					</form>
			</article>	    
	</div>	
</body>
</html>