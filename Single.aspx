<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Single.aspx.cs" Inherits="Single" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<form id="form1" runat="server">
<html lang="en">
 <!--<![endif]-->
<head>

    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <title>zBrandon - Free Responsive Html5 Css3 Templates</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates Designed by Kimmy | ">
    <meta name="author" content="">

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/s_zerogrid.css">
    <link rel="stylesheet" href="css/s_style.css">
    <link rel="stylesheet" href="css/s_responsive.css">

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

    <link href='./images/favicon.ico' rel='icon' type='image/x-icon' />

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

        document.location= "Movie.aspx";

}
function $(id) {
    return document.getElementById(id);
}
function goCreateMovie() {

    document.location = "CreateMovie.aspx";
}
</script>
</head>

<body>


    <div class="wrap-body">
        <!--------------Header--------------->
        <header>
            <div class="wrap-header zerogrid">

                <nav>
                    <div class="wrap-header zerogrid">
                        <div class="menu">
                            <ul>
                                <li><a href="Home.aspx">Back to Homepage</a></li>

                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </header>

        <!--------------Content--------------->
        <section id="content">
            <div class="wrap-content zerogrid">
                <div class="row block">
                    <div id="main-content" class="col-2-3">
                        <div class="row">
                            <div class="col-full">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading" align="center"><h2 class="title" id ="myname" runat ="server">NAME</h2></div>
                                        <div align="center"><img src="images/img4.jpg" style="width:400px;height:300px" id="myphoto" runat="server"/></div>                                       
                                        <div class="content">
                                            <p id ="pemail" runat="server">information</p>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="heading" align="center"><h2 class="title2" style="color:forestgreen">最新创建的电影</a></h2></div>
                        </div>
                        <div class="row">
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2" id="H1" runat="server">Quis mi commodo et suscipi</h2></div>
                                        <a href="#" id="A1" runat="server"><img src="images/jtftest.jpg" style="height:380px" id="Img1" runat="server"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white" id="Div1" runat="server">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2" id="H2" runat="server">Quis mi commodo et suscipi</h2></div>
                                        <a href="#" id="A2" runat="server"><img src="images/jtftest.jpg" style="height:380px" id="Img2" runat="server"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white" id="Div2" runat="server">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2" id="H3" runat="server">Quis mi commodo et suscipi</h2></div>
                                        <a href="#" id="A3" runat="server"><img src="images/jtftest.jpg" style="height:380px" id="Img3" runat="server"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white" id="Div3" runat="server">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2" id="H4" runat="server">Quis mi commodo et suscipi</h2></div>
                                        <a href="#" id="A4" runat="server"><img src="images/jtftest.jpg" style="height:380px" id="Img4" runat="server"/></a>
                                        <div class="extra">
                                             <div align="center" style="color:white" id="Div4" runat="server">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row" align="center">
                              
                            <asp:Button ID="Button2" runat="server" Text="创建电影资料卡" style="width:300px;height:40px;background-color:forestgreen" OnClick="Button2_Click" ForeColor="White"/>
                        </div>
                    </div>
                    <div id="sidebar" class="col-1-3">
                        <div class="wrap-col">

                                <div class="box">
                                    <div class="heading" align="center"><h4 class="title" style="color:chocolate">猜你喜欢</h4></div>
                                    <div class="content">
                                        <div class="post">
                                            <div align="center">
                                                
                                                <a href="Movie.aspx?name=功夫" id="a5" runat="server" > <img class="thumb" src="images/8.jpg" style="width:200px;height:280px" id="img5" runat="server"/></a>
                                                <h5 onclick="pass(this.id)" style="cursor:pointer" id="H5" runat="server">Lord Of War</h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="Movie.aspx?name=功夫" id="a6" runat="server" > <img class="thumb" src="images/8.jpg" style="width:200px;height:280px" id="img6" runat="server"/></a>
                                                <h5 onclick="pass(this.id)" style="cursor:pointer" id="H6" runat="server">Lord Of War</h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="Movie.aspx?name=功夫" id="a7" runat="server" > <img class="thumb" src="images/8.jpg" style="width:200px;height:280px" id="img7" runat="server"/></a>
                                               <h5 onclick="pass(this.id)" style="cursor:pointer" id="H7" runat="server">Lord Of War</h5>
                                            <div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                               <a href="Movie.aspx?name=功夫" id="a8" runat="server" > <img class="thumb" src="images/8.jpg" style="width:200px;height:280px" id="img8" runat="server"/></a>
                                                <h5 onclick="pass(this.id)" style="cursor:pointer" id="H8" runat="server">Lord Of War</h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="Movie.aspx?name=功夫" id="a9" runat="server" > <img class="thumb" src="images/8.jpg" style="width:200px;height:280px" id="img9" runat="server"/></a>
                                               <h5 onclick="pass(this.id)" style="cursor:pointer" id="H9" runat="server">Lord Of War</h5>
                                            </div>
                                        </div>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="换一组" BackColor="White" Font-Size="Medium" />
                                            <br>
                                 </div>
                                </div>
                    </div>  
                </div>
        </section>
        <!--------------Footer--------------->
        </div>
    </body>
</html>
      </form>



