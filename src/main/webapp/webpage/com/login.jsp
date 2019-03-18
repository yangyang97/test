<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/plug-in/jquery/jquery-1.8.0.min.js"></script>

    <!-- css files -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- /css files -->

</head>

<body background="/plug-in/login/images/comturn.png">
<h1>登录</h1>
<div class="log">
    <div class="content2" align="center">
        <form>
            <input type="text" name="userName" id="userName" placeholder="请输入用户名或手机号">
            <input type="password" name="password" id="password" placeholder="请输入密码">
        </form>
        <button class="register" value="登录" onclick="submit()">登录</button>
    </div>
</div>
<script>
    var href = document.referrer;//跳转前页面
    function submit() {
        var userName = $("#userName").val();
        var password = $("#password").val();
        if((userName == '' || userName == null || userName == undefined) ||
            (password == '' || password == null || password == undefined)
        ){
            alert("输入框不为空");
            return false;
        }
        $.ajax({
            async: false,
            type : "post",
            url:"repairUserController.do?login",
            data: {
                userName: userName,
                password: password
            },
            success: function (data) {
                var registerResult = data.resultSuccess;
                var registerMsg = data.resultMsg;
                if(registerResult){
                    alert("登录成功");
                    window.location = href;
                }else{
                    alert(registerMsg);
                    return false;
                }
            }
        })
    }
</script>
</body>
</html>