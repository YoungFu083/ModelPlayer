<%@page pageEncoding='UTF-8'%>
<!DOCTYPE html>
<%
// 	if(request.getMethod().equalsIgnoreCase("GET")){
// 		response.sendError(403);
// 		return;
// 	}

 %>
<!-- saved from url=(0052)https://payment-stage.opay.tw/Cashier/AioCheckOut/V5 -->
<html itemscope="" itemtype="http://schema.org/WebPage" lang="zh-TW"><!-- InstanceBegin template="/Templates/seller_template.dwt" codeOutsideHTMLIsLocked="false" --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="Content-Language" content="zh-TW">
   <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=yes">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="format-detection" content="telephone=no">
   <meta name="renderer" content="webkit|ie-comp|ie-stand">
   <meta name="description" content="歐付寶行動支付，提供您快速收款及付款功能。全家、萊爾富便利商店行動秒付，外出不必帶錢包；掃碼便利付，讓您快速收款、輕鬆對帳；停車費隨查即繳，歐付寶行動支付快速又方便！"><!-- 必填，限制 81-150 字 -->
   <meta name="keywords" content=""><!-- 必填，限制 3-5 個跟內容相關關鍵字 -->

<!-- FB share 用 請填入相關資訊 -->
   <meta property="og:url" content="https://www-stage.opay.tw"><!-- 此網頁位置，要用絕對路徑 -->
   <meta property="og:title" content="社群標題"><!-- 臉書用的標題 -->
   <meta property="og:description" content="社群描述"><!-- 臉書用的網頁描述 -->
   <meta property="og:site_name" content="社群網站名稱"><!-- 網站名稱 -->
   <meta property="og:image" content="社群圖片位置"><!-- 圖片位置，要用絕對路徑 -->
   <meta property="og:image:secure_url" content="社群圖片位置"><!-- HTTPS開頭的加密圖片位置，要用絕對路徑 -->
   <meta property="og:type" content="website"><!-- 網頁用website -->


 <!-- G+ share 用 請填入相關資訊 -->
   <meta itemprop="name" content=""><!-- G+用的網站名稱或標題 -->
   <meta itemprop="image" content=""><!-- G+用的圖片位置，要用絕對路徑 -->
   <meta itemprop="description" content=""><!-- G+用的網頁描述 -->

   <link rel="canonical" href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5"><!-- 指出偏好網址 -->

<link rel="shortcut icon" href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5">
<title>付款選擇支付方式-歐付寶O'Pay電子支付</title>

<!-- CSS -->
<link id="paymentCSS" href="./allpay_files/payment.css" rel="stylesheet" type="text/css">
<link href="./allpay_files/sweetalert2.css" rel="stylesheet" type="text/css">
<link href="./allpay_files/popup.css" rel="stylesheet">
<style>
	.creditNum{max-width:60px}
</style>
<!-- js -->
<script src="https://code.jquery.com/jquery-3.0.0.js" 
	integrity="sha256-jrPLZ+8vDxt2FnE1zvZXCkCcebI/C8Dt5xyaQBjxQIo=" 
	crossorigin="anonymous"></script>
<%--
<script src="./allpay_files/sdk.js.下載" async="" crossorigin="anonymous"></script><script src="./allpay_files/cb=gapi.loaded_1" async=""></script><script src="./allpay_files/cb=gapi(1).loaded_0" async=""></script><script id="facebook-jssdk" src="./allpay_files/sdk.js(1).下載"></script><script type="text/javascript" async="" src="./allpay_files/recaptcha__zh_tw.js.下載" crossorigin="anonymous" integrity="sha384-me8NUPVMCigbZ2cMyC8VOttgBP/1ARDvYnhQ7ilGK6P/xOx7aTMyz3J+C+le/vFc"></script><script async="" src="./allpay_files/analytics.js.下載"></script><script type="text/javascript" src="./allpay_files/jquery.min.js.下載"></script>
<script type="text/javascript" src="./allpay_files/jquery-1.7.2.min.js.下載"></script>
<script type="text/javascript" src="./allpay_files/jquery.sticky.js.下載"></script>
<script type="text/javascript" src="./allpay_files/index.js.下載"></script>
<script type="text/javascript" src="./allpay_files/cufon-yui.js.下載"></script><style type="text/css">cufon{text-indent:0!important;}@media screen,projection{cufon{display:inline!important;display:inline-block!important;position:relative!important;vertical-align:middle!important;font-size:1px!important;line-height:1px!important;}cufon cufontext{display:-moz-inline-box!important;display:inline-block!important;width:0!important;height:0!important;overflow:hidden!important;text-indent:-10000in!important;}cufon canvas{position:relative!important;}}@media print{cufon{padding:0!important;}cufon canvas{display:none!important;}}</style>
<script type="text/javascript" src="./allpay_files/jquery.blockUI.js.下載"></script>
<script type="text/javascript" src="./allpay_files/jquery.timers-1.2.js.下載"></script>
<script type="text/javascript" src="./allpay_files/jquery.jCounter-0.1.4.js.下載"></script>
<script type="text/javascript" src="./allpay_files/jquery.magnific-popup.min.js.下載"></script>
<script type="text/javascript" src="./allpay_files/_actions.js.下載" )=""></script>
<script type="text/javascript" src="./allpay_files/sweetalert2.min.js.下載" )=""></script>
%>
<%-- IE support 
<script type="text/javascript" src="./allpay_files/promise.min.js.下載" )=""></script>
<!-- Promise.finally support -->
<script type="text/javascript" src="./allpay_files/promise-finally.js.下載" )=""></script>
<link href="./allpay_files/popout_2.css" rel="stylesheet" type="text/css" id="cssPopout_2" disabled="disabled">
<script type="text/javascript" src="./allpay_files/jquery.cookie.js.下載"></script>
<script type="text/javascript" src="./allpay_files/Idle2Logout.js.下載"></script>
--%>
<script type="text/javascript">
IdlePop.setting = { 
    domain: 'https://www-stage.opay.tw',
    logoutUrl: 'https://Login-stage.opay.tw/Login/LogoutToTimeOut', 
    popupTimeout: 5 * 60 * 1000, 
    countdownTime: 5 * 60 * 1000, 
    isMobile: false,
    isTransaction: true 
};</script>
<style>
	#AwayPopup_overlay.dialog-overlay {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        opacity: 0.8;
        z-index: 400;
    }
    
    #AwayPopup_overlay.overlay-bk { background: black; }
</style>
<!-- InstanceBeginEditable name="js" -->
 <!--Google Analytics-->
        <script language="javascript" type="text/javascript">
            $('#cssPopout_2').attr("disabled", "disabled");
            $(function () {
                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.6&appId=219442204772696";
                    fjs.parentNode.insertBefore(js, fjs);
                } (document, 'script', 'facebook-jssdk'));
            });
        </script>
 <%--       
        <script src="./allpay_files/platform.js.下載" async="" defer="" gapi_processed="true">
            {lang: 'zh-TW'}
        </script>
    <!-- Analytics-->
    <script src="./allpay_files/analytics.js(1).下載"></script>
 --%>
<style type="text/css" data-fbcssmodules="css:fb.css.basecss:fb.css.dialog css:fb.css.iframewidget">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:15px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:19px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:13px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:13px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:17px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}</style></head>
<body style="overflow: auto;">

