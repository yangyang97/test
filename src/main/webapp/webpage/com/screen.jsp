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
                    <a href="/webpage/com/index.jsp"><li>主页</li></a>
                    <a href="/webpage/com/about.jsp"><li>关于我们</li></a>
                    <a href="/webpage/com/pro.jsp"><li>全球</li></a>
                    <a href="/webpage/com/pro.jsp"><li>产品</li></a>
                    <a href="/webpage/com/showpro.jsp"><li>选择我们</li></a>
                    <a href="/webpage/com/contact.jsp"><li  class="on">联络我们</li></a>
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

            <div class="inright1">
                <div class="nylmtit"><a class="lmnav on">维修提交</a><div class="lj">您的位置：<a href="#">主页</a> > <a href="#">屏幕更换</a></div><div class="clean"></div></div>
                <div class="nycontact">
                    <div class="wz">
                        <h1 style="font-size:25px">屏幕更换：￥149元起</h1><br/>
                        <h2 style="font-size:15px">免费上门&nbsp&nbsp&nbsp20分钟快修&nbsp&nbsp&nbsp修完付款</h2><br/>
                        <h3 style="font-size:10px">用户在使用本服务的过程中，可能需要填写或提交一些必要的信息，如法律法规等规章规范性文件 （以下称“法律法规”）规定的需要填写的身份信息。
                            如用户提交的信息不完整或不符合法律法规的 规定，则用户可能无法使用本服务或在使用本服务的过程中受到限制。
                            个人隐私信息是指涉及用户个人身份或个人隐私的信息，比如，用户真实姓名、手机号码、手机 设备识别码、详细地址等等。
                            非个人隐私信息是指用户对本服务的操作状态以及使用习惯等明确 且客观反映在闪修侠服务器端的基本记录信息、个人隐私信息范围外的其它普通信息，
                            以及用户 同意公开的上述隐私信息</h3><br/>
                    </div>
                    <div class="pic"><img src="/plug-in/repair/images/mory.jpg"></div>
                    <div class="blank25"></div>

                    <div class="rightcon">
                        <div class="title">屏幕更换</div>
                        <div class="propj" style="padding:0;">
                            <form name="form1" class="applySpecialform">
                                <select id="number" class="text" name="province" onclick="getCity()">
                                    <option class="checkbox-type" value="0">请选择机型</option>
                                    <option class="checkbox-type" tip="IPhone X" value="469">IPhone X</option>
                                    <option class="checkbox-type" tip="IPhone X MAX" value="499">IPhone X MAX</option>
                                    <option class="checkbox-type" tip="IPhone 8" value="339">IPhone 8</option>
                                    <option class="checkbox-type" tip="IPhone 8plus" value="389">IPhone 8plus</option>
                                    <option class="checkbox-type" tip="IPhone 7" value="219">IPhone 7</option>
                                    <option class="checkbox-type" tip="IPhone 7 plus" value="249">IPhone 7 plus</option>
                                    <option class="checkbox-type" tip="IPhone 6s" value="179">IPhone 6s </option>
                                    <option class="checkbox-type" tip="IPhone 6s plus" value="199">IPhone 6s plus</option>
                                    <option class="checkbox-type" tip="IPhone 6" value="159">IPhone 6 </option>
                                    <option class="checkbox-type" tip="IPhone 6 plus" value="179">IPhone 6 plus</option>
                                    <option class="checkbox-type" tip="IPhone 5" value="149">IPhone 5</option>
                                    <option class="checkbox-type" tip="IPhone 5s" value="149">IPhone 5s</option>
                                </select>
                                <input  NAME="pohoe" type="text" class="text" placeholder="手机联系人" >
                                <input name="adl" type="text" class="text" placeholder="联系地址">
                                <input name="num" type="text" class="text" placeholder="手机号码">


                                <textarea name="remark" class="textarea" placeholder="请认真填写备注 我们会根据您的备注来给你制定维修计划"></textarea>
                                <h1 style="color:red ; font-size:20px">您应付款：￥<input style="color:red ; font-size:20px" id="tax1" type="text" value="0"></h1>
                                <script>
                                    function getCity(){
                                        var i=document.getElementById("number").options[document.getElementById("number").selectedIndex].value;
                                        console.log(i);
                                        $("#tax1").val(i);
                                    }
                                </script>
                                <%--<div class="codenr"><input type="text" class="text" placeholder="驗證碼" style=" width:160px;"> 1234</div>--%>
                                <div class="clean"></div>
                            </form>
                            <input value="立即提交" onclick="tuueueu(3)" class="sub">

                        </div>
                    </div>

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
            Copyright © 2019 - 2029 闪电侠科技有限公司 All Rights Reserved.
        </div>
    </div>

    <div class="page-down" title="back to the top"><i class="fa fa-angle-up"></i></div>

    <script>
        function tuueueu(e) {
            var submitTtpe = true;
            $(".applySpecialform input[type='text']").each(function(){
                if($(this).val()==null||$(this).val()==""){
                    submitTtpe = false;
                }
            });
            if(submitTtpe){

                var s = "";
                $(".checkbox-type").each(function () {
                    var r = $(this).is(':checked');
                    console.log(r);
                    if(r){
                        s += $(this).val()+",";
                    }
                });
                var i=$("#number option:selected").attr('tip');
                $("#c009").val(s);
                $(".applySpecialform").each(function(){
                    var data=$(".applySpecialform").serialize();
                    var baseWare = dataMethod(data);
                    $.ajax({
                        async: false,
                        type: "POST",
                        url:'sumbitController.do?PhoneList',
                        data:{data:baseWare,submitTtpe:i,type:e},
                        success: function (result) {
                            alert("提交成功");
                            location.reload(true);


                        },
                        error: function (result) {
                            alert("提交失败");
                            location.reload(true);
                        }
                    })
                });
            }else {
                alert("请填写详细信息");
            }
        }



        //form转为json
        function dataMethod(data) {

            var data= decodeURIComponent(data,true);//防止中文乱码
            var dataJson=DataDeal.formToJson(data);//转化为json
            return dataJson;
        }
        var DataDeal = {
            //将从form中通过$('#form').serialize()获取的值转成json
            formToJson: function (data) {
                data=data.replace(/&/g,"\",\"");
                data=data.replace(/=/g,"\":\"");
                data="{\""+data+"\"}";
                return data;
            },
        };
    </script>

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

