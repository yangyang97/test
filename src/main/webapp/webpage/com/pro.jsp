<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019/2/15
  Time: 16:31
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
                    <a href="/webpage/com/index.jsp"><li class="on">主頁</li></a>
                    <a href="/webpage/com/about.jsp"><li>關於我們</li></a>
                    <a href="/webpage/com/pro.jsp"><li>全球</li></a>
                    <a href="/webpage/com/pro.jsp"><li>產品</li></a>
                    <a href="/webpage/com/showpro.jsp"><li>選擇我們</li></a>
                    <a href="/webpage/com/contact.jsp"><li>聯絡我們</li></a>
                </ul>
            </div>
            <div class="lang"><a href="#" class="cn">中文</a><a href="#" class="en">EN</a><div class="clean"></div></div>
            <div class="clean"></div>
        </div>
    </div>

    <div class="nybg">

        <div class="nybanner" style="background:url(/plug-in/repair/images/nybanner.jpg) no-repeat center;"></div>
        <div class="blank25"></div>
        <div class="content">
            <div class="inleft">
                <div class="title">關於我們</div>
                <a href="#"><div class="li on">Cellplus 團隊</div></a>
                <a href="#"><div class="li">Mobile power</div></a>
                <a href="#"><div class="li">Mobile power</div></a>
                <a href="#"><div class="li">Mobile power</div></a>
                <div class="blank25"></div>
                <div class="title">聯絡我們</div>
                <div class="li">電話 : +852-37053270</div>
                <div class="li">傳真 : +852-37053271</div>
                <div class="li">郵箱：sales@cellplushk.com</div>
                <div class="blank25"></div>
            </div>

            <div class="inright">
                <div class="nylmtit"><a class="lmnav on">全新流動電話</a><div class="lj">您的位置：<a href="#">主页</a> > <a href="#">关于我们</a></div><div class="clean"></div></div>
                <div class="nypro">
                    <ul>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <a href="#"><li><div class="pic"><img src="/plug-in/repair/images/pro.jpg"></div><div class="tit">Galaxy J3 Pro</div><div class="more">更多信息></div></li></a>
                        <div class="clean"></div>
                    </ul>
                </div>
                <div class="page">
                    <a href="#">上一頁</a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">下一頁</a>
                </div>
            </div>
            <div class="blank25"></div>
            <div class="clean"></div>
        </div>

    </div><!-- nybg end -->

    <div class="footer">
        <div class="content">
            <div class="fnav">
                <div class="tit">關於我們</div>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">全球性</div>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">產品</div>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">選擇我們</div>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
                <a href="#">公司簡介</a>
            </div>
            <div class="fnav">
                <div class="tit">聯繫我們</div>
                <a href="#">公司簡介</a>
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