<!-- header start -->
   <div class="site-header appdevice" style='display:none'>
      <div class="gradient-line gl-color-1"></div>
      <div class="sh-container">
         <div class="gradient-line gl-color-2"></div>
         <div class="logo">
            <div class="gradient-line gl-color-3"></div>
            <a href="https://www-stage.opay.tw/" target="_blank" title="歐付寶 O&#39;Pay 第三方支付">
               <img src="./allpay_files/allpay_logo.svg" alt="歐付寶 O&#39;Pay 第三方支付">
            </a>
            <p class="logo-tip">powered by</p>
         </div>
         <aside class="member-function">
            <ul>  
	    		<li class="login-info">歡迎，測**試 您好！</li>    
				<input id="IsAuthed" name="IsAuthed" type="hidden" value="1">            
			</ul>
         </aside>
      </div>
   </div>
   <!-- header end -->         
    
}
<script type="text/javascript" src="./allpay_files/api.js.下載"></script>
 <!-- script start -->
 <script type="text/javascript" language="javascript">

     $(function () {
        if('0' == '1'){
            $("#CreditBinding").prop("checked", false).prop('disabled', true);            
            $('.creditBindingCk').hide();
        }else{
             $("#CreditBinding").prop("checked", true).prop('disabled', false);            
            $('.creditBindingCk').show();
        }

        if(parseInt('0') > 0){
            $('.RedeemCash').show();
        }else{
            $('.RedeemCash').hide();
        }

         //### 若為登入狀態進入付款選擇頁，先記錄至Hidden欄位
         $('#LevelID').val('12');

         $('#RedeemCash').val('0');
         $('#eventAmount').val('0');

         // 第三方手續費
         $('#thirdPartyChargeFee').val('0.0000');

         //### 設定預設折抵金額
         SetDefaultDiscountAmt();

         //### 微信交易結果查詢
         checkWeiXinPayOnly();

         //會員的設用信用卡-預設用的卡
         var defaultCard = '0';
         var creditPayCount = '1';
         var defaultCardName = '****';

         //輸入信用卡卡號時，自動跳格。
         $('.creditNum').keyup(function () {
             var inputs = $('.creditNum');
             var CardPart1 = $("#CCpart1").val();
             var CardPart2 = $("#CCpart2").val();

             if (CardPart1 == '' || CardPart2 == '') {
                 $('#showBankName').html('');
             }

             if ($(this).val().length == 4) {
                 inputs.eq(inputs.index($(this)) + 1).focus();
             }
         });

         //### 利用卡號取得發卡行
         $('#CCpart2').blur(function () {
             var CardPart1 = $("#CCpart1").val();
             var CardPart2 = $("#CCpart2").val();             
             
             if (CardPart1 != null && CardPart2 != null && CardPart1.length == 4 && CardPart2.length == 4) {                 
                 
                 $.ajax({
                     type: "post",
                     url: "/Cashier/GetBankName",
                     dataType: "json",
                     data: {
                         CardPart1: CardPart1,
                         CardPart2: CardPart2,
                         MerchantID : '2000132'
                     },
                     success: function (data) {
                         if (data.RtnCode == 1) {
                             $('#showBankName').html(data.BankName);
                         } else {
                             $('#showBankName').html('');
                         }
                         if (data == null || data.CreditCanPay == '0') {
                            creditCanPay = false;
                         }
                     }
                 });
             }
         });

         if (defaultCard == 1 && creditPayCount > 0) {

             $('#CreditID')[0].selectedIndex = 1;

             var defaultCard4No = '2222';

             //設定信用卡
             $('#CCpart1').val("****").attr('disabled', true);
             $('#CCpart2').val("****").attr('disabled', true);
             $('#CCpart3').val("****").attr('disabled', true);
             $('#CCpart4').val(defaultCard4No).attr('disabled', true);
             $('#CreditAuth').val("***").attr('disabled', true);

             $("#CreditMM").val("**");
             $("#CreditYY").val("**");
             $("#CreditMM").attr('disabled', true);
             $("#CreditYY").attr('disabled', true);

             $("#CreditBinding").prop("checked", false).prop('disabled', true);
             $('.creditBinding').hide();
             $('.creditBindingCk').hide();

             $(".divCustonCardNo").hide();
             $("#Cardcvv").hide();
             $("#dlIDCheck").hide();

             if ($('#CreditID').val().length > 6) {
                 $("#CreditCardID").val($('#CreditID').val().substr(0, ($('#CreditID').val().length - 6 - 2)));
             }

         } else {
             if ('1' == '1') {
                 $("#CreditBinding").prop("checked", true);
             }
         }

         $('#CreditID').change(function () {
             $('.paymentCredit').attr("checked", true);
             var selected = $("#CreditID option:selected").val();
             var selectedTxt = $("#CreditID option:selected").text();
             selectedTxt = selectedTxt.split('：')[1];

             if (selected == 0) {
                 //自行輸入信用卡
                 $('#CCpart1').val("").prop('readonly', false).prop('required',true);
                 $('#CCpart2').val("").prop('readonly', false).prop('required',true);
                 $('#CCpart3').val("").prop('readonly', false).prop('required',true);
                 $('#CCpart4').val("").prop('readonly', false).prop('required',true);
                 $('#CreditAuth').val("").prop('readonly', false).prop('required',true);

                 $("#CreditMM").val("");
                 $("#CreditYY").val("");
                 $("#CreditMM").prop("readonly", false);
                 $("#CreditYY").prop("readonly", false);
                 
                 if('0' == '0'){                     
                      $('.creditBindingCk').show();
                 }

                 $("#CreditBinding").prop("checked", true).prop('disabled', false);
                 $('.creditBinding').show();

                 $(".divCustonCardNo").show();
                 $("#Cardcvv").show();
                 $("#dlIDCheck").show();

             } else {
                 //選擇會員的設定信用卡
                 $('#CCpart1').val("4311").prop('readonly', true);
                 $('#CCpart2').val("9522").prop('readonly', true);
                 $('#CCpart3').val("2222").prop('readonly', true);
                 $('#CCpart4').val("2222").prop('readonly', true);
                 $('#CreditAuth').val("222").prop('readonly', true);//.attr('disabled', true);

                 $("#CreditMM").val("02").prop('readonly', true);
                 $("#CreditYY").val("25").prop('readonly', true);
                 //$("#CreditMM").attr('disabled', true);
                 //$("#CreditYY").attr('disabled', true);

                 $("#CreditBinding").prop("checked", false).prop('disabled', true);
                 $(".payCheck").removeClass("btn-gray");
                 //$('.creditBinding').hide();
                 //$('.creditBindingCk').hide();

                 //$(".divCustonCardNo").hide();
                 //$("#dlIDCheck").hide();
                 //$("#Cardcvv").hide();

             }

             if ($('#CreditID').val().length > 6) {
                 $("#CreditCardID").val($('#CreditID').val().substr(0, ($('#CreditID').val().length - 6 - 2)));
             }
         });

         $('#CCpart1').bind('keyup', function () {
             if (this.value.length == 1) {
                 $(".picCreadit").fadeOut();
                 var cardType = this.value.substr(0, 1);
                 if (cardType == "4") {
                     $("#visa").fadeIn();
                 } else if (cardType == "5") {
                     $("#master").fadeIn();
                 } else if (cardType == "1" || cardType == "2" || cardType == "3") {
                     $("#jbc").fadeIn();
                 }
             }
             //新增Master Card 驗證邏輯
             if (this.value.length == 4) {
                 ChkCardTypeForMaster();
             }
         });

         //### 分期期數/紅利折抵
         var stageCount = parseInt('0');
         var redeemCount = "0" == "" ? 0 : parseInt("0", 10);

         $("#radioStage").click(function () {

             $("#divCreditInstallment").show();
             $("#divInstallment").show();
             $("#pRedeem").hide();
         });

         $("#radioRedeem").click(function () {

             $("#divCreditInstallment").hide();
             $("#divInstallment").hide();
             $("#pRedeem").show();
         });

         switch (redeemCount > 0 && stageCount > 0) {
             case true:
                 $("#radioStage").attr("checked", true);
                 $("#radioStage").trigger('click');
                 break;

             default:
                 if (stageCount > 0) {
                     $("#radioStage").attr("checked", true);
                     $("#radioStage").trigger('click');
                 }

                 if (redeemCount > 0) {
                     $("#radioRedeem").attr("checked", true);
                     $("#radioRedeem").trigger('click');
                 }
                 break;
         }



         $("#CreditMM").keyup(function () {
             ValidateInt($(this), $(this).val());
             var val = $(this).val();
             if (val != '' && val.length == 2) {
                 $("#CreditYY").focus();
             }
         });

         $("#CreditMM").blur(function () {
             return ValidateInt($(this), $(this).val());
         });

         $("#CreditYY").keyup(function () {
             ValidateInt($(this), $(this).val());
             var val = $(this).val();
             if (val != '' && val.length == 2) {
                 $("#CreditAuth").focus();
             }
         });

         $("#CreditYY").blur(function () {
             return ValidateInt($(this), $(this).val());
         });

         $("#CreditAuth").keyup(function () {
             return ValidateInt($(this), $(this).val());
         });

         $("#CreditAuth").blur(function () {
             return ValidateInt($(this), $(this).val());
         });

         var regExOversea = /^[0-9]{10,20}$/;

         $('#LoginButton').click(function () {
             //alert('a');
             $('#aSendToECPay').hide();
             openLoginWin("R");
         });

        $('#m_IDN').keyup(function () {
            var temp = $('#m_IDN').val().toUpperCase();
            $('#m_IDN').val(temp);
        });
        
         //### 未登入狀態，點選歐付寶帳戶(登入狀態才可使用歐付寶帳戶)會顯示登入頁做登入
         $('.PaymentTypeToLogin').click(function () {
             if ('1' == '0') {
                 var id = $(this).attr('id');

                 if (id == "aCVSToLogin" && '0' == "1") {
                     $('#aSendToECPay').show();
                 } else {
                     $('#aSendToECPay').hide();
                 }

                 openLoginWin("R");
                 return false;
             }
         });

         //### 未登入狀態，點選頁面右邊購物金付款會顯示登入頁做登入
         $('#aFitRedeem').click(function () {
             if ('1' == '0') {
                 openLoginWin("R");
             }
         });

         //### 點選Tab上的付款方式會重新計算需繳費金額
         $('.accordion').click(function () {
             $("#chooseCVScode").css("display", "none");

             SelectedPay = $(this)[0].id;

             CheckShoppingAMT("submit");
             CheckBalanceAMT("submit");

             if ($(this).hasClass("ATMPay")) {
                 var id = "atmPayType";
                 var paymentType = $('#' + id + ' option:selected').val();
                 CalDropRedeem(paymentType);
             }

             if ($(this).hasClass("WebATMPay")) {
                 var id = "webatmPayType";
                 var paymentType = $('#' + id + ' option:selected').val();
                 CalDropRedeem(paymentType);
             }

             //按下超商條碼付款時 確認是否選擇訂單金額外加手續費 須顯示相關欄位
             if ($(this).hasClass("CvsPay") && '0' == 1) {
                 //按下超商代碼付款時 確認是否選擇訂單金額外加手續費 須顯示相關欄位
                 $("#chooseCVScode").css("display", "table-row");
                 $("#FinalTradeTotalul").css("border-top", "none");
             }
             else {
                 $("#FinalTradeTotalul").css("border-top", "1px solid #CCC");
             }
         });

         $("#webatmPayType").change(function () {
             var length = $("#webatmPayType").children('option').length;
             var index = $('#webatmPayType option:selected').index()
             if (length - 1 == index) {
                 DisplayAlertMessage();
             }
         });

         $("#atmPayType").change(function () {
             var length = $("#atmPayType").children('option').length;
             var index = $('#atmPayType option:selected').index()
             if (length - 1 == index) {
                 DisplayAlertMessage();
             }
         });

         $('.payCheck').click(function () {
             var id = $(this).attr('id');

             cehckPaymentType(id);

             return false;
         });

         $('.readySubmit').click(function () {
             LockSubmit(true);

             var submitType = $('#SubmitType').val();

             //不顯示離開網頁的警告訊息.
             $('#isSubmitting').val('1');

             $(".popup-close").trigger('click');

             submitForm(paymentName);
         });

         if ('1' == '1') {
             $('.noLogin').hide();
             $('#dlMemberID').show();    //### 付款人MerchantID欄位未登入時隱藏            

         } else {
             $('.noLogin').show();
             $('#dlMemberID').hide();
         }

         if ('0' == "1") {
             $('#divCheckAddMember').show();
             $('#divSelectPaymentType').hide();
         } else {
             $('#divCheckAddMember').hide();
             $('.call-member-pay').click();
             if ('P' != 'APP') {
                 $('#divSelectPaymentType').show();
             }
         }

         $('.SendToECPay').click(function () {

             //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
             $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
             setTimeout(function () { $("#SendToECPayForm").submit(); }, 1000);

         });

         //登入使用者代號
         var regExUserCode = /^(?!.*[^0-9a-zA-Z])(?=.*\d)(?=.*[a-zA-Z]).{6,20}$/i;
         //登入密碼格式
         var regExLoginPwd = /^(?=.*\d)(?=.*[a-zA-Z]).{6,20}$/i;
         var regExCaptcha = /^[0-9]{4}$/;

         $('#divLoginError').hide();

         $('#aLoginSubmit').click(function () {

             $('#divLoginError').html("").hide();
             var account = $("#m_account").val();
             var pwd = $('#m_pw').val();
             var IDN = $('#m_IDN').val();
             var captcha = null;
             if ('False'==='True')
             {
                 captcha = grecaptcha.getResponse();
             }
             if (account == '' || !regExUserCode.test(account, regExUserCode)) {
                 $('#divLoginError').html('請輸入6-20位英/數字混合帳號。').show();
                 return false;
             }

             if (pwd == '' || !regExLoginPwd.test(pwd, regExLoginPwd)) {
                 $('#divLoginError').html('請輸入6-20碼英/數混合密碼。').show();
                 return false;
             }


             //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
             $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
             setTimeout(function () {
                 $.ajax({
                     type: "post",
                     url: 'https://member-stage.opay.tw' + "/app/ZeroMember/ZeroMemberLogin",
                     async: false,
                     dataType: "jsonp",
                     crossDomain: true,
                     jsonpCallback: 'LoginResult',
                     data: {
                         Account: account,
                         Password: pwd,
                         captcha : captcha,
                         IDN:IDN,
                         TradeAmount: $('#TradeAmount').val()
                     }
                 }, 1000);
             });
         });

         $('.reloadCaptcha').click(function () {
             reloadCaptchaImage(this);
         }).click();

         $('#reloadCaptcha').click(function () {
             $('.reloadCaptcha').trigger('click');
         });

         $('#reloadCaptcha').trigger('click');

         $('#aAlertSubmit').click(function () {
             $('#divPopupBg').hide();
             $('#divPopupWrap').hide();
             //$('#divAlertMsg').html("");
             return false;
         });

         $('#cancelTrade').click(function () {
             $(".popup-close").trigger('click');
             swal({
                 text: "是否確定取消交易?",
                 showCancelButton: true,
                 confirmButtonColor: '#444',
                 cancelButtonColor: '#444',
                 confirmButtonText: '確定',
                 cancelButtonText: '取消'
             }).then(function () {
                 //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
                 $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
                 setTimeout(function () { $("#cancalForm").submit(); }, 1000);
                 return false;
             }, function (dismiss) {
                 // dismiss can be 'cancel', 'overlay', 'close', 'timer'
                 if (dismiss == 'cancel') {
                     $('#callDivPayCheck').click();
                     return false;
                 }
             });
         });

         $('.txtMemberSubmit').keypress(function (e) {
             if (e.which == 13) {
                 $('#aLoginSubmit').focus().click();
             }
         });

         $('.calPaymentTypeRedeem').click(function () {
             if ('1' == '1') {
                 var paymentType = $(this).attr('paymentType');
                 CalTabRedeem(paymentType);
             }
         });

         $('.calPaymentTypeRedeemForDrop').change(function () {
             if ('1' == '1') {
                 var id = $(this).attr('id');
                 var paymentType = $('#' + id + ' option:selected').val();
                 CalDropRedeem(paymentType);
             }
         });

         var calRedeemCashObj = $(".calPaymentTypeRedeem").first();
         if ('1' == '1') {
             var paymentType = calRedeemCashObj.attr('paymentType');
             if (typeof (paymentType) != "undefined") {
                 CalTabRedeem(paymentType);
             }
         }

         if ('P' == 'APP') {
             $('.appdevice').hide();
             $('#divSelectPaymentType').hide();
             if ('1' == '0') {
                 $('#LoginButton').trigger('click');
                 $('.mfp-close').hide();
             }
         }

         $('#aAPPNext').click(function () {
             $('#divSelectPaymentType').show();
             $('.tradeinfo').hide();
             $('#aAPPNext').hide();
         });

         $('.aPayForApp').click(function(){
            var qrcode = encodeURI($('#imgQRCode').val());
            var appSchema = 'opay' + ('stage' != '' ? '-stage' : '')  + '://AIOCode/?q=' + qrcode;
            window.location = appSchema;
            return false;
     });     

        $('#m_IDN').keyup(function () {
            var temp = $('#m_IDN').val().toUpperCase();
            $('#m_IDN').val(temp);
        });

         $('#downloadApp').click(function(){
           var userAgent = navigator.userAgent || navigator.vendor || window.opera;
            if (/(iPhone|iPad|iPod|iOS)/i.test(userAgent)) {
                window.location = 'https://itunes.apple.com/tw/app/xing-dong-zhi-fu/id579207122?mt=8';
            } else if (/(android)/i.test(userAgent)) {
                window.location = 'https://play.google.com/store/apps/details?id=com.allpay.tw';
            } else {
                window.location = 'https://play.google.com/store/apps/details?id=com.allpay.tw';
            };
            return false;
         });
     });     

     function checkPaymentNext(id) {

         $('#paymentName').val(paymentName);
         
         $('#TradeTotalAMT').val($('#tradeAmount').val());
         $('#ShoppingAMT').val($('#shoppingAmount').val());
         $('#RedeemAMT').val($('#eventAmount').val());
         $('#Discount').val($('#discountAmount').val());
         $('#ThirdPartyFee').val($('#thirdPartyChargeFee').val());


         if ('1' == "1" || id == "OverseasPaySubmit") {

             if ('' != '' && id == "CreditPaySubmit") {
                 $("#ddAllocateStatus").html('');
             } else {
                 $("#ddAllocateStatus").html("立即 <span class='scw-tip'>(請注意！您的支付款項將於交易完成後，移轉至收款人的電子支付帳戶。)</span>");
             }

                     //### 若為登入狀態或海外支付，檢查完付款方式必填欄位後，直接顯示付款確認頁(除了ATM、超商代碼)
                     if (id == "AtmPaySubmit" || id == "WebAtmPaySubmit" || id == "CvsPaySubmit") {
                         $('.readySubmit').click();
                     } else {
                         if (paymentName == '10057@1@WeiXinpay_WeiXinpay') {
                             $('#callDivWeiXinPayQRCode').click();
                         } else {
                             $('#callDivPayCheck').click();
                         }
                     }
             
             } else {
             //### 確認輸入電話號碼是否為會員
             if (id == "CreditPaySubmit" || id == "WebAtmPaySubmit" || id == "AtmPaySubmit" || id == "CvsPaySubmit") {
                 var CellPhone = $('#CellPhone_' + id).val();
                 $('#CellPhone').val(CellPhone);
                 var allpayTradeID = '808695';
                 //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
                 $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
                 setTimeout(function () {
                     $.ajax({
                         type: "post",
                         url: "/Cashier/CheckMemberCellPhone",
                         async: false,
                         dataType: "json",
                         data: {
                             CellPhone: CellPhone,
                             allpayTradeID: allpayTradeID
                         },
                         success: function (data) {
                             $.unblockUI();

                             if (data.RtnCode == "1" && data.HasAccount == 1) {
                                 openLoginWin("P");
                             }
                             else if (data.RtnCode == "0" || (data.RtnCode == "1" && data.HasAccount == 0)) {
                                 //### 導到註冊頁
                                 $('#LoginLater').val("1");
                                 $('#Type').val("R");
                                 $('#PayForm').attr('action', '/Cashier/MemberAgent').submit();
                             } else {
                                 SetAlertMsg(data.RtnMsg);
                             }
                             return false;
                         }
                     });
                 }, 1000);
             } else {
                 openLoginWin("P");
             }
         }
     }

     function LoginResult(result) {

         $.unblockUI();
         $('#aLoginSubmit').removeAttr('submit');
         $('#reloadCaptcha').click();

         if (result.error) {
             resultMsg = result.error.replace(/\%0a/g, '\n');
             $('#divLoginError').html(resultMsg).show();

             return;
         } else {
             var loginToNext = $('#LoginToNext').val();

//              if (result.RtnCode == 1) {
//                  $("#m-login-popup").hide();
//                  if (loginToNext == "R") {
//                      $('#divLoginError').html("").hide();
//                      $("#LoginForm").submit();
//                  } else {
//                      $('#LoginLater').val("1");
//                      $("#LevelID").val(result.LevelID);
//                      submitForm(paymentName);
//                  }
//              } else {
//                  $('#divLoginError').html(result.RtnMsg).show();
//                  return false;
//              }
         }
         return false;
     }

     var popUpObj; //Declare a global variable
     function popUp(url) {
         popUpObj = window.open(url, "Popup", "location=no" +
            ",statusbar=no,menubar=no,resizable=0");
         popUpObj.opener = self;
         popUpObj.focus();
     }
     //Disable F5 key.
     document.onkeydown = function (e) {
         e = e || window.event;
         if (e.keyCode === 116) {
             e.keyCode = 0;
             //alert('請勿重新整理頁面，避免交易失敗');
             if (e.preventDefault) e.preventDefault();
             else e.returnValue = false;
             return false;
         }
     }

     function AtmTypeChange() {
         var atmType = $('#AtmType :selected').val();
         if (atmType == 'atm') {
             $('.Counter_Pay').hide();
             $('#counter_note').hide();
             $('.ATM_Pay').show();
             $('#atm_note').show();
             $('#counterMessage').hide();
         } else {
             $('.Counter_Pay').show();
             $('#counter_note').show();
             $('.ATM_Pay').hide();
             $('#atm_note').hide();
             $('#counterMessage').show();
         }
     }

     //### 信用卡3D驗證
     function GetCreditCardDetail() {
         $('.dialog-Box').show();
         $(".dialog-overlay").show();
     }

     function CloseCofrim() {
         $('.dialog-Box').hide();
         $(".dialog-overlay").hide();
     }

     function ShowPopup(id) {
         $('#' + id).show();
         $(".dialog-overlay").show();
     }

     function ClosePopup() {
         $('.popup-box').hide();
         $(".dialog-overlay").hide();
     }

     //### 千分位符號
     function commafy(n) {
         n += "";
         var arr = n.split(".");
         var re = /(\d{1,3})(?=(\d{3})+$)/g;
         return arr[0].replace(re, "$1,") + (arr.length == 2 ? "." + arr[1] : "");
     }

     //### 判斷正整數/^[1-9]+[0-9]*]*$/
     function IsNum(s) {
         var num = /^\d+$/;
         return num.test(s);
     }

     //### 購物金檢查
     function CheckShoppingAMT(execMethod) {
		 //alert("labFinalTradeTotalAMT"+ $('#TradeAmount').val());
         var TradeAmount = $('#TradeAmount').val();                  //### 訂單金額
         var ShoppingAmount = Number($('#ShoppingAmount').val());            //### 購物金折抵金額
         var shoppingCash = parseInt('0');               //### 購物金餘額        
         var labFinalTradeTotalAMT = commafy(TradeAmount);           //### 顯示的標籤
         var balanceAMT = 0;                                         //### 歐付寶帳戶       
         var RedeemCash = $('#RedeemCash').val();                           	//### 紅包扣除額     

         //labFinalTradeTotalAMT = commafy((TradeAmount - balanceAMT - RedeemCash - nDiscount));        
         labFinalTradeTotalAMT = commafy((TradeAmount - RedeemCash - balanceAMT));

         $('#labFinalTradeTotalAMT').html(labFinalTradeTotalAMT);
         $('#spTradeAmount').html(labFinalTradeTotalAMT);

         RefreshTotalTradeAmount();

         return true;

     }

     //檢查紅包與廠商折扣
     function CheckEventAMT(execMethod) {

         var TradeAmount = $('#TradeAmount').val();                  //### 訂單金額
         var RedeemCash = $('#RedeemCash').val();                           	//### 紅包扣除額
         var nDiscount = '0';                           	//### 廠商折扣金額
         var labFinalTradeTotalAMT = commafy(TradeAmount);           //### 顯示的標籤
         var intFinalTradeTotalAMT = 0;                              //### 計算最後付款金額
         var blInt = true;                                           //### 是否為整數型態

         if (isNaN(RedeemCash) || RedeemCash == undefined) {
             blInt = false;
         }

         if (blInt == true) {

             TradeAmount = parseInt(TradeAmount, 10);
             RedeemCash = parseInt(RedeemCash, 10);

             intFinalTradeTotalAMT = TradeAmount - RedeemCash - nDiscount;

             labFinalTradeTotalAMT = commafy(intFinalTradeTotalAMT);

             $('#RedeemAMT').get(0).value = RedeemCash;
             $('#Discount').get(0).value = nDiscount;

             $('#labFinalTradeTotalAMT').html(labFinalTradeTotalAMT);
             $('#spTradeAmount').html(labFinalTradeTotalAMT);

             RefreshTotalTradeAmount();

             return blInt;
         }

         return blInt;
     }

     //### 歐付寶帳戶檢查
     function CheckBalanceAMT(execMethod) {
         var TradeAmount = $('#TradeAmount').val();                  //### 訂單金額
         var balanceCash = parseInt('43318');              //### 歐付寶帳戶
         var labbalanceAMT = "＄0";                                  //### 顯示的標籤
         var labFinalTradeTotalAMT = commafy(TradeAmount);           //### 顯示的標籤
         var blInt = true;                                           //### 是否為整數型態
         var blResult = true;                                        //### 檢查結果，預設成功
         var shoppingAMT = 0;                                        //### 購物金
         var intFinalTradeTotalAMT = 0;                              //### 計算最後付款金額
         var RedeemCash = $('#RedeemCash').val();                           	//### 紅包扣除額
         var nDiscount = '0';                           	    //### 廠商折扣金額       

         intFinalTradeTotalAMT = TradeAmount - shoppingAMT - RedeemCash - nDiscount;

         //計算超商手續費
         if (SelectedPay == 'nav-section6' && '0' == 1) {
             intFinalTradeTotalAMT = intFinalTradeTotalAMT + 20;
         }
         else if (SelectedPay == 'nav-section7' && '0' == 1) {
             intFinalTradeTotalAMT = intFinalTradeTotalAMT + 26;
         }
         labFinalTradeTotalAMT = commafy(intFinalTradeTotalAMT);

         $('#labFinalTradeTotalAMT').html(labFinalTradeTotalAMT);
         $('#spTradeAmount').html(labFinalTradeTotalAMT);

         RefreshTotalTradeAmount();

         if (blInt && blResult) {
             return true;
         }
         else {
             return false;
         }
     }

     //### 設定預設折抵金額
     function SetDefaultDiscountAmt() {
         var TradeAmount = $('#TradeAmount').val();      //### 訂單金額
         var shoppingCash = parseInt('0');   //### 購物金餘額
         var ShoppingAmount = 0;                         //### 購物金折抵金額        
         var balanceCash = parseInt('43318'); //### 歐付寶餘額        
         var shoppingAmount = 0;                         //### 歐付寶折抵金額

         TradeAmount = parseInt(TradeAmount, 10);

         if (shoppingCash > 0 && TradeAmount > 30) {
             ShoppingAmount = Math.floor(TradeAmount / 2);

             if (shoppingCash < ShoppingAmount) {
                 ShoppingAmount = shoppingCash;
             }

             if (ShoppingAmount + 30 > TradeAmount) {
                 ShoppingAmount = TradeAmount - 30;
             }

             TradeAmount = TradeAmount - ShoppingAmount;
             $('#ShoppingAmount').val(ShoppingAmount);
         }

         CheckBalanceAMT("check");
         CheckShoppingAMT("check");
     }

     function CheckIsOverSeasCard(cardNum) {
         var rtn = true;
         $.ajax({
             url: '/AioPaymentRule/CheckIsOverSeasCard', type: "POST", dataType: "json",
             data: { "CardNo": cardNum },
             async: false,
             success: function (data) {
                 if (data.RtnCode == "1") {
                     SetAlertMsg("本公司不接受國外信用卡交易，請重新輸入非國外卡的信用卡卡號。");
                     rtn = false;
                 }
             }
         });

         return rtn;
     }

     function CheckIsBinding(cardNum) {
         var rtn = true;

         $.ajax({
             url: '/Cashier/CheckIsBinding', type: "POST", dataType: "json",
             data: { "CardNo": cardNum },
             async: false,
             success: function (data) {
                 if (data.RtnCode != "1") {
                     SetAlertMsg(data.RtnMsg);
                     rtn = false;
                 }
             }
         });

         return rtn;
     }
     //ATM、臨櫃繳款及WebATM點選「郵局或非上述銀行」時的提示訊息
     function DisplayAlertMessage() {
         SetAlertMsg("提醒您！若您使用其他金融機構進行轉帳，可至任一銀行之櫃員機操作，另須支付跨行手續費 15 元。");
     }

     //更新付款方式上方的付款金額
     function RefreshTotalTradeAmount() {
         var formattedTradeAMT = $("#labFinalTradeTotalAMT").text();

         $("span[id^='TotalTradeAMT']").each(function () {
             $(this).text(formattedTradeAMT);
         });
     }

     function LockSubmit(isLock) {
         $('.readySubmit').prop('disabled', isLock);
     }

     function ChkCardTypeForMaster() {
         if ($('#CCpart1').val().length == 4 && $('#CCpart2').val().length > 1) {
             var value1 = $('#CCpart1').val();
             var value2 = $('#CCpart2').val().substr(0, 2);
             if (!isNaN(value1) && !isNaN(value2)) {
                 var CheckNum = value1 + value2;
                 if ((222099 < CheckNum) && (CheckNum < 272100)) {
                     $(".picCreadit").fadeOut();
                     $("#master").fadeIn();
                 }
             }
         }
     }

     function checkOnBlur(propID, regEx) {

         var reg = regEx;
         var checkVal = $('#' + propID).val();

         //欄位為空值
         if ($('#' + propID).val() == '') {
             SetAlertMsg("請輸入台灣手機號碼");


             return false;
             //欄位格式不正確
         }

         if (reg == null) {
             return true;
         }

         checkVal = $("#" + propID).val().replace("+", "");

         if (!reg.test(checkVal, reg)) {
             SetAlertMsg("格式錯誤，目前僅接受台灣手機號碼");
             return false;
             //欄位格式正確
         } else if (reg.test(checkVal, reg)) {
             return true;
         }
     }

     function checkOnFocus(propID) {

         //未輸入值時，出現提示文字
         var prop_focus = propID + '_focus';
         var prop_empty = propID + '_empty';
         var prop_err = propID + '_error';
         var prop_OtherErr = propID + '_OtherErr';

         $('.' + prop_OtherErr).hide();
         $('.' + prop_empty).hide();
         $('.' + prop_err).hide();
         $('.' + prop_focus).fadeIn();

     }

     //mantis14871 取消折抵機制
     function disableDiscountAmt() {
         $('#useBalanceAMT').val(0); //帳戶餘額歸0
         $('#divBalanceDiscount').hide(); //帳戶餘額折抵區域隱藏
         ('SetDefaultDiscountAmt' in window) && (SetDefaultDiscountAmt = function () { }); //beta的設定預設餘額折抵函數取消
     }

     var _currentDomain = 'https://payment-stage.opay.tw';
     var _isStage = (_currentDomain == 'https://payment-stage.allpay.com.tw' || _currentDomain == 'https://payment-stage.opay.tw') ? true : false;
     var SelectedPay = "";

     function getLoginStatus() {
         var isLoginInt = parseInt("1", 10);
         return (isLoginInt == 1);
     }

     function getBalanceAmount() {
         return parseInt("43318", 10);
     }

     function getShoppingAmount() {
         return parseInt("0", 10);
     }

     var paymentName = '';

     function cehckPaymentType(objectId) {

         var submitType = objectId; //$(this).attr('id');

         $('#SubmitType').val(submitType);

         var currency = '';
         var oriTradeTotalAMT = parseFloat('');
         var oriInstallmentAmount = parseFloat('');
         var oriInstallment = parseFloat('0');

         var alertContent = "";
         var confirmContent = "";

         //Mantis4815:Stage付款選擇頁增加警語.
         if (_isStage && $('#warnSubmitPay').val() != submitType && $('.readySubmit').prop('disabled')) {
             if (!$('#btnShowNext').length || $('#btnShowNext').css('display') == 'none' || submitType != 'TopupUsedAllPaySubmit') {
                 //先判斷是否有購物金/歐付寶帳戶折抵.
                 $('#warnSubmitPay').val(submitType);
                 SetAlertMsg('您目前正在使用的是歐付寶的付款測試環境，請消費者勿進行相關的付款動作，以免影響權益！');
                 LockSubmit(false);
                 return false;
             }
         }

         initAllAmtVal();

         //購物金折抵
         var tradeAmount = $('#TradeAmount').val();
         var shoppingAmount = $('#ShoppingAmount').val();

         if (typeof (shoppingAmount) != "undefined" && CheckShoppingAMT("submit") == true) {
             shoppingAmount = (shoppingAmount != "" && IsNum(shoppingAmount) && !isNaN(shoppingAmount)) ? parseInt(shoppingAmount) : 0
         }
         else {
             shoppingAmount = 0;
         }
         
         //紅包
         var eventAmount = parseInt($('#eventAmount').val(), 10);
         if (typeof (eventAmount) != "undefined" && CheckEventAMT("submit") == true) {
             eventAmount = (eventAmount != "" && IsNum(eventAmount) && !isNaN(eventAmount)) ? parseInt(eventAmount) : 0
         }
         else {
             eventAmount = 0;
         }

         //廠商折扣
         var discountAmount = parseInt('0', 10);
         if (typeof (discountAmount) != "undefined" && CheckEventAMT("submit") == true) {
             discountAmount = (discountAmount != "" && IsNum(discountAmount) && !isNaN(discountAmount)) ? parseInt(discountAmount) : 0
         }
         else {
             discountAmount = 0;
         }

         var thirdPartyFee = parseInt('0.0000', 10);

         setAllAmtVal(tradeAmount, shoppingAmount, eventAmount, discountAmount, thirdPartyFee);

         //判斷選擇的付款方式
         switch (submitType) {

             case 'TopupUsedAllPayStep2Submit': //歐付寶餘額
                 paymentName = $('input[name="topupusedAllPayType"]').val();

                 var tradeTotalAMT = parseInt($('#TradeAmount').val());
                 var balance = parseInt('43318');

                 if (tradeTotalAMT > balance + shoppingAmount + eventAmount + discountAmount) {
                     SetAlertMsg("歐付寶帳戶餘額不足, 請選擇其他付款方式.")
                     return false;
                 }
                 break;

             case 'CreditPaySubmit': //信用卡                  
                 var cardType = $('#card_type :selected').val();
                 var rdoInstallmentVal = $("#rdoInstallment").val();  //買家所選擇的分期數
                 var TradeInstmt = "0";
                 var installmentAmount = "0";
                 var TradeAmount = $('#TradeAmount').val();

                 var RedeemAMT = $('#RedeemAMT').val();
                 var creditInstallments = parseInt('0');

                 if ((oriInstallment > 0 || creditInstallments > 0) && (cardType != 'UnionPay')) {
                     if (rdoInstallmentVal == "") {
                         SetAlertMsg("請輸入分期期數.")
                         LockSubmit(false);
                         return false;
                     }
                 }

                 paymentName = $('input[name="creditPayType"]').val();
                 TradeInstmt = "0";
                 installmentAmount = "0";

                 //有使用分期時(非銀聯)
                 if (rdoInstallmentVal != 0) {
                     if ((oriInstallment > 0 || creditInstallments > 0) && (cardType != 'UnionPay')) {
                         //有可以分期的銀行才顯示                        
                         if (creditInstallments > 0) {
                             //  $('#TradeInstmt').val( rdoInstallmentVal);    //買家所選擇之分期數                
                             TradeInstmt = rdoInstallmentVal;
                             installmentAmount = "0";
                             paymentName = $('input[name="creditInstallmentPayType"]').val();
                         }
                     }
                 }

                 var selectCreditID = $("#CreditID option:selected").val();
                 var CreditID = selectCreditID.substring(0,selectCreditID.indexOf('_'));

                 var needOTPForAIO = '0';

                 if (cardType == 'UnionPay') {
                     $('#UnionPay').val('1');
                     $('#SetBindingCredit').val('0');
                 } else {
                     var creditMM = $('#CreditMM').val();
                     var creditYY = $('#CreditYY').val();
                     //var cardHolder = $('#CardHolderTemp').val();
                     if (typeof (CreditID) == "undefined") {
                         $('#IsBindingCredit').val('0');
                         $('#SetBindingCredit').val('0');
                     } else if (CreditID > 0) {
                         //使用設定信用卡
                         $('#IsBindingCredit').val('1'); //是否使用[設用信用卡]
                         $('#SetBindingCredit').val('0'); //是否新增此張信用卡為[設用信用卡]
                     } else {
                         //自行輸入信用卡資料
                         $('#IsBindingCredit').val('0');
                         var creditBinding = ($('#CreditBinding').is(':checked')) ? '1' : '0';
                         $('#SetBindingCredit').val(creditBinding);
                     }

                     var setYear = '2020';
                     var setMonth = parseInt('12');

                     if ($('#IsBindingCredit').val() != '1') {
                         var cardNoPart1 = $('#CCpart1').val();
                         var cardNoPart2 = $('#CCpart2').val();
                         var cardNoPart3 = $('#CCpart3').val();
                         var cardNoPart4 = $('#CCpart4').val();
                         var cardNum = cardNoPart1 + cardNoPart2 + cardNoPart3 + cardNoPart4;                         
                         var creditCanPay = true;
                         if('0' == '1'){
                             $.ajax({
                                 type: "post",
                                 url: "/Cashier/GetBankName",
                                 dataType: "json",
                                 data: {
                                     CardPart1: cardNoPart1,
                                     CardPart2: cardNoPart2,
                                     MerchantID : '2000132'
                                 },
                                 async: false,
                                 success: function (data) {
                                     if (data == null || data.CreditCanPay == '0') {
                                        creditCanPay = false;
                                     }
                                 }
                             });
                         }
                         
                         if(!creditCanPay){
                            SetAlertMsg("此訂單無法使用該信用卡付款");
                            LockSubmit(false);
                            return false;
                         }

                         $('#CardNo').val(cardNum)

                         if (isNaN(cardNum) || cardNum.length < 16) {
                             SetAlertMsg("MasterCard/VISA/JCB信用卡的卡號格式有誤.");
                             LockSubmit(false);
                             return false;
                         }

                         //有效月年需判斷是否小於目前年份的當月
                         var mmCheck = (creditMM.substring(0, 1) == '0') ? creditMM.substring(1, 2) : creditMM;

                         if (parseInt('20' + creditYY) < setYear) {
                             SetAlertMsg("信用卡[有效月年]期限錯誤！");
                             LockSubmit(false);
                             return false;
                         }

                         if (parseInt(mmCheck) < setMonth && parseInt('20' + creditYY) == setYear) {
                             SetAlertMsg("信用卡[有效月年]期限錯誤！");
                             LockSubmit(false);
                             return false;
                         }

                         if (creditMM == '' || creditYY == '') {
                             SetAlertMsg("請選擇[有效月年]的月/年");
                             LockSubmit(false);
                             return false;
                         }

                         if (creditMM.length > 0 && creditMM.length < 2) {
                             $('#CreditMM').val("0" + creditMM);
                         }
                         if (parseInt(creditMM, 10) < 1 || parseInt(creditMM, 10) > 12) {
                             $('#CreditMM').val("");
                             SetAlertMsg("請輸入正確月份範圍");
                             LockSubmit(false);
                             return false;
                         }

                         var inputs = isNaN($('#CreditYY').val());

                         if (creditYY.length == 1) {
                             $('#CreditYY').val("");
                             SetAlertMsg("請正確輸入西元後兩碼");
                             LockSubmit(false);
                             return false;
                         }

                         var creditAuth = $('#CreditAuth').val();
                         $('#CardAuthCode').val(creditAuth);

                         if (isNaN(creditAuth) || creditAuth.length < 3) {
                             SetAlertMsg("MasterCard/VISA/JCB信用卡的卡片背後末3碼格式有誤.");
                             LockSubmit(false);
                             return false;
                         }
                     }
                     else {
                         var id = $("#CreditID option:selected").val();
                         var canCreditPay = id.length >= 1? id.substring(id.indexOf('_') + 1) : id;

                         if(canCreditPay == '0'){
                            SetAlertMsg("此訂單無法使用該信用卡付款");
                            LockSubmit(false);
                            return false;
                         }

                         var cardNum = id.substr(id.length - 6 - 2, 6);
                         $('#CardNo').val(cardNum)
                     }

                     //判斷分期的日期在有效期限內，用綁定的信用卡時無法做此判斷
                     if ('' != '' && '0' != '0' && '0' != '0' && cardType != 'UnionPay') {//&& 
                        
                        var tmpCreditYY = 0;
                        var tmpCreditMM = 0;

                        var execTimes = parseInt('0') * parseInt('0');

                        //### 自行填入卡號，非使用綁定卡
                        if($('#CreditYY').val() != "**" && $('#CreditMM').val() != "**") {                             
                            tmpCreditYY = 2000 + parseInt($('#CreditYY').val());
                            tmpCreditMM = parseInt($('#CreditMM').val());
                        }
                        //### 使用綁定卡
                        else{
                        
                            $.ajax({
                                url: '/Cashier/GetCardInfo', 
                                type: "POST", 
                                dataType: "json",
                                data: { 
                                    "MemberID": '2001760',
                                    "CodeID": $('#CreditID').val().substr(0, ($('#CreditID').val().length - 6 - 2))                                    
                                },
                                async: false,
                                success: function (data) {
                                   tmpCreditYY = 2000 + parseInt(data.ExpireDateYear);
                                   tmpCreditMM = parseInt(data.ExpireDateMonth);
                                }
                            });
                        }
                         //### 目前分期只能用月為單位,因此起始比較時間的月份為 目前月份 + 期數
                         var dt = new Date();
                         var endDays = new Date(tmpCreditYY, tmpCreditMM, 0).getDate();

                         var dt1 = new Date();
                         if ('' == 'D') {
                             dt1 = new Date(dt1.setTime(dt1.getTime() + execTimes * 86400000));
                         }
                         else if ('' == 'M') {
                             dt1.setMonth(dt1.getMonth() + execTimes);
                             dt1 = new Date(dt1.getFullYear(), (dt1.getMonth() + 1), dt1.getDate());
                         }
                         else if ('' == 'Y') {
                             dt1.setMonth(dt1.getMonth() + (execTimes * 12));
                             dt1 = new Date(dt1.getFullYear(), (dt1.getMonth() + 1), dt1.getDate());
                         }

                         var dt1Date = dt1.getFullYear() + "/" + (dt1.getMonth() + 1) + "/" + dt1.getDate() + " 23:59:59";
                         var dt2Date = tmpCreditYY + "/" + tmpCreditMM + "/" + endDays + " 23:59:59";

                         var dtEnd = new Date(dt2Date);
                         var dtStart = new Date(dt1Date);
                         var times = dtEnd.getTime() - dtStart.getTime();
                         var days = parseInt(times / (1000 * 60 * 60 * 24));


                         if (days < 0) {
                             SetAlertMsg("抱歉！定期定額扣款的每期，卡片都需為有效。請檢查您信用卡正面的有效期(VALID THRU)");
                             LockSubmit(false);
                             return false;
                         }
                     }

                     if ($('#merchantId').val() == '999990001' || $('#merchantId').val() == '1031095' || $('#merchantId').val() == '1036159' || $('#merchantId').val() == '1036161') {
                         confirmContent = '信用卡交易將收取手續費' + '' + '%，確定要繼續嗎？';
                     }
                 }

                 var creditAuth = $('#CreditAuth').val();
                 var cellPhone = $('.cellPhoneCheck').val();

                 if (!cellPhone || cellPhone == '') cellPhone = '';

                 if ('0' == '1' && (cardType != 'UnionPay')) {
                     var rtn = CheckIsOverSeasCard(cardNum);

                     if (rtn == false) {
                         LockSubmit(false);
                         return false;
                     }

                 }

                 if ($('#IsBindingCredit').val() == '0' && $('#SetBindingCredit').val() == '1' && 'True' == 'True') {
                     if (cardNum != '4311952222222222') {
                     var rtn = CheckIsBinding(cardNum);

                     if (rtn == false) {
                         return false;
                         LockSubmit(false);
                     }
                     } else {
                         $("#CreditBinding").prop("checked", false);
                         $('#SetBindingCredit').val('0');
                 }
                 }

                 //設定紅利
                 var redeemVal = $('#radioRedeem').prop("checked") == true ? "1" : "0";
                 $('#Redeem').val(redeemVal);

                 // $('#ChoosePayment').val("CREDIT");  //信用卡分期
                 $('#CellPhone').val(cellPhone);
                 $('#CardValidMM').val($('#CreditMM').val());
                 $('#CardValidYY').val(creditYY);
                 $('#CardAuthCode').val(creditAuth);

                 if (redeemVal != 1) {
                 $('#TradeInstmt').val(TradeInstmt);
                 $('#InstallmentAmount').val(installmentAmount);
                 } else {
                     $('#TradeInstmt').val("");
                     $('#InstallmentAmount').val("");
                 }
                 break;
             case 'WebAtmPaySubmit': //網路ATM
                 paymentName = $('#webatmPayType option:selected').val();

                 if (typeof (paymentName) == "undefined" || paymentName == "") {
                     SetAlertMsg("請選取WebATM銀行。");
                     LockSubmit(false);
                     return false;
                 }

                 alertContent += "<div style='text-align:left'>歐付寶貼心提醒您，將跳轉至銀行頁面進行後續付款!<br /><br />"
                 alertContent += "因網路ATM屬於即時交易，交易期間請『不要』重新整理網頁或回到上一頁，有可能導致交易失敗，<br />"
                 alertContent += "並請先確定<br />"
                 alertContent += "&nbsp;&nbsp;&nbsp;1. 讀卡機是否正確連接，驅動程式是否正確安裝？<br />"
                 alertContent += "&nbsp;&nbsp;&nbsp;2. 銀行提供的WEBATM 網頁ACTIVE X元件是否正確安裝？<br /><br />"
                 alertContent += "每間銀行提供元件安裝方式不同，請與您的發卡銀行確認。<br />"
                 alertContent += "以下過程中，若您因斷線、當機或其他任何因素導致交易未完成，我們不會收取您任何費用，屆時您只要重新購買即可。<br /></div>"

                 break;
             case 'AtmPaySubmit': //ATM及銀行臨櫃
                 paymentName = $('#atmPayType option:selected').val();

                 if (typeof (paymentName) == "undefined" || paymentName == "") {
                     SetAlertMsg("請選取ATM銀行。");
                     LockSubmit(false);
                     return false;
                 }
                 break;

             case 'AccountLinkSubmit':  //AccountLink.
                 var acctType = $('#accountLinkPayType option:selected').val().split('#');
                 if (acctType && acctType.length > 1) {
                     paymentName = acctType[0];
                     var acctArr = acctType[1].split('@');
                     if (acctArr && acctArr.length > 1) {
                         $('#BankCode').val(acctArr[0]);
                         $('#LinkAccountID').val(acctArr[1]);
                     }
                 }
                    
                 if (typeof (paymentName) == 'undefined' || paymentName == '') {
                     SetAlertMsg('請選擇銀行帳戶');
                     LockSubmit(false);
                     return false;
                 }

                 break;

             case 'CvsPaySubmit': //超商代碼
                 paymentName = $('#cvsPayType').val();

                 if ($('#merchantId').val() == '999990001') {
                     if (!(currency.toUpperCase() == 'CNY' && oriTradeTotalAMT >= 500)) {
                         confirmContent = '超商代碼需加收 26 元超商通路費，確定要繼續嗎？';
                     }
                 } else if ($('#merchantId').val() == '1031095' || $('#merchantId').val() == '1036159' || $('#merchantId').val() == '1036161') {
                     confirmContent = '超商代碼需加收 26 元超商通路費，確定要繼續嗎？';
                 }

                 break;
             case 'OverseasPaySubmit': //支付宝&財付通
                 paymentName = $('input[name="overseasPayType"]:checked').val();

                 if (typeof (paymentName) == "undefined") {
                     SetAlertMsg("請選取海外支付類別。");
                     LockSubmit(false);
                     return false;
                 }
                 break;
         }

         var regExOversea = /^[0-9]{10,20}$/;
         var regExCellPhone = /^[0][9][0-9]{8}$|^[0][8][3][0][0-9]{6}$/; // #36680 新增手機格式0830

         if (typeof $("#CellPhone_" + submitType).val() != 'undefined' && '1' != '1') {

             var s = $("#CellPhone_" + submitType).val().replace("+", "");
             if (s.substr(0, 4) == "8869" || s.substr(0, 6) == "886830") {
                 //SetAlertMsg("台灣手機號碼請直接輸入手機區碼「09」例如：0937123456，謝謝");
                 $("#CellPhone_" + submitType).val("0" + s.replace("886", ""));
             }

             var cellphone = s.substr(0, 2);
             var isChekcCellPhone = false;

             isChekcCellPhone = checkOnBlur('CellPhone_' + submitType, regExCellPhone);

             if (!isChekcCellPhone) {
                 LockSubmit(false);
                 return false;
             }
         }
         var haveConfig = false;

         //### 警告訊息
         if (alertContent != "") {
             haveConfig = true;
             swal({
                 title: '',
                 html: alertContent,
                 showCancelButton: false,
                 confirmButtonColor: '#444',
                 confirmButtonText: '確定',
                 width: '550px'
             }).then(function () {
                 checkPaymentNext(objectId);
                 return false;
             });
         } 

         //### Confirm訊息
         if (confirmContent != "") {
             haveConfig = true;
             swal({
                 text: confirmContent,
                 showCancelButton: true,
                 confirmButtonColor: '#444',
                 cancelButtonColor: '#444',
                 confirmButtonText: '確定',
                 cancelButtonText: '取消'
             }).then(function () {
                 checkPaymentNext(objectId);
                 return false;
             }, function (dismiss) {
                 // dismiss can be 'cancel', 'overlay', 'close', 'timer'
                 if (dismiss === 'cancel') {
                     return false;
                 }
             });
         }

         if (!haveConfig == true) {
             checkPaymentNext(objectId);
             return false;
         }
     }

     function setAllAmtVal(tradeAmount, shoppingAmount, eventAmount, discountAmount,thirdPartyFee) {
         $('#tradeAmount').val(tradeAmount);
         $('#shoppingAmount').val(shoppingAmount);
         $('#eventAmount').val(eventAmount);
         $('#discountAmount').val(discountAmount);
         $('#thirdPartyChargeFee').val(thirdPartyFee);
     }

     function initAllAmtVal() {
         $('#tradeAmount').val("");
         $('#shoppingAmount').val("");
         //$('#eventAmount').val("");
         $('#discountAmount').val("");
         $('#thirdPartyChargeFee').val("");
     }

     //### 檢查輸入皆為字串
     function ValidateInt(e, pnumber) {
         if (!/^\d+?\d*$/.test(pnumber)) {
             $(e).val(/^\d+?\d*/.exec($(e).val()));
         }
         return false;
     }

     function reloadCaptchaImage(obj) {
         obj.src = 'https://member-stage.opay.tw/App/ZeroMember/Captcha?t=' + new Date().getTime();

     }


     function SetAlertMsg(msg) {
         swal({
             text: msg,
             confirmButtonColor: '#444',
             confirmButtonText: '確定'
         });
         return false;
     }

     function submitForm(paymentName) {

        var submitFlag = true;
        //### 檢查會員消費金額是否需要升級
        var LoginLater = $('#LoginLater').val();
        
        if ('1' == 1 || LoginLater == "1") {
            var tradeAmount = parseInt($('#TradeAmount').val());
            var LevelID = 0;
             var LevelName = "白金會員";
             var isCheckCVS = false;        //## 是否是判斷CVS交易級別
             var isCheckTradeAmt = false;   //## 是否是判斷交易金額的級別
             if (paymentName.indexOf("CVS") != -1) {
                 LevelID = 12;
                 LevelName = "黃金會員";
                 isCheckCVS = true;
             }

            if (tradeAmount > 30000) {
                LevelID = 13;
                 LevelName = "白金會員";
                 isCheckTradeAmt = true;
            }
//             else if (tradeAmount >= 10000) {
//                 LevelID = 11;
//                 isCheckTradeAmt = true;
//             }

             var htmlStr = "";

             if (isCheckCVS) {
                 htmlStr = "因電子支付條例規定，使用超商代碼需為" + LevelName + "級別，請先成為" + LevelName + "後繼續交易";
             }

             if (htmlStr == "" && isCheckTradeAmt) {
                 htmlStr = "因電子支付管理條例規定，本次交易金額超過您本月累積可交易的額度，請您先升級為【" + LevelName + "】後重新交易。";
             }

             var memberLevelID = $("#LevelID").val();

             if (memberLevelID == "10") {
                 if (LevelID == 0) {
                     LevelID = 11;
                     LevelName = "一般會員";
                 }

                 if (htmlStr == "") {
                     htmlStr = "因電子支付管理條例規定，需先完成個人身分資料的驗證成為【" + LevelName + "】後才可完成交易。";
                 }
             }

            //### 至升級頁面做升級
             if (parseInt(memberLevelID) < LevelID) {
                swal({
                    title: '',
                     html: htmlStr,
                    showCancelButton: false,
                    confirmButtonColor: '#444',
                    confirmButtonText: '確定',
                    width: '550px'
                }).then(function () {
                    //### 導到升級頁
                    $('#Type').val("U");
                    $('#UpgradeLevel').val(LevelID);
                    $('#PayForm').attr('action', '/Cashier/MemberAgent').submit();
                    return false;
                });
                 return false;
            }

            //### 當月付款額度爆掉，導到升級頁
            $.ajax({
                type: "post",
                url: "/Cashier/CheckBuyerPaymentAmount",
                async: false,
                dataType: "json",
                data: {
                    TradeAmount: $('#TradeAmount').val(),
                     MerchantTradeNo: 'VGBXYZ202012000030',
                    AllPayTradeID: '808695'
                },
                success: function (data) {
                    if (data.RtnCode != "1") {
                        submitFlag = false;

                        if (data.IDNRepeat == 1) {
                            swal({
                                title: '',
                                html: '您輸入的身分資料符合查核需求，為加強身分識別請再次確認您的身分資料。',
                                showCancelButton: false,
                                confirmButtonColor: '#444',
                                confirmButtonText: '確定',
                                width: '550px'
                            }).then(function () {
                                $('#Type').val("U");
                                $('#UpgradeLevel').val(data.UpgradeLevel);
                                $('#IDNRepeat').val(data.IDNRepeat);
                                $('#PayForm').attr('action', '/Cashier/MemberAgent').submit();
                            });
                            return false;
                        }

                         if (data.UpgradeLevel != "99") {

                            swal({
                                title: '',
                                html: "因電子支付管理條例規定，本次交易金額超過您本月累積可交易的額度，請您先升級為【" + data.UpgradeName + "】後重新交易。",
                                showCancelButton: false,
                                confirmButtonColor: '#444',
                                confirmButtonText: '確定',
                                width: '550px'
                            }).then(function () {

                                if (data.UpgradeLevel == 14 || data.UpgradeLevel == 22) {
                                    //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
                                    $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
                                    setTimeout(function () {
                                        var url = 'https://member-stage.opay.tw' + '/MemberAuth/AuthOverview';
                                        location.href = url;
                                        return false;
                                    }, 1000);
                                } else {
                                    //### 導到升級頁
                                    $('#Type').val("U");
                                    $('#UpgradeLevel').val(data.UpgradeLevel);
                                    $('#PayForm').attr('action', '/Cashier/MemberAgent').submit();
                                }
                            });
                             return false;

                         } else {
                             submitFlag = true;
                         }
                     }
                 }
            });
        }

        if (submitFlag) {
            var IsBindingCredit = $("#IsBindingCredit").val();
            var IsUnionPay = $("#UnionPay").val();
            var SetBindingCredit = $("#SetBindingCredit").val();

            //判斷有否使用AI風管
            var useCreditRiskControl = '0';
            if (paymentName.indexOf("Credit") != -1 && IsBindingCredit != "1" && IsUnionPay != "1" && '0' == "1" && '0' == "0" && '0' == "0") {
                $.ajax({
                    type: "post",
                    url: "/Cashier/BankXykCodeAuth",
                    async: false,
                    dataType: "json",
                    data: {
                        CardNo: $('#CardNo').val(),
                        CardValidMM: $('#CardValidMM').val(),
                        CardValidYY: $('#CardValidYY').val(),
                        CardAuthCode: $('#CardAuthCode').val(),
                        CellPhone: $('#CellPhone').val(),
                        //IDNO: $('#IDNO').val(),
                        allPayTradeID: '808695',
                        MerchantID: '2000132',
                            merchantTradeNo: 'VGBXYZ202012000030'//,
                            //SetBindingCredit: SetBindingCredit
                    },
                    success: function (data) {
                        $.unblockUI();                     
                        if (data.RtnCode == 1) {
//                            if (SetBindingCredit == "1" && data.BindingRtnCode != "1") {
////                                if (!confirm('您使用的信用卡，不支援綁定，是否繼續交易但不綁定信用卡?')) {
////                                    LockSubmit(false);
////                                    return false;
////                                }

//                                $("#CreditBinding").prop("checked", false);
//                                $('#SetBindingCredit').val("0");
//                            }

                            $("#PayForm").submit();
                            return false;
                        } else {
                            swal({
                                title: '',
                                html: data.RtnMsg,
                                showCancelButton: false,
                                confirmButtonColor: '#444',
                                confirmButtonText: '確定',
                                width: '550px'
                            }).then(function () {
                                $("#LoginForm").submit();
                                return false;
                            });
                            return false;
                        }
                    }
                });
            }
            else {

                //$.blockUI({ message: '<br/><br/><img src="/Content/themes/WebStyle/images/Diamond.png" alt="wait"/><br/><img src="/Content/themes/WebStyle/images/time_0.gif" width="178" height="19" /><br/><span class="A_GRAY18">交易資料傳輸中…<br />請勿關閉視窗，以避免交易失敗！</span><br /><span class="A_GRAY161">Transaction data processing… DO NOT refresh or close the webpage.</span><span class="A_GRAY16"><br /><br/>' });
                $.blockUI({ message: '<div tabindex="-1" class="p-popup-wrap"><div class="p-popup-container"><div class="p-popup-content"><div class="p-popup-block p-popup-large"><div class="site-content popup-bridge"><div class="popup-bridge-block"><img class="scb-pic1" src="/Content/themes/NewPayment/images/frame/loading_allpay.png" alt="loading"><img class="scb-pic2" src="/Content/themes/NewPayment/images/frame/loading.gif" alt="loading"></div><div class="content-txt-wrap">交易資料傳輸中… <br>請勿關閉視窗，以避免交易失敗！<br>Transaction data processing… DO NOT refresh or close the webpage.</div></div></div></div></div></div>' });
                //openPopupBridge();
                setTimeout(function () { $("#PayForm").submit(); }, 1000);
                //return false;
            }
        }
        return false;
     }

     function openLoginWin(type) {
         //alert('b');
         $("#LoginToNext").val(type);
         if(type == "P"){
             $('#pCellPhoneAlreadyMember').show();
         }else if(type == "R"){
             $('#pCellPhoneAlreadyMember').hide();
         }
         $('#BeforeLogin').trigger('click');

         return false;
     }

     function CalRedeemCash(paymentTypeID,paymentSubTypeID){
         $.ajax({
             type: "post",
             url: "/Cashier/CalRedeemCash",
             async: false,
             dataType: "json",
             data: {
                 merchantID: $('#merchantId').val(),
                 allPayTradeID: '808695',
                 paymentTypeID: paymentTypeID,
                 paymentSubTypeID: paymentSubTypeID,
                 QuickPayID: '',
                 MerchantTradeNo: 'VGBXYZ202012000030',
                 isCreditPeriodTrade: '0'
             },
             success: function (data) {
                 $.unblockUI();

                 $('#RedeemCash').val(data.RedeemCash);

                 CheckShoppingAMT("submit");
                 CheckBalanceAMT("submit");

                 $('#eventAmount').val(data.RedeemCash);
                 $('#ddRedeemCash').html('-' + commafy(data.RedeemCash));
                 
                 if(data.RedeemCash > 0){                    
                    $('.RedeemCash').show();
                 }else{
                    $('.RedeemCash').hide();
                 }

                 if (data.FeedbackAmt > 0) {
                     $('#divFeedBack').show();
                 } else {
                     $('#divFeedBack').hide();
                 }

                 $('#spFeedBack').html(commafy(data.FeedbackAmt));

                 //}
                 return false;
             }
         });
     }

     function CalDropRedeem(paymentType){
         var arr = paymentType.split("@");
            if(arr.length > 2){
                CalRedeemCash(arr[0],arr[1]);
            }
     }

     function CalTabRedeem(paymentType) {
         var arr = paymentType.split("_");

         if (arr.length == 2) {
             if (arr[0] != 10000 && arr[1] != 2003) {
                 CalRedeemCash(arr[0], arr[1]);
             } else if (arr[0] == 10000 && arr[1] == 2003 /*&& '' == '' && '0' == '0' && '0' == '0'*/) {
                 CalRedeemCash(arr[0], arr[1]);
             }
             else {
                 $('#RedeemCash').val(0);

                 CheckShoppingAMT("submit");
                 CheckBalanceAMT("submit");
             }
         }
     }

     //某欄位的字串的第一個字元改大寫
     function FirstLetterToUpper(jqueryObj) {
         var tmpIDNO = $.trim(jqueryObj.val());
         var tmpIDNOLen = tmpIDNO.length;
         if (tmpIDNOLen > 0) {
             //將第一位字元轉換為大寫
             var tmpChar = tmpIDNO.substring(0, 1).toUpperCase();
             var postString = (tmpIDNOLen - 1 > 0) ? tmpIDNO.substring(1, tmpIDNOLen) : "";
             tmpIDNO = tmpChar + postString;
             //回填資料
             jqueryObj.val(tmpIDNO); 
         }
     }

     function setCustomAlertMsg(msg){
         $('#divPopupBg').show();
         $('#divPopupWrap').show();
         
         if(msg != ''){
            $('#divAlertMsg').html(msg);
         }

         return false;
     }
     function checkWeiXinPayOnly() {
         if ('0' <= 0) {
            return;
         } else {
             if ('0' == "0") {
                return;
            }
         }
         checkWeiXinPayResult();
     }
     function checkWeiXinPayResult() {
         if (0 <= 0)
             return;

         var allpayTradeID = '808695';
         if(isNaN(allpayTradeID))
            return;

         $.ajax({
             type: "POST",
             url: "/Cashier/CheckWeiXinPayResult",
             dataType: "json",
             cache: false,
             data: {
                 "tradeID": allpayTradeID
             },
             success: function (resp) {
                 if (resp == '0') {
                     setTimeout(checkWeiXinPayResult, 3000);
                 }
                 else {
                     //不顯示離開網頁的警告訊息.
                     $('#isSubmitting').val('1');
                     location.href = 'https://payment-stage.opay.tw' + '/Cashier/WeiXinPayResult?tradeID=' + allpayTradeID;
                 }
             }
         });
     }

     function openPopupBridge() {
         $('#divPopupBg').show();
         $('#divPopupBridge').show();

     }

 </script>
 <!-- script end -->

 <!-- site-body start -->
   <div class="site-body">
        <input type="hidden" id="tradeAmount">
        <input type="hidden" id="shoppingAmount">
        <input type="hidden" id="eventAmount" value="0">
        <input type="hidden" id="discountAmount">
        <input type="hidden" id="SubmitType">
        <input type="hidden" id="RedeemCash" value="0">
        <input type="hidden" id="thirdPartyChargeFee" value="0.0000">
        <a href="https://member-stage.opay.tw/MemberAuth/AuthOverview" target="_blank" id="aMemberAuth"></a>

      <div class="site-main-wrapper appdevice on-touch">
         <div class="site-main on-touch">
            <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="main-pic on-touch">               
                    <img src="./allpay_files/showcase.png" alt="使用歐付寶，血拼也能賺錢">
            </a>
         </div>
      </div>

      <div class="site-content-wrapper tradeinfo">
         <div class="site-content">
            <h3 class="content-title">訂單資訊</h3>
            <div class="order-table o-info-1">
               <dl>
                  <dt>訂單編號</dt>
                  <dd>${empty param.orderIdStr?"VGBXYZ202012000030":param.orderIdStr}</dd>
               </dl>
				<dl>
                  <dt>商店/網站名稱</dt>
                  <dd>歐付寶測試店家 <span style='color:darkblue'>${empty param.title?"VGB":param.title}</span></dd>
               </dl>
