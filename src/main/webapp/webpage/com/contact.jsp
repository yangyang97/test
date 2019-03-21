<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019/2/15
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style type="text/css">
    table.imagetable {
        font-family: verdana,arial,sans-serif;
        font-size:12px;
        color:#333333;
        border-width: 1px;
        border-color: #999999;
        border-collapse: collapse;
    }
    table.imagetable th {
        background:#b5cfd2;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
    table.imagetable td {
        background:#dcddc0 ;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
</style>
<body>
<div class="smallest-screen"></div>
<!--<div class="lmbutt"><i class="fa fa-reorder"></i></div>-->

<div class="webmain">

    <div class="header">
        <jsp:include   page="top.jsp" flush="true"/>
    </div>

    <div class="nybg">

        <div class="nybanner" style="background:url(/plug-in/repair/images/nybanner.jpg) no-repeat center;"></div>
        <div class="blank25"></div>
        <div class="content">

            <div class="inright1">
                <div class="nylmtit"><a class="lmnav on">我的订单</a>
                    <div class="lj">您的位置：<a href="#">主页</a> > <a href="#">我的订单</a></div>
                    <div class="clean"></div></div>
                <div class="nycontact">
                    <div class="picc">
                        <img src="/plug-in/repair/images/order1.jpg">
                    </div>
                    <%--<div class="pic"><img src="/plug-in/repair/images/order.jpg"></div>--%>
                    <div class="blank25">
                        <c:if test="${empty user}">
                            <a href="/repairUserController.do?loginPage">您还未登录请先登录</a>
                        </c:if>
                    </div>

                    <c:if test="${not empty user}">
                        <h1 style="font-size: 15px">我的订单</h1>
                        <table class="imagetable">
                            <tr>
                                <th>Info Header 1</th>
                                <th>Info Header 2</th>
                                <th>Info Header 3</th>
                                <th>Info Header 4</th>
                                <th>Info Header 5</th>
                                <th>Info Header 6</th>
                                <th>Info Header 7</th>
                            </tr>
                            <tr>
                                <td>Text 1A</td>
                                <td>Text 1B</td>
                                <td>Text 1C</td>
                                <td>Text 1D</td>
                                <td>Text 1e</td>
                                <td>Text 1f</td>
                                <td>Text 1g</td>
                            </tr>
                            <tr>
                                <td>Text 2A</td>
                                <td>Text 2B</td>
                                <td>Text 2C</td>
                                <td>Text 2C</td>
                                <td>Text 2C</td>
                                <td>Text 2C</td>
                                <td>Text 2C</td>
                            </tr>
                        </table>
                    </c:if>


                </div>
            </div>
            <div class="blank25"></div>
            <div class="clean"></div>
        </div>

    </div><!-- nybg end -->

    <jsp:include page="Down.jsp"></jsp:include>
    <div class="banq">
        <div class="content">
            Copyright © 2005 - 2015 极速修科技有限公司 All Rights Reserved.
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

