<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019/2/15
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Milen" />
    <link href="/favicon.ico" rel="shortcut icon">
    <title>网站标题</title>
    <link href="/plug-in/repair/css/style.css" rel="stylesheet" type="text/css" />
    <link href="/plug-in/repair/css/media.css" rel="stylesheet" type="text/css">
    <link href="/plug-in/repair/css/reset.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/plug-in/repair/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/plug-in/repair/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/plug-in/repair/css/swiper.min.css">
    <script type="text/javascript" src="/plug-in/repair/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/plug-in/repair/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="/plug-in/repair/js/swiper.min.js"></script>
    <script type="text/javascript" src="/plug-in/repair/js/web.js"></script>
    <script type="text/javascript" src="/plug-in/repair/js/loadimage.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".inpro .right ul li .pic img").LoadImage({width:205,height:205});
            $(".about-bottom-left-bottom .bd ul li .pic img").LoadImage({width:288,height:197});
        });
    </script>
    <script src="/plug-in/repair/js/wow.min.js"></script>
    <script type="text/javascript">
        $(function(){
            new WOW().init();
            $(".imgbox").hover(function(){
                $(this).find("img").eq(0).addClass("scale-1x")
            },function(){
                $(this).find("img").eq(0).removeClass("scale-1x")
            })})
    </script>
</head>

<body>
<div class="smallest-screen"></div>
<!--<div class="lmbutt"><i class="fa fa-reorder"></i></div>-->

<div class="webmain">

    <div class="header">
        <div class="content">
            <div class="logo"></div>
            <div class="muen">
                <ul>
                    <a href="/pcController.do?index"><li class="on">主页</li></a>
                    <a href="/webpage/com/about.jsp"><li>关于我们</li></a>
                    <a href="/PhoneController.do?PhoneList"><li>全球</li></a>
                    <a href="/webpage/com/pro.jsp"><li>产品</li></a>
                    <a href="/webpage/com/showpro.jsp"><li>选择我们</li></a>
                    <a href="/webpage/com/contact.jsp"><li>联络我们</li></a>
                </ul>
            </div>
            <%--<div class="lang"><a href="#" class="cn">中文</a><a href="#" class="en">EN</a><div class="clean"></div></div>--%>
            <div class="clean"></div>
        </div>
    </div>

    <div class="bannerbg">
        <div class="blank50"></div>
        <div class="banner">
            <div class="bd">
                <%--<ul>--%>
                    <%--<li style="background:url(/plug-in/repair/images/banner1.png) #fff center 0 no-repeat;"><a target="_blank" href=""></a></li>--%>
                    <%--<li style="background:url(/plug-in/repair/images/banner2.png) #fff center 0 no-repeat;"><a target="_blank" href=""></a></li>--%>
                <%--</ul>--%>
            </div>
            <%--<a class="prev"></a><a class="next"></a>--%>
        </div>
        <script type="text/javascript">
            jQuery(".banner").slide({titCell:".hd ul", mainCell:".bd ul",prevCell:".prev",nextCell:".next",effect:"fold",autoPlay:true, autoPage:true,trigger:"click" });
        </script>
    </div>

    <div class="inpronr">
        <div class="content">
            <ul>
                <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/one.jpg"></div><div class="fgc"><div class="tit">iPhone内存升级</div><div class="jj">告别内存不足  容量轻松升级 ￥159元起</div><div class="more">+</div></div></li></a>
                <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/tow.jpg"></div><div class="fgc"><div class="tit">iPhone内存更换</div><div class="jj">提升续航 免费上门 保修360天 ￥129元起</div><div class="more">+</div></div></li></a>
                <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/three.jpg"></div><div class="fgc"><div class="tit">iPhone屏幕更换</div><div class="jj">屏幕快速换新 极速响应 免费上门 ￥149元起</div><div class="more">+</div></div></li></a>
                <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/four.jpg"></div><div class="fgc"><div class="tit">MacBook系列维修</div><div class="jj">数百种Macbook问题 ￥98元起</div><div class="more">+</div></div></li></a>
                <div class="clean"></div>
            </ul>
        </div>
    </div>

    <div class="footer">
        <div class="content">
            <div class="fnav">
                <div class="tit">关于我们</div>
                <a href="#">公司简介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">全球性</div>
                <a href="#">公司简介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">产品</div>
                <a href="#">公司简介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">选择我们</div>
                <a href="#">公司简介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">连续我们</div>
                <a href="#">公司简介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>

            <div class="fr">
                <div class="search">
                    <form>
                        <input type="text" class="text" placeholder="請輸入關鍵詞">
                        <input type="submit" class="sub" value=" " >
                    </form>
                </div>
                <div class="blank20"></div>
                <div class="ewm">
                    <div class="li"><img src="/plug-in/repair/images/index_03.jpg"></div>
                    <div class="li"><img src="/plug-in/repair/images/index_03.jpg"></div>
                </div>
            </div>
            <div class="clean"></div>
        </div>
    </div>
    <div class="banq">
        <div class="content">
            Copyright © 2005 - 2015 東益科技有限公司 All Rights Reserved.
        </div>
    </div>

    <div class="page-down" title="back to the top"><i class="fa fa-angle-up"></i></div>
    <script>
        //返回顶部
        $(window).scroll(function () {
            if ($(window).scrollTop()>=300) {
                $(".page-down").fadeIn();
            }else{
                $(".page-down").fadeOut();
            }

            if ($(window).scrollTop()>=300) {
                $(".ewmxf").fadeIn();
            }else{
                $(".ewmxf").fadeOut();
            }

        });


        (function Page(){
            var oDown = $(".page-down"),
                oUp = $(".page-up"),
                oBody = $("html,body");


            oDown.bind("click",function(){
                oBody.animate({ scrollTop : 0 },500);
            });

            oUp.bind("click",function(){
                oBody.animate({ scrollTop : 0 },500);
            });

        })();
    </script>

</div><!-- web main end -->

</body>
</html>