<!--                <dl> -->
<!--                   <dt>收款方會員編號</dt> -->
<!--                   <dd>2000132</dd> -->
<!--                </dl> -->
<!--                <dl id="dlMemberID"> -->
<!--                   <dt>付款方會員編號</dt> -->
<!--                   <dd>2001760</dd> -->
<!--                </dl> -->
               <dl>
                  <dt>款項撥至商家時間</dt>
                  <dd>立即 <span class="scw-tip">(請注意！您的支付款項將於交易完成後，移轉至收款人的電子支付帳戶。)</span></dd>
               </dl>
            </div>

            <div class="o-info-2">
               <div class="order-table">
                  <dl class="ot-title">
                     <dd class="o-pd-name">商品明細</dd>
                     <dd class="o-pd-num">數量</dd>
                     <dd class="o-pd-price">單價</dd>
                     <dd class="o-pd-total">小計</dd>
                  </dl>
                  <!-- 商品清單 start -->
                  <dl>
                     <dd class="o-pd-name"><span style='color:darkblue'>
                     	${empty param.title?"VGB":param.title} ${empty param.itemName?"信用卡支付授權":param.itemName}
                     </span></dd>
                     <dd class="o-pd-num">1</dd>
                    <dd class="o-pd-price DivTradeTotalAMT">${empty param.totalAmount?"0":param.totalAmount}</dd>
                    <dd class="o-pd-total DivTradeTotalAMT">${empty param.totalAmount?"0":param.totalAmount}</dd>
                  </dl>
                  <!-- 商品清單 end -->
               </div>
               <input id="TradeAmount" name="TradeAmount" type="hidden" value="${empty param.totalAmount?0:param.totalAmount}">
               <div class="order-table ot-total">
                  <dl style="display:none;" id="chooseCVScode">
                     <dd class="o-other-name">超商代碼手續費</dd>
                     <dd class="o-other-total">26</dd>
                  </dl>
                  <dl class="o-bouns RedeemCash" style="display: none;">
                    <dd class="o-other-name">折抵金額</dd>
                    <dd class="o-other-total" id="ddRedeemCash">-0</dd>
                </dl>              
                  <dl class="o-sum">
                     <dd class="o-other-name">應付金額</dd>
                     <dd class="o-other-total">NT$ 
                     <span id="labFinalTradeTotalAMT" style="vertical-align:baseline;">                     	
                     </span>
                     </dd>
                  </dl>
               </div>
               <div class="o-other-tip">請務必於訂單資訊下方選擇付款方式，以完成交易</div>
            </div>
            <div class="o-remind-tip" style="display:none;" id="divFeedBack">本筆交易成功可獲得紅利回饋點數：
            	<span id="spFeedBack">0</span>點</div>
         </div>
      </div>


      <div class="site-content-wrapper member-check-wrap appdevice" id="divCheckAddMember" style="display: none;">
         <div class="site-content">
            <form>
               <div class="member-check">
                  <div class="mr-btn-block">
                     <ul>
                        <li class="mbb-1">
                           <h4>【 加入歐付寶會員可享 】</h4>
                           <div class="mbb-content">
                              <p>所有歐付寶特約商店均能使用</p>
                              <p>最多提供27家信用卡分期銀行</p>
                              <p>結帳僅需登入，安全快速又便利</p>
                              <p>行動支付App出門不用帶錢包</p>
                           </div>
                           <a href="javascript:void(0)" class="btn btn-white call-member-pay">下一步</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </form>
         </div>
      </div>

      <div class="site-content-wrapper scw-gray member-pay-wrap" id="divSelectPaymentType" style="display: block; overflow: hidden;">
         <div class="site-content">
            <!-- 打開支付確認頁的隱藏button -->
            <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#m-login-popup" id="BeforeLogin" data-effect="mfp-zoom-in" class="open-popup-link"></a>

            <h3 class="content-title">付款方式</h3>
            <!-- *******信用卡畫面*********** -->
            <form action='allpay.do' onsubmit="return processAuth()" method="POST">
               <div class="member-pay">
                  <div class="pay-tab-wrapper">
                     <div class="pay-tab-menu">
                        <div class="pt-menu-btn">信用卡</div>
                        <ul class="pay-tab-list">                           
                                <li class="accordion calPaymentTypeRedeem active" id="nav-section3" paymenttype="10000_2003">信用卡</li>
                        </ul>
                     </div>
                     <!-- 打開微信QRCODE頁的隱藏button -->
