<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
function pass(id) {

    var title = $(id).innerHTML;

    /*是否选中7天内无需登录*/
        SetCookie("title",title,1);
    /*跳转到ex8.html页面*/
    document.location = "Movie.aspx";

}

function passToCategory(id) {

    var category = $(id).innerHTML;

    /*是否选中7天内无需登录*/
    SetCookie("category", category, 1);
    /*跳转到ex8.html页面*/
    document.location = "Category.aspx";

}

function $(id) {
    return document.getElementById(id);
}

</script>   
</head>
<body>


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
						 <li class="active"><a href="Home.aspx">Home</a></li>
						 <li id="喜剧片"><a onclick="passToCategory(this.id)" id="1" style="cursor:pointer"> 喜剧片</a></li>
						 <li id="动作片"><a onclick="passToCategory(this.id)" id="2" style="cursor:pointer"> 动作片</a></li>
						 <li id="爱情片"><a onclick="passToCategory(this.id)" id="3" style="cursor:pointer"> 爱情片</a></li>
						 <li id="科幻片"><a onclick="passToCategory(this.id)" id="4" style="cursor:pointer"> 科幻片</a></li>
						 <li id="恐怖片"><a onclick="passToCategory(this.id)" id="5" style="cursor:pointer"> 恐怖片</a></li>
						 <li id="情景剧"><a onclick="passToCategory(this.id)" id="6" style="cursor:pointer"> 情景剧</a></li>
						 <li id="微电影"><a onclick="passToCategory(this.id)" id="7" style="cursor:pointer"> 微电影</a></li>
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
		<div id="main-content" class="col-2-3">
			<div class="wrap-content">
				<div class="movie">
					<div class="row type">
						<div class="title">
							<center><h2>高分电影</h2></center>
						</div>
					</div>
					<div class="row">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/1.jpg"  />
  
									  
									</div>
									<div class="clear"></div>
						                <h3 onclick="pass(this.id)" style="cursor:pointer" id="1st">Lethal Weapon 4</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/2.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="2rd">Film's Name</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/4.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="3rd">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									  <img class="thumb" src="images/5.jpg"  />  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="4th">The Sorcerer's Apprentice</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/3.jpg"  />    
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="5th">National Treasure</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/6.jpg"  />   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="6th">Seeking Justice</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/7.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="7th">Season Of The Witch</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/8.jpg"  />   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="8th">Three Mustketeers</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="serie">
					<div class="row type">
						<div class="title">
							<center><h2>热门电影</h2></center>
						</div>
					</div>
					<div class="row">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/1.jpg"  />
  
									  
									</div>
									<div class="clear"></div>
						                <h3 onclick="pass(this.id)" style="cursor:pointer" id="1st">Lethal Weapon 4</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/2.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="2rd">Film's Name</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <img class="thumb" src="images/4.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="3rd">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									  <img class="thumb" src="images/5.jpg"  />  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="4th">The Sorcerer's Apprentice</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/3.jpg"  />    
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="5th">National Treasure</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/6.jpg"  />   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="6th">Seeking Justice</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/7.jpg"  /> 
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="7th">Season Of The Witch</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <img class="thumb" src="images/8.jpg"  />   
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="8th">Three Mustketeers</h3>
									<span></span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div id="sidebar" class="col-1-3">
			<div class="wrap-sidebar">
				<!---- Start Widget ---->

				<!---- Start Widget ---->
				
				<!---- Start Widget ---->
				<div class="widget wid-post">
					<div class="wid-header">
						<h5>热门推荐</h5>
					</div>
					<div class="wid-content">
						<div class="post">
							<a href="#"><img src="images/1.jpg"/></a>
							<div class="wrapper">
							  <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/2.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/3.jpg"/></a>
							<div class="wrapper">
							 <a href="#"><h6>A Blue Morning</h6></a>
							  <p>March 1, 2015</p>
							  <a href="#"><img src="images/star.png" /></a>
							</div>
						</div>
					</div>
				</div>
				<!---- Start Widget ---->

			</div>
		</div>
  </div>


				<!---- Start Widget ---->

				<!---- Start Widget ---->
				
				<!---- Start Widget ---->


				<!---- Start Widget ---->



</section>
</div>
</body>
