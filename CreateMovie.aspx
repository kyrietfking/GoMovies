﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateMovie.aspx.cs" Inherits="Register" %>

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
    <script type="text/javascript">
        function CheckPassword() {
            //if (document.getElementById(password).value != document.getElementById(confirmpassword).value)
            //    document.getElementById(errormsg).value = "wrong";
            var p1 = document.form0.password.value;
            var p2 = document.form0.confirmpassword.value;
            if (p1 == "") {
                alert("请输入密码！");
                document.form0.password.focus();//焦点放到密码框
                return false;//退出检测函数
            }
            if (p1 != p2) {//判断两次输入的值是否一致，不一致则显示错误信息
                document.getElementById("errormsg").innerHTML = "Check Password";//在div显示错误信息

                return false;
            } else {
                //密码一致，可以继续下一步操作 
            }
        }



</script>
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
		  	  <form id="form0" runat="server"> 
				 <div class="register-top-grid">
					<h3>电影信息</h3>
					 <div>
						<span>影片名称<label>*</label></span>
						<asp:TextBox runat="server" ID="Title" />     
					 </div>
					 <div>
						<span>导演<label>*</label></span>
						<input type="text" id="director" runat="server"> 
					 </div>
					 <div>
						 <span>制片国家/地区<label>*</label></span>
						 <input type="text" id="nation" runat="server"> 
					 </div>
					 <div>
						 <span>语言<label>*</label></span>
						 <input type="text" id="language" runat="server"> 
					 </div>
					 <div>
						 <span>片长<label>*</label></span>
						 <input type="text" id="length" runat="server"> 
					 </div>
					 <div>
						 <span>类型<label>*</label></span>
						 <input type="text" id="link" runat="server"> 
					 </div>
                     <div>
						 <span>海报<label>*</label></span>
		
                         <asp:FileUpload ID="fil1" runat="server" />
					 </div>
 
                     <div>
						 <span>简介<label>*</label></span>
						 <textarea name="message" rows="10" cols="60" runat="server" id="description">
                               
                         </textarea>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 
					   </a>
					 </div>

			
				<div class="clearfix"> </div>
				<div class="register-but">
                    <asp:Button ID="submit" runat="server" Text="提交" OnClick="submit_Click" />
					   <div class="clearfix"> 
                           <div id="errormsg" style="position: absolute; top: 645px; left: 543px; width: 159px; height: 20px;" runat="server">
                               </div>
                           <asp:Button ID="Button1" runat="server" Text="返回首页" OnClick="Button1_Click" />
                       </div>
				 
				</div>
                    </form>
		   </div>
           </div>
    </div>
</div>
	
</body>
</html>
