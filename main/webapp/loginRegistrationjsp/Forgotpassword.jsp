<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FORGOT PASSWORD</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<link rel="stylesheet" href="mis_css/css/bootstrap.css">
<link rel="stylesheet" href="mis_css/css/font-awesome.css">
<link rel="stylesheet" href="mis_css/css/ionicons.css">
<link rel="stylesheet" href="mis_css/css/style.css">
<link rel="stylesheet" href="mis_css/css/AdminLTE.css">
<link rel="stylesheet" href="mis_css/css/skins/_all-skins.min.css">
<style>
.input-group {
	width: 100%;
	padding-bottom: 15px;
}
select {
	padding-top: 5px !important;
	padding-bottom: 5px !important;
}
label {
	line-height: 20px !important;
}
</style>
<script>

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
} 

function form_validation()
{
	var userpass_old = document.getElementById('txt_user_name').value;
	error = 0 ; 
	if(userpass_old.trim() == "")
	{
		document.getElementById('username_err').innerHTML = 'Please Enter User Name' ;
		$("#txt_user_name").focus();
	    error = 1 ; 
	}else{
		document.getElementById('username_err').innerHTML = '' ;
		error = 0 ; 
	}
	
	/////////////////////////////////////
	email_error = 0 ; 
	var email_id = document.getElementById('txt_email_id').value;
	if(email_id.trim() == "")
	{
		document.getElementById('email_err').innerHTML = 'Please Enter Email ID' ;
		$("#txt_email_id").focus();
	    email_error = 1 ; 
	}else if( validateEmail(email_id) == false ){
		document.getElementById('email_err').innerHTML = 'Please Enter Correct Email ID' ;
		$("#txt_email_id").focus();
		email_error = 1 ; 
	}else{
		document.getElementById('email_err').innerHTML = '' ;
		email_error = 0 ; 
	}
	
	  
	
	cahp_error = 0 ;
	var txtcaptcha = document.getElementById('txtcaptcha').value;
	 
	if(txtcaptcha.trim() == "")
	{
		document.getElementById('capt_err').innerHTML = 'Please Enter Captcha' ;
		$("#txt_user_name").focus();
	    cahp_error = 1 ; 
	}else{
		document.getElementById('capt_err').innerHTML = '' ;
		cahp_error = 0 ; 
	}
	
	   
	if(error == 1 || email_error == 1 || cahp_error == 1  )
	{
		return false ; 	
	} 
	
	if (confirm("Sure to Send Mail")==false )
	{
		return false;
	}
} 
</script>
</head>
<body class="hold-transition skin-blue sidebar-collapse sidebar-mini fixed" style="background-color: rgb(210, 214, 222);" data-new-gr-c-s-check-loaded="14.1052.0" data-gr-ext-installed="">
<div style="background-color: rgb(210, 214, 222);">
  <section class="content" style="background-color: rgb(210, 214, 222);">
    <div class="login-box" style="margin-top: 3%;margin-bottom:0%">
      <div class="login-logo"> <a href="#"><b>Nway</b>ERP</a> </div>
        
      <!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg"><strong>Forgot Password</strong></p>
        
        <div class="has-error login-box-msg" style="text-align:center;">
        <label class="control-label" for="inputError"></label>        
        </div>   
        <form action="/forgot_password.php" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="txt_user_name" id="txt_user_name" style="padding: 8px !important; width:93% !important" placeholder="Enter User Name" value="">
            <span class="glyphicon glyphicon-user form-control-feedback" style="padding-right: 45px;font-size:14px"></span> 
            <strong style="color:#EC305F;font-size: 18px;">*</strong> 
            <span id="username_err" style="color:#EC305F;font-weight:700;font-size: 11px;"></span> <br>
          </div>
          <div class="form-group has-feedback">
            <input type="email" class="form-control" placeholder="Enter Register Email ID" name="txt_email_id" id="txt_email_id" style="padding: 8px !important; width:93% !important" value="">
            <span class="glyphicon glyphicon-envelope form-control-feedback" style="padding-right: 45px;font-size:14px"> </span> <strong style="color:#EC305F;font-size: 18px;">*</strong><br>
            <span id="email_err" style="color:#EC305F;font-weight:700;font-size: 11px;"></span><br>
          </div>
          <div class="row">
            <div class="col-xs-12 form-group has-feedback" style="text-align:center">
              <img src="captcha.php?_CAPTCHA&amp;t=0.68910500+1646570485" alt="CAPTCHA code">              <input type="text" class="form-control" placeholder="Enter Captcha Code" name="txtcaptcha" id="txtcaptcha" style="padding: 8px !important; width:50% !important;margin-left: 7px;"> 
              <span style="color:#EC305F;font-size: 9px;font-weight:700; display:block">Code is Case Sensitive</span>
              <span id="capt_err" style="color:#EC305F;font-size: 11px;font-weight:700; display:block"></span><br>

              
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12" style="text-align:center">
              <button type="submit" name="txtsubmit" onclick="return form_validation()" id="txtsubmit" class="btn">Send Mail</button> &nbsp;
              <button type="button" name="txtback" id="txtback" onclick="location.href = 'index.php'" class="btn"> Close </button>
            </div>
            <!-- /.col --> 
          </div>
        </form>
      </div>
      <!-- /.login-box-body --> 
    </div>
  </section>
</div>

<div class="control-sidebar-bg"></div>
<script src="mis_css/js/jquery-2.2.0.js"></script>

<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>
</body>
</html>