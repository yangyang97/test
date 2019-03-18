<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/plug-in/jquery/jquery-1.8.0.min.js"></script>

    <!-- css files -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- /css files -->
    <script>
        function submit() {
            var userName = $("#userName").val();
            var password = $("#password").val();
            var repeatpassword = $("#repeatpassword").val();
            var mobile = $("#mobile").val();
            if((userName == '' || userName == null || userName == undefined) ||
                (password == '' || password == null || password == undefined) ||
                (repeatpassword == '' || repeatpassword == null || repeatpassword == undefined) ||
                (mobile == '' || mobile == null || mobile == undefined)
            ){
                alert("输入框不为空");
                return false;
            }
            if(userName.length < 4 || userName.length > 16){
                alert("用户名长度在4到16之间");
                return false;
            }
            if(password.length < 6){
                alert("密码长度小于6");
                return false;
            }
            if($("#repeatpassword").val()!=$("#password").val()){
                alert("两次输入的密码不一致");
                return false;
            }
            $.ajax({
                async: false,
                type : "post",
                url:"repairUserController.do?register",
                data: {
                    userName: userName,
                    password: password,
                    mobile: mobile
                },
                success: function (data) {
                    var registerResult = data.resultSuccess;
                    var registerMsg = data.resultMsg;
                    if(registerResult){
                        alert("注册成功");
                        window.location = "pcController.do?index";
                    }else{
                        alert(registerMsg);
                        return false;
                    }
                }
            })
        }
    </script>
</head>

<body background="/plug-in/login/images/comturn.png">
<h1>注册</h1>
<div class="log">
    <div class="content2" align="center">
        <form>
            <input type="text" name="userName" id="userName" placeholder="请输入用户名">
            <input type="tel" name="mobile" id="mobile" placeholder="请输入手机号">
            <input type="password" name="password" id="password" placeholder="请输入密码">
            <input type="password" name="repeatpassword" id="repeatpassword" placeholder="重复输入密码">
        </form>
        <button class="register" value="注册" onclick="submit()">注册</button>
    </div>
</div>

</body>
</html>