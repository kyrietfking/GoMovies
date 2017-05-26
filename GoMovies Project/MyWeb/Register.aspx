<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<%--    <meta HTTP-EQUIV="Pragma" content="no-cache" >
    <meta HTTP-EQUIV="Cache-Control" content="no-cache" >
    <meta HTTP-EQUIV="Expires" content="0" >--%>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/l_bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/l_style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="container">
	<div class="container_wrap">
		<div class="header_top" style="background-color:#d2d2d2">
		    <div class="col-sm-3 logo"><a href="Home.aspx"><img src="images/logo_2.png" alt=""/></a></div>
		    <div class="col-sm-6 nav">
			 
			</div>
			<div class="col-sm-3 header_right">
			   
			</div>
			<div class="clearfix"> </div>
	      </div>
	      <div class="content">
      	     <div class="register">
		  	  <form> 
				 <div class="register-top-grid">
					<h3>个人信息</h3>
					 <div>
						<span>名<label>*</label></span>
						<input type="text" id="firstname" runat="server"> 
					 </div>
					 <div>
						<span>姓氏<label>*</label></span>
						<input type="text" id="lastname" runat="server"> 
					 </div>
					 <div>
						 <span>邮箱地址<label>*</label></span>
						 <input type="text" id="emailaddress" runat="server"> 
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>登录信息</h3>
							 <div>
								<span>密码<label>*</label></span>
								<input type="password"  runat="server" id="password" required="required"/>
							 </div>
							 <div>
								<span>确认密码<label>*</label></span>
								<input type="password" runat="server" id="confirmpassword" required="required" />
							 </div>
							 <div class="clearfix"> </div>
					 </div>
				</form>
				<div class="clearfix"> </div>
				<div class="register-but">
				   <form id="form1" runat="server">
					   <input type="submit" value="提交" runat="server" onserverclick="submitregister">
					   <div class="clearfix"> </div>
				   </form>
				</div>
		   </div>
           </div>
    </div>
</div>
	
</body>
</html>