<!--                      <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#weixinpay-qrcode-popup" id="callDivWeiXinPayQRCode" data-effect="mfp-zoom-in" class="open-popup-link"></a> -->

                     <div class="pay-tab-content">                        
                        <!-- 信用卡(Start) -->
                        <div class="pay-tab-nav-section3">
                           <div class="pay-tab-form">
                              <div class="ptf-card-type">
                                 <span class="cc-icon cc-visa"></span>
                                 <span class="cc-icon cc-mc"></span>
                                 <span class="cc-icon cc-jcb"></span>                                
                              </div>
                                 <div class="ptf-tip-block">
                                     <div class="ptf-tip">本交易可使用之信用卡：兆豐、花旗、玉山、中信、台新…  
                                        <a class="call-bank-pp" href="javascript:void(0)">看更多</a>
                                        <div class="tip-popup bank-tip-popup" style="width:auto;">
                                       兆豐、花旗、玉山、中信、台新、匯豐、永豐、新光、元大(含大眾)、遠東、凱基、安泰、華南、國泰、日盛、第一、永旺、樂天、陽信、富邦、上海、聯邦、合庫、台企、彰銀、華泰、三信、台中、土地、高雄、台銀、星展(含澳盛)。 <br>* 不支援AE卡與虛擬信用卡。
                                        </div>
                                     </div>
                                  </div>
                               
                              <!-- 定期定額(Start) -->
                              <!-- 定期定額(End) -->
                              <!-- 分期/紅利折抵(Start) -->
                              <dl class="noUnionPay ptf-bs">
                                  </dl>                                         
                              <!-- 分期/紅利折抵(End) -->
                              
                              <!-- 有否會員設定的信用卡-->
                                  <dl class="noUnionPay">
                                     <dt><sup class="inp-required">*</sup>信用卡</dt>
                                     <dd>
                                     	<input type='hidden' name='customerId' value='${param.customerId}' readonly>
                                     	<input type='hidden' name='orderId' value='${param.orderId}' readonly>
                                     	<input type='hidden' name='orderIdStr' value='${param.orderIdStr}' readonly>
                                     	<input type='hidden' name='url' value='${param.url}' readonly>
                                     	<input type='hidden' name='title' value='${param.title}' readonly>
                                     	<input type='hidden' name='totalAmount' value='${param.totalAmount}' readonly>
                                        <label class="pay-tab-select">
                                           <select id="CreditID" name="CreditID">
                                                <option value="0" selected>我要自行輸入信用卡號</option>
                                                <option value="11013431195_1">測試卡號：末四碼 2222 </option>
                                           </select>
                                        </label>
                                     </dd>
                                  </dl>

                              <dl class="noUnionPay">                                 
                                <dt class="divCustonCardNo" style="display: inline-block;min-width:"><label><sup class="inp-required">*</sup>信用卡號</label></dt>
                                 <dd>
                                <ul class="pay-card-num divCustonCardNo" style="display: block;margin-block-start:0;padding-inline-start:0">
                                       <li class="card-num" style="width:50%">
                                          <input id="CCpart1" name="CCpart1" required type="tel" maxlength="4" class="creditNum" autocomplete="off">-
                                          <input id="CCpart2" name="CCpart2" required type="tel" maxlength="4" class="creditNum" autocomplete="off">-
                                          <input id="CCpart3" name="CCpart3" required type="tel" maxlength="4" class="creditNum" autocomplete="off">-
                                          <input id="CCpart4" name="CCpart4" required type="tel" maxlength="4" class="creditNum" autocomplete="off">
                                       </li>
                                       <li class="card-type">
                                          <span id="visa" class="picCreadit cc-icon cc-visa" style="display:none;"></span>
                                          <span id="master" class="picCreadit cc-icon cc-mc" style="display:none;"></span>
                                          <span id="jbc" class="picCreadit cc-icon cc-jcb" style="display:none;"></span>
                                          <span class="ptf-txt" id="showBankName" style="color:#227BBB"></span>
                                       </li>
                                    </ul>

                                    
                                 </dd>
                              </dl>
                              <dl class="noUnionPay pay-card-date creditBinding" style="display: block;">
                                 <dt><sup class="inp-required">*</sup>卡片有效期限</dt>
                                 <dd style="width:30%">
                                    <input type="tel" id="CreditMM" required name="CreditMM" placeholder="MM" autocomplete="off" maxlength="2">
                                    <input type="tel" id="CreditYY" required name="CreditYY" placeholder="YY" autocomplete="off" maxlength="2">
                                 </dd>
                                 <dd class="pay-card-ccvb">
                                    <dl>
                                       <dt><sup class="inp-required">*</sup>檢查碼 </dt>
                                       <dd>
                                          <input type="tel" id="CreditAuth" required name="CreditAuth" placeholder="背面末 3 碼" autocomplete="off" maxlength="3">
                                          <img src="./allpay_files/ccvb.png" class="p-ccvb-img">
                                          <p class="pay-tip-2">此欄位為驗證之需，<a href="https://www-stage.opay.tw/" target="_blank">歐付寶</a>不予記錄</p>
                                       </dd>
                                    </dl>
                                 </dd>
                              </dl>
                                  <dl class="noLogin" style="display: none;">
                                        <dt><label for="p_mobile_num_4"><sup class="inp-required">*</sup>手機號碼</label></dt>
                                        <dd><input type="tel" id="CellPhone_CreditPaySubmit" class="cellPhoneCheck" value="0910088711" placeholder="請輸入台灣手機號碼"></dd>
                                  </dl>
                           </div>
                           <input type="hidden" name="creditPayType" value="10000@2003@Credit_GW">
                           <input type="hidden" name="creditInstallmentPayType" value="10023@1@Credit_CreditInstallment">                                        
                           <div class="pay-tip">
                              <h4 class="pt-title">注意事項</h4>
                              <h4 class="pt-slide-title">注意事項</h4>
                              <ul class="pt-slide-list">
                                 <li>本頁面已使用 256-bit SSL 安全加密機制。</li>
                                 <li>為確保網路交易安全，您同意本公司得就此筆交易向發卡銀行、收單銀行及持卡人核對是否屬實。</li>
                                 <li>本次交易採用歐付寶金流機制進行付款，故信用卡交易帳單將顯示為歐付寶電子支付股份有限公司。</li>
                                 <li>非經持卡人同意，如有冒用他人卡片盜刷之行為，刑法最高判五年有期徒刑。</li>
                                 <li>信用卡成功交易後否認，如經判定為本人或授權刷卡的行為，相關損失及費用須自行負擔。</li>
                                 <li>信用卡交易限本人持有之卡片，請勿使用他人卡片進行交易。</li>
                              </ul>
                           </div>
                           <div class="scw-btn-block">
						   <%--	  <div class="noUnionPay pay-tab-check add-cc-block">
                                         <input type="checkbox" id="CreditBinding" name="CreditBinding">
                                        <label for="CreditBinding" class="creditBindingCk checkbox" style="display: inline-block;">記錄相關資訊，可日後快速結帳。
                                                <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" onclick="setCustomAlertMsg();">查看可綁定之信用卡</a>
                                        </label>
                                  </div>
                            --%>
                                  <button id="CreditPaySubmit">下一步</button>
                           </div>    
                        </div>
                        <!-- 信用卡(End) -->

                        <!-- 歐付寶帳戶(Start) -->
                        <!-- 歐付寶帳戶(End) -->

                        <!-- AccountLink(Start) -->
                        <!-- AccountLink(End) -->
                            
                        <!-- WebATM(Start) -->
                        <!-- WebATM(End) -->

                        <!-- ATM櫃員機(Start) -->
                        <!-- ATM櫃員機(End) -->
                        
                        <!-- 超商代碼(Strat) -->     
                        <!-- 超商代碼(End) -->
                        
                        <!-- 海外支付(Strat) -->   
                        <!-- 海外支付(End) -->
                          
                        <!-- 微信支付(Strat) -->
                        <!-- 微信支付(End) -->
                                              
                     </div>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   
   
     
   <!-- site-body 內容  end -->

   <!-- 回頂部 -->
