<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
 <form id="form1" runat="server">
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

   // var title = $(id).innerHTML;

    /*是否选中7天内无需登录*/
        SetCookie("title",title,1);
    /*跳转到ex8.html页面*/

       // document.location= "Movie.aspx";

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

function init() {

    var category = ReadCookie("category");
    if (category && category.length > 0) {
        $("ha").innerHTML =category;
    } else {
        $(category).innerHTML = "aaaa";
    }

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

							 <li><a href="login.aspx" ID="alink" runat="server"><asp:Label ID="Label1" runat="server" Text="注册/登录" ForeColor="White"></asp:Label></a></li>
						</ul>                       
                       <a href ="Single.aspx"><asp:Label ID="personal" runat="server" Text="个人主页" Font-Size="Medium" ForeColor="White" Visible="False"></asp:Label></a>&nbsp&nbsp&nbsp
                        <asp:Button ID="Button1" runat="server" Text="注销" Visible="False"  BackColor="Black" OnClick="Button1_Click" ForeColor="White" />
                          </form>
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
						 <li id="喜剧片"><a href="Category.aspx?type=1" id="A11" style="cursor:pointer"> 喜剧片</a></li>
						 <li id="动作片"><a href="Category.aspx?type=2" id="A12" style="cursor:pointer"> 动作片</a></li>
						 <li id="爱情片"><a href="Category.aspx?type=3" id="A13" style="cursor:pointer">  爱情片</a></li>
						 <li id="科幻片"><a href="Category.aspx?type=4" id="A14" style="cursor:pointer">  科幻片</a></li>
						 <li id="恐怖片"><a href="Category.aspx?type=5" id="A15" style="cursor:pointer">  恐怖片</a></li>
						 <li id="情景剧"><a href="Category.aspx?type=6" id="A16" style="cursor:pointer">  情景剧</a></li>
						 <li id="微电影"><a href="Category.aspx?type=7" id="A17" style="cursor:pointer">  微电影</a></li>
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
                                        <a href="Movie.aspx?name=功夫" id="a1" runat="server" > <img class="thumb" src="images/1.jpg"  id="img1" runat="server"/></a>
													
									</div>
									<div class="clear"></div>
                                    <h3 onclick="pass(this.id)" style="cursor:pointer" id="H1" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <a href="Movie.aspx?name=功夫" id="a2" runat="server" > <img class="thumb" src="images/1.jpg"  id="img2" runat="server"/></a>
									</div>
                                   

								<h3 onclick="pass(this.id)" style="cursor:pointer" id="H2" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <a href="Movie.aspx?name=功夫" id="a3" runat="server" > <img class="thumb" src="images/1.jpg"  id="img3" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H3" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									   <a href="Movie.aspx?name=功夫" id="a4" runat="server" > <img class="thumb" src="images/1.jpg"  id="img4" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H4" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect"> 
									   <a href="Movie.aspx?name=功夫" id="a5" runat="server" > <img class="thumb" src="images/1.jpg"  id="img5" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H5" runat="server">Lord Of War</h3>
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
									   <a href="Movie.aspx?name=功夫" id="a6" runat="server" > <img class="thumb" src="images/1.jpg"  id="img6" runat="server"/></a>  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H6" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									 <a href="Movie.aspx?name=功夫" id="a7" runat="server" > <img class="thumb" src="images/1.jpg"  id="img7" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H7" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <a href="Movie.aspx?name=功夫" id="a8" runat="server" > <img class="thumb" src="images/1.jpg"  id="img8" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H8" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <a href="Movie.aspx?name=功夫" id="a9" runat="server" > <img class="thumb" src="images/1.jpg"  id="img9" runat="server"/></a>  
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H9" runat="server">Lord Of War</h3>
									<span></span>
								</div>
							</div>
						</div>
						<div class="col-1-5">
							<div class="wrap-col">
								<div class="post">
									<div class="view effect">  
									  <a href="Movie.aspx?name=功夫" id="a10" runat="server" > <img class="thumb" src="images/1.jpg"  id="img10" runat="server"/></a>
									</div>
									<h3 onclick="pass(this.id)" style="cursor:pointer" id="H10" runat="server">Lord Of War</h3>
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
    </form>