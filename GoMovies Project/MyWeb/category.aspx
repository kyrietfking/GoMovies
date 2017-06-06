<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>影淘</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
<script type="text/javascript">
/***
* @param {string} cookieName Cookie名称
* @param {string} cookieValue Cookie值
* @param {number} nDays Cookie过期天数
*/

function SetCookie(cookieName,cookieValue,nDays) {
    /*当前日期*/
    var today = new Date();
    /*Cookie过期时间*/
    var expire = new Date();
    /*如果未设置nDays参数或者nDays为0，取默认值1*/
    if(nDays == null || nDays == 0) nDays = 1;
    /*计算Cookie过期时间*/
    expire.setTime(today.getTime() + 3600000 * 24 * nDays);
    /*设置Cookie值*/
    document.cookie = cookieName + "=" + escape(cookieValue)
        + ";expires=" + expire.toGMTString();
}
function ReadCookie(cookieName) {
    var theCookie = "" + document.cookie;
    var ind = theCookie.indexOf(cookieName);
    if (ind == -1 || cookieName == "") return "";
    var ind1 = theCookie.indexOf(';', ind);
    if (ind1 == -1) ind1 = theCookie.length;
    /*读取Cookie值*/
    return unescape(theCookie.substring(ind + cookieName.length + 1, ind1));
}
function pass(id) {

    var title = $(id).innerHTML;

    /*是否选中7天内无需登录*/
        SetCookie("title",title,1);
    /*跳转到ex8.html页面*/

        document.location= "Movie.aspx";

}
function passToCategory(id) {

    var category = id;// $(id).innerHTML;

    /*是否选中7天内无需登录*/
    SetCookie("category", category, 1);
    /*跳转到ex8.html页面*/
    document.location = "Category.aspx";

}
function $(id) {
    return document.getElementById(id);
}

function init() {

    var category = ReadCookie("category");
    if (category && category.length > 0) {
        $("ha").innerHTML =$(category).innerHTML;
    } else {
        $(category).innerHTML = "aaaa";
    }
    <%=ShowCategory()%>;
}
</script>
</head>

<body onload="init()">



<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header>
	<div class="top-bar">
		<div class="wrap-top zerogrid">
			<div class="row">
				<div class="col-1-2">
					<div class="wrap-col">
						<ul>

						</ul>
					</div>
				</div>
				<div class="col-1-2">
					<div class="wrap-col f-right">
						<ul>

							 <li><p><a href="login.aspx"><font color="white">注册/登录</font></a></p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wrap-header zerogrid">
		<div class="row">
			<div class="col-1-2">
				<div class="wrap-col">
					<div class="logo"><a href="#"><img src="images/logo_2.png"/></a></div>	
				</div>
			</div>
			<div class="col-1-2">
				<div class="wrap-col f-right">

					
				</div>
			</div>
		</div>
		<div class="row">
			<div id="menu">
				<nav>
					<div class="wrap-nav">
					   <ul>
						 <li ><a href="Home.aspx">Home</a></li>
						 <li id="喜剧片"><a onclick="passToCategory(this.id)" id="comedy" style="cursor:pointer"> 喜剧片</a></li>
						 <li id="动作片"><a onclick="passToCategory(this.id)" id="action" style="cursor:pointer"> 动作片</a></li>
						 <li id="爱情片"><a onclick="passToCategory(this.id)" id="romance" style="cursor:pointer"> 爱情片</a></li>
						 <li id="科幻片"><a onclick="passToCategory(this.id)" id="science" style="cursor:pointer"> 科幻片</a></li>
						 <li id="恐怖片"><a onclick="passToCategory(this.id)" id="horror" style="cursor:pointer"> 恐怖片</a></li>
						 <li id="情景剧"><a onclick="passToCategory(this.id)" id="feature" style="cursor:pointer"> 情景剧</a></li>
						 <li id="微电影"><a onclick="passToCategory(this.id)" id="micro" style="cursor:pointer"> 微电影</a></li>
					   </ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>


<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container zerogrid">
		<div id="main-content" class="col-full">
			<div class="wrap-content">
				<div class="movie">
					<div class="row type">
						<div class="title">
							<center><h2 id="ha"></h2></center>
						</div>
					</div>
					<div class="row">
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/1.jpg" runat="server" id="image1"/>
  
									  
									</div>
									<div class="clear"></div>
						                <h3 onclick="pass(this.id)" style="cursor:pointer" id="title1st" runat="server">Lethal Weapon 4</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/1.jpg" runat="server" id="image2" /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title2nd" runat="server">Film's Name</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/1.jpg"  runat="server" id="image3" /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title3rd" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									  <img class="thumb" src="images/5.jpg" runat="server" id="image4"  />  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title4th" runat="server">The Sorcerer's Apprentice</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									  <img class="thumb" src="images/5.jpg"  runat="server" id="image5"/>  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title5th" runat="server">The Sorcerer's Apprentice</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/3.jpg" runat="server" id="image6" />    
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title6th" runat="server">National Treasure</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/2png"  runat="server" id="image7"/>   
                                        
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title7th" runat="server">Seeking Justice</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/7.jpg" runat="server" id="image8" /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title8th" runat="server">Season Of The Witch</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/8.jpg" id="image9" runat="server" />   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title9th" runat="server">Three Mustketeers</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/8.jpg"  runat="server" id="image10"/>   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="title10th" runat="server">Three Mustketeers</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
</section>
</div>
</body>