<!--    <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="scrollToTop"><span class="icon-ctrl t-icon"></span></a> -->

   <!-- 購物金折抵 -->   
   <div id="pay-confirm-popup" class="pay-confirm-popup mg-popup mfp-with-anim mfp-hide" style='display:none'>
      <form>
         <div class="pp-container">
            
            <h3 class="content-title">付款確認</h3>
            <div class="order-table o-info-1">
               <dl>
                  <dt>訂單編號</dt>
                  <dd>VGBXYZ202012000030</dd>
               </dl>
               <dl>
                  <dt>商店/網站名稱</dt>
                  <dd>歐付寶測試店家</dd>
               </dl>
<!--                <dl> -->
<!--                   <dt>收款方會員編號</dt> -->
<!--                   <dd>2000132</dd> -->
<!--                </dl> -->
<!--                <dl> -->
<!--                   <dt>付款方會員編號</dt> -->
<!--                   <dd>2001760</dd> -->
<!--                </dl> -->
               <dl>
                  <dt>款項撥至商家時間</dt>
                  <dd id="ddAllocateStatus">立即 <span class="scw-tip">(請注意！您的支付款項將於交易完成後，移轉至收款人的電子支付帳戶。)</span></dd>
               </dl>
            </div>
            <div class="order-table ot-total">
               <dl class="o-sum">
                  <dd class="o-other-name">應付金額</dd>
                  <dd class="o-other-total">NT$ <span id="spTradeAmount">100</span></dd>
               </dl>
            </div>
            <div class="o-other-tip"></div>

            <div class="mp-btn-block">
               <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="readySubmit btn">確認交易</a>
               <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn btn-gray" id="cancelTrade">取消交易</a>
               <a class="popup-close"></a>
            </div>
         </div>
      </form>
   </div>

      <!-- popup login form-->
   <div id="m-login-popup" class="m-login-popup mg-popup mfp-with-anim mfp-hide no-login-qr" style='display:none'>
      <form >
         <div class="m-login">
            <h3 class="content-title">會員登入</h3>
             <p id="pCellPhoneAlreadyMember" class="scw-tip" style="display:none">
                 <span class="scw-tip-icon">!</span>
                 您的手機號碼已經是歐付寶會員，請先登入後付款。
             </p>
             <p class="scw-tip ">
                 <span class="scw-tip-icon">!</span> 此為測試環境！測試帳號為 stageuser001<br>證件號碼為 A123123123<br>測試密碼為test1234　
             </p>
             <dl>
                 <dt><label for="m_account"><sup class="inp-required">*</sup>會員帳號</label></dt>
                 <dd><input class="txtMemberSubmit" type="text" id="m_account" name="" placeholder="請輸入6-20位英/數字混合帳號"></dd>
                 <div class="input-error-txt" id="divLoginError" style="display: none;"></div>
             </dl>
             <dl>
                 <dt><label for="m_account"><sup class="inp-required">*</sup>證件號碼</label></dt>
                 <dd>
                     <input type="text" id="m_IDN" name="" placeholder="請輸入身分證/居留證/統一編號" class="" onkeyup="">
                     <div class="input-error-txt" style="display: none;"></div>
                 </dd>
             </dl>
             <dl>
                 <dt><label for="m_pw"><sup class="inp-required">*</sup>會員密碼</label></dt>
                 <dd><input class="txtMemberSubmit" type="password" id="m_pw" name="" placeholder="請輸入登入密碼"></dd>
                 <dd class="m-forgot"><a href="https://member-stage.opay.tw/MemberPwdReset/AddPasswordResetSMS?PwdType=3" target="_blank">忘記帳密</a></dd>             
             </dl>

             <dl class="captcha-block">
                 <dt><label for="m_captcha"><sup class="inp-required">*</sup>驗證碼</label></dt>
                 <dd class="captcha-inp">
                     <input class="txtMemberSubmit" type="text" id="login-captcha" name="CaptchaValue" value="" maxlength="4" autocomplete="off" placeholder="請輸入驗證碼">     
                 </dd>
                 <dd id="divLoginCaptcha" class="captcha-img">                    
                     <img src="./allpay_files/Captcha" class="reloadCaptcha">
                 </dd>
                 <dd class="captcha-txt"><a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" id="reloadCaptcha" class="">重新產生</a></dd>
             </dl>
         <div class="mp-btn-block">
               <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn" id="aLoginSubmit">登入</a>
               <input type="hidden" id="LoginToNext" name="LoginToNext" value="R">
               <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn SendToECPay" style="display:none;" id="aSendToECPay">非會員結帳</a>
            </div>
         </div>
      </form>
   </div>

   
