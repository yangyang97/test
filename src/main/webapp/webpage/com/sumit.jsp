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
        <jsp:include   page="top.jsp" flush="true"/>
    </div>

    <div class="nybg">

        <div class="nybanner" style="background:url(/plug-in/repair/images/zuidi2.jpg) no-repeat center;"></div>
        <div class="blank25"></div>
        <div class="content">

            <div class="inright1">
                <div class="nylmtit"><a class="lmnav on">维修提交</a><div class="lj">您的位置：<a href="#">主页</a> > <a href="#">关于我们</a></div><div class="clean"></div></div>
                <div class="nycontact">
                    <div class="wz">
                        <h1 style="font-size:25px">品牌机型：${phonelist.get(0).phone_name}</h1><br/>
                        <h2 style="font-size:15px">免费上门&nbsp&nbsp&nbsp20分钟快修&nbsp&nbsp&nbsp修完付款</h2><br/>
                        <h2 style="font-size:15px">注意事项</h2><br/>
                        <h3 style="font-size:12px">用户在使用本服务的过程中，可能需要填写或提交一些必要的信息，如法律法规等规章规范性文件 （以下称“法律法规”）规定的需要填写的身份信息。
                        如用户提交的信息不完整或不符合法律法规的 规定，则用户可能无法使用本服务或在使用本服务的过程中受到限制。
                        个人隐私信息是指涉及用户个人身份或个人隐私的信息，比如，用户真实姓名、手机号码、手机 设备识别码、详细地址等等。
                        非个人隐私信息是指用户对本服务的操作状态以及使用习惯等明确 且客观反映在闪修侠服务器端的基本记录信息、个人隐私信息范围外的其它普通信息，
                            以及用户 同意公开的上述隐私信息</h3><br/>
                    </div>
                    <div class="pic"><img src="${phonelist.get(0).phone_photo}"></div>
                    <div class="blank25"></div>

                    <div class="rightcon">
                        <div class="title">故障类型</div>
                        <div class="propj" style="padding:0;">
                            <form name="form1" class="applySpecialform">
                                <input type="text" name="color" class="text" placeholder="机型颜色">
                                <input type="text" name="people" class="text" placeholder="手机联系人">
                                <input type="text" name="addr" class="text" placeholder="联系地址">
                                <input type="text" name="num" class="text" placeholder="手机号码">
                                <select class="text" id="number" name="province" onclick="getCity()">
                                    <option value="0">请选择故障类型</option>
                                    <option value="1">屏幕问题(更换总成 旧屏回收)</option>
                                    <option value="2">电池/充电问题</option>
                                    <option value="2">摄像头问题</option>
                                    <option value="3">按键问题</option>
                                    <option value="4">声音问题</option>
                                    <option value="5">进水/无法开机/手机摔坏问题</option>
                                    <option value="6">其他问题</option>
                                </select>
                                <SELECT class="text" id="numbers" name="city" >
                                    <OPTION VALUE="0" >请选择故障类型 </OPTION>
                                </SELECT>
                                <script>
                                    //定义了故障的二维数组，
                                    var city=[
                                        [" 内屏显示异常","外屏碎"],
                                        ["充电","电池"],
                                        ["闪光灯","后摄像头","前摄像头"],
                                        ["音量键","HOME键","电源键","静音键"],
                                        ["扬声器","耳机","听筒"],
                                        ["主板问题","手机严重损坏","进水"],
                                        ["重装调试","软件故障","刷机错误","感应区"],
                                    ];
                                    function getCity(){
                                        //获得省份下拉框的对象
                                        var sltProvince=document.form1.province;

                                        //获得城市下拉框的对象
                                        var sltCity=document.form1.city;

                                        //得到对应省份的城市数组
                                        var provinceCity=city[sltProvince.selectedIndex - 1];

                                        //清空城市下拉框，仅留提示选项
                                        sltCity.length=1;

                                        //将城市数组中的值填充到城市下拉框中
                                        for(var i=0;i<provinceCity.length;i++){
                                            //Option(选项描述，选项值) 等价于 <option value="选项值" >选项描述</option>;
                                            sltCity[i+1]=new Option(provinceCity[i],provinceCity[i]);
                                        }
                                    }
                                </script>

                                <textarea class="textarea" placeholder="请认真填写备注 我们会根据您的备注来给你制定维修计划"></textarea>
                                <%--<div class="codenr"><input type="text" class="text" placeholder="驗證碼" style=" width:160px;"> 1234</div>--%>
                                <div class="clean"></div>
                            </form>
                            <input value="立即提交" onclick="detail()" class="sub">
                        </div>
                    </div>

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
    function detail() {
        var uesr='${user}';
        if(uesr.length>0){
            var id='${user.id}';
            var submitTtpe = true;
            var s = $("#number option:selected").val();
            var c = $("#numbers option:selected").val();
            $(".applySpecialform input[type='text']").each(function(){
                if($(this).val()==null||$(this).val()==""){
                    submitTtpe = false;
                }
            });
            if(s !=0 &&c!=0){
                if(submitTtpe){
                    $(".applySpecialform").each(function(){
                        var data=$(".applySpecialform").serialize();
                        var baseWare = dataMethod(data);
                        $.ajax({
                            async: false,
                            type: "POST",
                            url:'sumbitController.do?PhoneType',
                            data:{data:baseWare,id:id},
                            success: function (result) {
                                alert("提交成功，工程师会在最近的时间联系您");
                                location.reload(true);


                            },
                            error: function (result) {
                                alert("提交成功哦");
                                location.reload(true);
                            }
                        })
                    });
                }else {
                    layer.msg("请填写详细信息");
                }
            }else {
                layer.msg("请选择故障类型");
            }
        }else{
            layer.msg("请先登录");
            setTimeout('window.location.href="/repairUserController.do?loginPage"',2000);
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

