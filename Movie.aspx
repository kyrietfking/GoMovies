<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Movie" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>zMovie</title>
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
    *读取指定的Cookie值
    *@param {string} cookieName Cookie名称
    */
    function SetCookie(cookieName, cookieValue, nDays) {
        /*当前日期*/
        var today = new Date();
        /*Cookie过期时间*/
        var expire = new Date();
        /*如果未设置nDays参数或者nDays为0，取默认值1*/
        if (nDays == null || nDays == 0) nDays = 1;
        /*计算Cookie过期时间*/
        expire.setTime(today.getTime() + 3600000 * 24 * nDays);
        /*设置Cookie值*/
        document.cookie = cookieName + "=" + escape(cookieValue)
        + ";expires=" + expire.toGMTString();
    }
    function pass(id) {

        var title = $(id).innerHTML;

        /*是否选中7天内无需登录*/
        SetCookie("title", title, 1);
        /*跳转到ex8.html页面*/
        document.location = "Category.aspx";

    }

    function passToCategory(id) {

        var category = $(id).innerHTML;

        /*是否选中7天内无需登录*/
        SetCookie("category", category, 1);
        /*跳转到ex8.html页面*/
        document.location = "Category.aspx";

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

    function $(id) {
        return document.getElementById(id);
    }

    function init() {
        var title = ReadCookie("title");
        if (title && title.length > 0) {
            $("title").innerHTML =title;
        } else {
            $("title").innerHTML = "aaaa";
        }


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
				<article>
					<div class="art-header">
						<div class="col-1-3">
							<div class="wrap-col">
								<img src="images/boy7.png" />
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<ul>
									<li><p>Title: <span id="title" style="color:white">Action</span></p></li>
									<li><p>Director:<span id="director" style="color:white">Action</span></p></li>
									<li><p>Nation: <span id="nation" style="color:white">Action</span></p></li>
                                    <li><p>Language: <span id="language" style="color:white">Action</span></p></li>
									<li><p>Length:<span id="length" style="color:white">Action</span></p></li>
									<li><p>Link: <span id="link" style="color:white">Action</span></p></li>					
								</ul>
							</div>
						</div>
                        <div class="col-1-3">
                            <div class="wrap-col">
                                <div class="row">
				                <div class="widget wid-tag">
					                <div class="wid-header" align="center">
						                <h5>常用标签</h5>
					                </div>
					            <div class="wid-content">
						            <ul>
						                <li><a id="t1">animals</a></li>
						                <li><a id="t2">ssdad</a></li>
						                <li><a id="t3">ss</a></li>
						            </ul>
                                </div>
                                </div>
                                <div>
				                <div class="widget wid-tag">
					                <div class="wid-header" align="center">
						                <h5>影淘评分</h5>
					                </div>
					            <div class="wid-content" align="center">
                                    <span style="font-size:25px" id="points">4.5</span>&nbsp<img src="images/heart.png" style="width:25px;height:auto">
                                </div>
                                </div>
					            </div>

				            </div>
                        </div>
                    </div>
						<div class="clear"></div>
					</div>
				</article>

			</div>
		</div>
		<div id="sidebar" class="col-1-3">
			<div class="wrap-sidebar">
				<!---- Start Widget ---->

				<!---- Start Widget ---->
				<div class="widget wid-tag">
					<div class="wid-header" align="center">
						<h5>你的评价</h5>
					</div>
					<div class="wid-content">
                         <form>
                           <div class="row">
                            <div class="col-1-2" align="center">
						         <input type="checkbox" id="commedy">喜剧<br>
						         <input type="checkbox" id="action">动作<br>
						         <input type="checkbox" id="love">爱情<br>
						         <input type="checkbox" id="fiction">科幻<br>
						         <input type="checkbox" id="terror">恐怖<br>
						         <input type="checkbox" id="plot">情景<br>
						         <input type="checkbox" id="micro">微型<br>
                            </div>
                            <div class="col-1-2" style="text-align: left" >
                                 <br>
                                 <input type="radio" name="point" id="p1"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                 <input type="radio" name="point" id="p2"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                 <input type="radio" name="point" id="p3"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                 <input type="radio" name="point" id="p4"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                 <input type="radio" name="point" id="p5"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                            </div>
                           </div>
                           <div>
                            <div class="col-full" align="center">
                                <input type="submit" value="提交评价" id="submit" style="background-color:indianred;color:white;width:80px;height:30px">
                            </div>
                           </div>
                        </form>
					</div>
				</div>
				<!---- Start Widget ---->
				<!---- Start Widget ---->
			</div>
		</div>
	</div>
    	<div class="wrap-container zerogrid">
		<div id="intro-content" class="col-full">
			<div class="wrap-content">
                <article>
					<div class="art-content">
						<p >&nbsp;&nbsp;&nbsp;&nbsp;Introdution:Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy 
						eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. 
						At vero eos et accusam et justo duo dolores et ea rebum. Consetetur sadipscing elitr, 
						sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, 
						sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
						<div class="clear"></div>
					</div>
                </article>
                </div>
            </div>
        </div>
</section>

<!--////////////////////////////////////Footer-->



</div>

</body></html>