<!--     <div id="how-register" class="how-register mg-popup mfp-with-anim mfp-hide"> -->
<!--         <div class="pp-container"> -->
<!--             <h3 class="content-title">如何註冊成為歐付寶會員</h3> -->
<!--             <img src="./allpay_files/step_dark.png" alt="如何註冊成為歐付寶會員"> -->
<!--         </div> -->
<!--     </div> -->

<!--  
<div class="p-popup-bg" id="divPopupBg" style="display:none;"></div>
   <div class="p-popup-wrap" id="divPopupWrap" style="display:none;">
      <div class="p-popup-container">
         <div class="p-popup-content">
            <div class="p-popup-block">
               <div class="pp-content" id="divAlertMsg">
                  <li>目前信用卡自動儲值僅開放<font color="red">兆豐銀行</font>。</li> 
<li>信用卡提供綁定之銀行(32家)：<font color="red">兆豐、花旗、玉山、中信、台新、匯豐、永豐、新光、元大(含大眾)、遠東、凱基、安泰、華南、國泰、日盛、第一、永旺、樂天、陽信、富邦、上海、聯邦、合庫、台企、彰銀、華泰、三信、台中、土地、高雄、台銀、星展(含澳盛)</font>。</li> 
<li>簽帳金融卡提供綁定之銀行(5家)：<font color="red">兆豐、玉山、中信、台新、新光</font>。</li> 
<li>僅支援實體信用卡進行綁定，如使用虛擬信用卡綁定會導致身分驗證失敗(例: 遠東商銀iC虛擬卡號)。</li>

               </div>
               <div class="pp-btn-block">
                  <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn" id="aAlertSubmit">確定</a>
               </div>
            </div>
         </div>
      </div>
   </div>
