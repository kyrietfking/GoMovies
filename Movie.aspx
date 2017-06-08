<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Movie" %>

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
<body >


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

							 <li><a href="login.aspx" ID="alink" runat="server"><asp:Label ID="Label2" runat="server" Text="注册/登录" ForeColor="White"></asp:Label></a></li>
						</ul>
                        
                         <asp:Button ID="Button1" runat="server" Text="注销" Visible="False" BackColor="White" OnClick="Button1_Click" />
                         
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
		<div id="main-content" class="col-2-3">
			<div class="wrap-content">
				<article>
					<div class="art-header">
						<div class="col-1-3">
							<div class="wrap-col">
								&nbsp;<asp:Image ID="Image1" runat="server" Height="336px" Width="242px" ImageUrl="~/images/jtftest.jpg" />
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
                                <br>
								<ul>
									<li><p>Title: <asp:Label ID="title" runat="server" Text="Label" ForeColor="White"></asp:Label></p></li>
									<li><p>Director:<asp:Label ID="director" runat="server" Text="Label" ForeColor="White"></asp:Label></p></li>
									<li><p>Nation: <asp:Label ID="nation" runat="server" Text="Label" ForeColor="White"></asp:Label></p></li>
                                    <li><p>Language:<asp:Label ID="language" runat="server" Text="Label" ForeColor="White"></asp:Label> </p></li>
									<li><p>Length: <asp:Label ID="length" runat="server" Text="Label" ForeColor="White"></asp:Label></p></li>
									<li><p>Link:<a href ="https://www.douban.com/"><asp:Label ID="link" runat="server" Text="https://www.douban.com/" ForeColor="White" Width="180px"></asp:Label></a></p></li>					
								</ul>
							</div>
						</div>
                        <div class="col-1-3">
                            <div class="wrap-col">
                                <div class="row">
                                <br>
				                <div class="widget wid-tag">
					                <div class="wid-header" align="center">
						                <h5>常用标签</h5>
					                </div>
					            <div class="wid-content">
						            <ul>
						                <li><asp:Label ID="t1" runat="server" Text="喜剧" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="None" CssClass="col-2-4" Font-Size="Large" Height="35px" Width="50px" Visible="False"></asp:Label></li>
                                         <li><asp:Label ID="Label1" runat="server" Text="' '" CssClass="col-2-4" ForeColor="Black"  ></asp:Label></li>
						                <li><asp:Label ID="t2" runat="server" Text="动作" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="None" CssClass="col-1-2" Font-Size="Large" Height="35px" Width="50px" Visible="False"></asp:Label></li>
                                         <li><asp:Label ID="Label4" runat="server" Text="' '"  CssClass="col-2-4" ForeColor="Black" ></asp:Label></li>
						                <li><asp:Label ID="t3" runat="server" Text="爱情" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="None" CssClass="col-1-2" Font-Size="Large" Height="35px" Width="50px" Visible="False"></asp:Label></li>
						            </ul>
                                </div>
                                </div>
                                <div>
				                <div class="widget wid-tag">
					                <div class="wid-header" align="center">
						                <h5>影淘评分</h5>
					                </div>
					            <div class="wid-content" align="center">
                                    <asp:Label ID="Label3" runat="server" Text="Label" style="font-size:25px"></asp:Label> &nbsp<img src="images/heart.png" style="width:25px;height:auto">
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
                <br>
				<div class="widget wid-tag">
					<div class="wid-header" align="center">
						<h5>你的评价</h5>
					</div>
					<div class="wid-content">
                           <div class="row">
                            <div class="col-1-2" align="center">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="喜剧" /><br>
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="动作"/><br>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="爱情"/> <br>
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="科幻"/> <br>
                                <asp:CheckBox ID="CheckBox5" runat="server" Text="恐怖"/><br>
                                <asp:CheckBox ID="CheckBox6" runat="server" Text="情景"/><br>
                                <asp:CheckBox ID="CheckBox7" runat="server" Text="微型"/><br>
                            </div>
                            <div class="col-1-2" style="text-align: left" >
                                 <br>
                                <asp:RadioButton ID="p1" runat="server" Text=" " GroupName="score"/><img src="images/heart.png" style="width:25px;height:auto"><br>
                                <asp:RadioButton ID="p2" runat="server" Text=" " GroupName="score"/><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                <asp:RadioButton ID="p3" runat="server" Text=" " GroupName="score"/><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                <asp:RadioButton ID="p4" runat="server" Text=" " GroupName="score"/><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                                <asp:RadioButton ID="p5" runat="server" Text=" " GroupName="score"/><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><img src="images/heart.png" style="width:25px;height:auto"><br>
                            </div>
                           </div>
                           <div>
                            <div class="col-full" align="center">
                                <asp:Button ID="submit2" runat="server" Text="提交评价" style="background-color:indianred;color:white;width:80px;height:30px" OnClick="submit2_Click" />
                                
                            </div>
                           </div>
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
						<p id ="pppp" runat ="server">&nbsp;&nbsp;&nbsp;&nbsp;Introdution:Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy 
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
</form>
