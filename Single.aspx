<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Single.aspx.cs" Inherits="Single" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
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
                                <li><a href="index.html">Personal Homepage</a></li>

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
                                        <div class="heading" align="center"><h2 class="title"><a href="#">NAME</a></h2></div>
                                        <div align="center"><img src="images/img4.jpg" style="width:400px;height:300px"/></div>                                       
                                        <div class="content">
                                            <p>information</p>
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
                                        <div class="heading"><h2 class="title2"><a href="#">Quis mi commodo et suscipit</a></h2></div>
                                        <a href="#"><img src="images/1.jpg" style="height:380px"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2"><a href="#">Sed fringilla facilisis convallis</a></h2></div>
                                        <a href="#"><img src="images/5.jpg" style="height:380px"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2"><a href="#">Consectetur adipiscing elit</a></h2></div>
                                        <a href="#"><img src="images/7.jpg"style="height:380px" /></a>
                                        <div class="extra">
                                            <div align="center" style="color:white">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-2">
                                <div class="wrap-col">
                                    <article>
                                        <div class="heading"><h2 class="title2"><a href="#">Proin vitae turpis libero</a></h2></div>
                                        <a href="#"><img src="images/8.jpg" style="height:380px"/></a>
                                        <div class="extra">
                                            <div align="center" style="color:white">评分：</div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row" align="center">
                              <button style="width:300px;height:40px;background-color:forestgreen" onclick="goCreateMovie()"><span style="font-size:20px;color:white">创建新的电影资料卡</span></button>
                        </div>
                    </div>
                    <div id="sidebar" class="col-1-3">
                        <div class="wrap-col">

                                <div class="box">
                                    <div class="heading" align="center"><h4 class="title" style="color:chocolate">猜你喜欢</h4></div>
                                    <div class="content">
                                        <div class="post">
                                            <div align="center">
                                                
                                                <img src="images/6.jpg" style="width:200px;height:280px" />
                                                <h5 class="title"><a onclick="pass(this.id)" id="t1" style="cursor:pointer">Lorem ipsum dolor sit amet</a></h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="#"><img src="images/4.jpg" style="width:200px;height:280px"/></a>
                                                <h5 class="title"><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="#"><img src="images/2.jpg" style="width:200px;height:280px"/></a>
                                                <h5 class="title"><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                            <div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="#"><img src="images/10.jpg" style="width:200px;height:280px"/></a>
                                                <h5 class="title"><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                            </div>
                                        </div>
                                        <div class="post last">
                                            <div align="center">
                                                <a href="#"><img src="images/9.jpg" style="width:200px;height:280px"/></a>
                                                <h5 class="title"><a href="#">Lorem ipsum dolor sit amet</a></h5>
                                            </div>
                                        </div>
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