-->

   <div tabindex="-1" id="divPopupBridge" class="p-popup-wrap" style="display:none;">
      <div class="p-popup-container">
         <div class="p-popup-content">
            <div class="p-popup-block p-popup-large">
               <div class="site-content popup-bridge">
                  <div class="popup-bridge-block">
                     <img class="scb-pic1" src="./allpay_files/loading_allpay.png" alt="loading">
                     <img class="scb-pic2" src="./allpay_files/loading.gif" alt="loading">
                  </div>
                  <div class="content-txt-wrap">
                     交易資料傳輸中… <br>
                     請勿關閉視窗，以避免交易失敗！<br>
                     Transaction data processing… DO NOT refresh or close the webpage.
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
  <%--
    <div class="alp-close" style="top: 150px;">
      <span class="icon-shrink2"></span>
   </div>
  <div id="scan-qrcode-popup">
    <aside class="app-link-pc" style="top: 150px;">      
        <ul class="appstore-icon">          
              
              <li><div id="output" style="display:none;"><canvas width="256" height="256"></canvas></div><div id="outputimg"><img class="imgQRCode" src="data:image/png;base64,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"></div><div class="scan_sucess" style="display: none;"></div></li>
              <li>立即使用<br>歐付寶行動支付 APP<br>掃碼付款</li>
              <li><a href="https://www-stage.opay.tw/mbpay/Pay" class="btn" target="_blank">付款教學</a></li>          
        </ul>      
    </aside>
    </div>
    
<input id="imgQRCode" name="imgQRCode" type="hidden" value="https://qr-stage.opay.tw/IIv1U">    <div class="site-content-wrapper scw-gray member-pay-wrap" style="display: block; overflow: hidden;">
    <div class="pay-main-login">
       <div class="pml-mobile-box pmb-close">
        <!---->
        <div class="opb-close">
            <img src="./allpay_files/ic_arrow_down.svg">
        </div>

        <div class="opb-header aPayForApp">
            <div class="obh-logo">
                <img src="./allpay_files/allPay_icon.png" alt="歐付寶 O&#39;Pay 電子支付">
            </div>

            <div class="obh-slogan">
                <div class="ohs-title ohst-1">
                    <h4>使用行動支付</h4>
                    <div class="btn btn-blue ohs-btn">立即付款</div>
                </div>

                <h4 class="ohs-title ohst-2">歐付寶行動支付</h4>
            </div>
        </div>

        <div class="pay-tab-form">
            <div class="lwml-1">
                <h2 class="lwm-title">使用歐付寶行動支付掃描 QRcode 付款</h2>
                <div class="lwm-qr">
                    
                    <div id="outputapp" style="display:none;"><canvas width="256" height="256"></canvas></div><div id="outputimgapp"><img class="lq-pic" src="data:image/png;base64,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"></div>
                </div>
                <div class="scw-btn-block lq-btn-block">
                    <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn" id="downloadApp">下載歐付寶</a>
                    <a href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" class="btn aPayForApp" id="aPayForApp">使用 APP 付款</a>
                </div>
            </div>
        </div>
        <!---->
        </div>
    </div>
        </div> 
<div class="white-overlay"></div><!-- 白色遮罩 --> 
<script src="./allpay_files/jquery.qrcode.min.js.下載"></script>
<script src="./allpay_files/jquery.signalR-1.2.2.min.js.下載"></script>
<script src="./allpay_files/hubs"></script>
<script src="./allpay_files/signalRQRCodeLogin.js.下載"></script>
<script language="javascript" type="text/javascript">

    var _runQRCodeLogin = false;

    //$(function () {
        signalRStart();
    //});

    function signalRStart(){

        if ('1' == '1') {
            var url = 'https://payment-stage.opay.tw';
            var actionUrl = url + "/Cashier/AccessPaymentQRCodeResult";
            var nextURL = url + "/Cashier/SignalRSuccess";
            var failUrl = url + "/Cashier/SignalRError";
            var mode = '0';
            var merchantID = '2000132';
            var tradeAmt = '100';
            var allpayTradeID = '808695';

            _runQRCodeLogin = true;
            signalRPayment(url, actionUrl, nextURL, failUrl, mode, merchantID, tradeAmt, allpayTradeID);
        }
        //e.preventDefault();
        return false;
    }

    function clearbackgroundevent(h) {
        _runQRCodeLogin = false;
        return false;
    }

</script>

<input type="hidden" id="LevelID" value="12">
<form action="https://payment-stage.opay.tw/Cashier/AioLoginUserConfirm" id="LoginForm" method="get">    <input type="hidden" name="timeStamp" value="1607565457">
    <input type="hidden" name="merchantId" value="2000132">
    <input type="hidden" name="merchantTradeNo" value="VGBXYZ202012000030">
    <input type="hidden" name="tradeType" value="aio">
    <input type="hidden" name="mid" value="30acf6e23f7221df811a694cc65fcff4">
    <input type="hidden" name="allPayTradeID" value="808695">
    <input type="hidden" name="macValue" value="1e8577171b11a9b62daa5661ce310eef">
    <input type="hidden" name="ChoosePayment" value="ALL">
    <input type="hidden" name="ChooseSubPayment" value="">
    <input type="hidden" name="PayerName" value="">
    <input type="hidden" name="PayerCellPhone" value="">
    <input type="hidden" name="toLoginYN" value="Y">
    <input type="hidden" name="QuickPayID" value="">
    <input type="hidden" name="isChoosePayBeforeLogin" id="isChoosePayBeforeLogin">
    <input type="hidden" name="CellPhone" value=""> 
    <input type="hidden" name="QuickPayMID" value="0">
    <input type="hidden" name="IgnorePayment" value="WebATM|ATM|CVS|Tenpay|TopUpUsed">
    <input type="hidden" name="UseShoppingCash" value="1">
    <input type="hidden" name="SelectTradeTypeLogin" id="SelectTradeTypeLogin">
    <input type="hidden" name="UnionPay" value="0">
    <input type="hidden" name="PlatformID" value="">
    <input type="hidden" name="CreditInstallment" value="">
    <input type="hidden" name="DeviceSource" value="P">
</form><form action="https://payment-stage.opay.tw/Cashier/RetainPaymentType" id="PayForm" method="post">    <input type="hidden" name="timeStamp" value="1607565457">
    <input type="hidden" name="merchantId" id="merchantId" value="2000132">
    <input type="hidden" name="merchantTradeNo" value="VGBXYZ202012000030">
    <input type="hidden" name="tradeType" value="aio">
    <input type="hidden" name="mid" value="30acf6e23f7221df811a694cc65fcff4">
    <input type="hidden" name="allPayTradeID" value="808695">
    <input type="hidden" name="macValue" value="61d02e596e57f03f8e56925905998313">
    <input type="hidden" name="PayerName" value="">
    <input type="hidden" name="PayerCellPhone" value="">
    <input type="hidden" name="IsBindingCredit" id="IsBindingCredit">
    <input type="hidden" name="SetBindingCredit" id="SetBindingCredit">     
    <input type="hidden" name="paymentName" id="paymentName">
    <input type="hidden" name="TradeTotalAMT" id="TradeTotalAMT">
    <input type="hidden" name="CardNo" id="CardNo" value="0"> 
    <input type="hidden" name="CardValidMM" id="CardValidMM" value="0">
    <input type="hidden" name="CardValidYY" id="CardValidYY" value="0">
    <input type="hidden" name="CardAuthCode" id="CardAuthCode" value="0">
    <input type="hidden" name="CreditCardID" id="CreditCardID" value="11013">
    <input type="hidden" name="TradeInstmt" id="TradeInstmt">
    <input type="hidden" name="InstallmentAmount" id="InstallmentAmount">
    <input type="hidden" name="Redeem" id="Redeem" value="">
    <input type="hidden" name="ChoosePayment" id="ChoosePayment" value="ALL">
    <input type="hidden" name="CellPhone" id="CellPhone">
    <input type="hidden" name="UnionPay" id="UnionPay" value="0">
    <input type="hidden" name="ShoppingAMT" id="ShoppingAMT" value="0">
    <input type="hidden" name="BalanceAMT" id="BalanceAMT" value="0">
    <input type="hidden" name="RedeemAMT" id="RedeemAMT" value="0">
    <input type="hidden" name="Discount" id="Discount" value="0">    
    <input type="hidden" name="CVSStoreID" id="CVSStoreID">    
    <input type="hidden" name="CVSStoreName" id="CVSStoreName">    
    <input type="hidden" name="CVSAddress" id="CVSAddress">    
    <input type="hidden" name="CVSTelephone" id="CVSTelephone">
    <input type="hidden" name="IsB2C" id="IsB2C" value="true">
    <input type="hidden" name="ReceiverName" id="ReceiverName">
    <input type="hidden" name="ReceiverZipCode" id="ReceiverZipCode">                
    <input type="hidden" name="ReceiverAddress" id="ReceiverAddress">
    <input type="hidden" name="ReceiverCellPhone" id="ReceiverCellPhone">
    <input type="hidden" name="Remark" id="Remark">
    <input type="hidden" name="CardHolder" id="CardHolder">    
    <input type="hidden" name="PlatformID" value="">
    <input type="hidden" name="AllPayID" value="">
    <input type="hidden" name="AccountID" value="">
    <input type="hidden" name="IngronAuth" value="">    
    <input type="hidden" name="EnableMobileServerCall" value="">
    <input type="hidden" name="EnableWebServerCall" value="">
    <input type="hidden" name="BankCode" id="BankCode">
    <input type="hidden" name="LinkAccountID" id="LinkAccountID">
    <input type="hidden" name="Type" id="Type">
    <input type="hidden" name="LoginLater" id="LoginLater" value="0">
    <input type="hidden" name="UpgradeLevel" id="UpgradeLevel">
    <input type="hidden" name="ThirdPartyFee" id="ThirdPartyFee" value="0">
    <input type="hidden" name="TmpAllPayTradeID" value="808695">
    <input type="hidden" name="IDNRepeat" id="IDNRepeat" value="0">
</form>
<form action="https://payment-stage.opay.tw/Cashier/SendTradeToECPay" id="SendToECPayForm" method="post">    <input type="hidden" name="allPayTradeID" value="808695">  
    <input type="hidden" name="merchantTradeNo" value="VGBXYZ202012000030">  
</form>
<form action="https://payment-stage.opay.tw/Cashier/TradeInfoCheckCancel" id="cancalForm" method="post">    <input id="AllPayTradeID" name="AllPayTradeID" type="hidden" value="808695">
    <input id="tradeType" name="tradeType" type="hidden" value="aio">
</form>
<!-- helper start -->





 <!-- helper end -->


 <!-- footer start -->
  <footer class="footer appdevice footer-active">
      <!--社群分享-->
      <aside class="social-share-f">
          <ul>
              <li>
                  <a class="ssf-icon ssf-fb" href="https://www.facebook.com/opayfans" target="_blank">
                      <span class="icon-facebook ssf-icon-t"></span>
                      <span class="icon-facebook ssf-icon-b"></span>
                  </a>
              </li>
              <li class="fb-share">
                  <div class="fb-like fb_iframe_widget" data-href="https://developers.opay.tw" data-width="135" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=219442204772696&amp;container_width=0&amp;href=https%3A%2F%2Fdevelopers.opay.tw%2F&amp;layout=button_count&amp;locale=zh_TW&amp;sdk=joey&amp;share=false&amp;show_faces=false&amp;width=135"><span style="vertical-align: bottom; width: 90px; height: 28px;"><iframe name="f642773c9a75f" width="135px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="./allpay_files/like.html" style="border: none; visibility: visible; width: 90px; height: 28px;" class=""></iframe></span></div>
              </li>
              <li>
                  <a class="ssf-icon ssf-g" href="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5#" target="_blank">
                      <span class="icon-google-plus ssf-icon-t"></span>
                      <span class="icon-google-plus ssf-icon-b"></span>
                  </a>
              </li>
              <li class="gplus-share">
                  <div id="___plusone_0" style="position: absolute; width: 450px; left: -10000px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position:absolute;top:-10000px;width:450px;margin:0px;border-style:none" tabindex="0" vspace="0" width="100%" id="I0_1607565643766" name="I0_1607565643766" src="./allpay_files/fastbutton.html" data-gapiattached="true"></iframe></div><div class="g-plusone" data-size="medium" data-href="https://developers.opay.tw" data-gapiscan="true" data-onload="true" data-gapistub="true"></div>
              </li>
              <li>
                  <a class="ssf-icon ssf-line" href="https://line.me/ti/p/%40opay" target="_blank">
                      <span class="icon-line ssf-icon-t"></span>
                      <span class="icon-line ssf-icon-b"></span>
                  </a>
              </li>
          </ul>
      </aside>
      <div class="footer-content">
          <div class="footer-logo">
              <a href="https://www-stage.opay.tw/" title="歐付寶 O&#39;Pay 第三方支付">
                  <img src="./allpay_files/allpay_logo2.svg" alt="歐付寶 O&#39;Pay 第三方支付">
              </a>
          </div>
          <aside class="app-link-mobile">
              <ul class="appstore-icon">
                  <li class="appicon-img"><img src="./allpay_files/allPay_icon.png" alt="allPay"></li>
                  <li><p>立即下載 歐付寶APP</p></li>
                  <li class="app-link-address">
                      <a href="https://itunes.apple.com/tw/app/xing-dong-zhi-fu/id579207122?mt=8" title="下載 ios 歐付寶 APP"><img src="./allpay_files/btn_ios_m.png" alt="ios app"></a>
                      <a href="https://play.google.com/store/apps/details?id=com.allpay.tw" title="下載 android 歐付寶 APP"><img src="./allpay_files/btn_android_m.png" alt="android app"></a>
                  </li>
              </ul>
          </aside>
          <div class="footer-info">
              <address class="contact-info">
                  <p class="ci-mail">
                      <span class="icon-clipboard ci-icon"></span>
                      <a href="https://www-stage.opay.tw/ServiceReply/Create" target="_blank">線上回報</a>
                  </p>
                  <p class="ci-tel">
                      服務時間：平日9:00－18:00
                  </p>
                  <p class="ci-tel">客服專線：(02)2655-0115</p>
              </address>
              <p class="copyright">
Copyright © 2020 O'Pay Electronic Payment Co., Ltd. All rights reserved.  <br> 本網站適用最新瀏覽器版本(IE 8以上、Chrome、Firefox 2.0以上、iOS 6以上)，若並非適用版本請更新您的瀏覽器。</p>
          </div>
          <div class="twcaseal-block">
            <div id="twcaseal" class="MINI">
               <img src="./allpay_files/twca_logo.png">
            </div>
         </div>
      </div>
  </footer>
  <!-- footer end -->

<!-- End: wrapper -->

<div class="swal2-container">
<div class="swal2-overlay" tabindex="-1"></div><div class="swal2-modal" style="display: none; margin-top: -351px;" tabindex="-1">
<div class="swal2-icon swal2-error"><span class="x-mark"><span class="line left"></span><span class="line right"></span></span></div>
<div class="swal2-icon swal2-question">?</div><div class="swal2-icon swal2-warning">!</div><div class="swal2-icon swal2-info">i</div>
<div class="swal2-icon swal2-success"><span class="line tip"></span> <span class="line long"></span><div class="placeholder"></div> <div class="fix"></div></div><img class="swal2-image"><h2></h2><div class="swal2-content"></div><input class="swal2-input"><select class="swal2-select"></select><div class="swal2-radio"></div><label for="swal2-checkbox" class="swal2-checkbox"><input type="checkbox" id="swal2-checkbox"></label><textarea class="swal2-textarea"></textarea><div class="swal2-validationerror"></div><hr class="swal2-spacer"><button type="button" class="swal2-confirm">OK</button><button type="button" class="swal2-cancel">Cancel</button><span class="swal2-close">×</span></div></div><iframe name="oauth2relay879021511" id="oauth2relay879021511" src="./allpay_files/postmessageRelay.html" tabindex="-1" aria-hidden="true" style="width: 1px; height: 1px; position: absolute; top: -100px;"></iframe><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
--%>
</body></html>