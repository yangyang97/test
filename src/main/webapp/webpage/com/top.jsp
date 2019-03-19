<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019/3/17
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <div class="content">
        <div class="logo"></div>
        <div class="muen">
            <ul>
                <a href="/pcController.do?index"><li class="on">主页</li></a>
                <a href="/pcController.do?about"><li>关于我们</li></a>
                <a href="/PhoneController.do?PhoneList"><li>产品</li></a>
                <%--<a href="/webpage/com/pro.jsp"><li>产品</li></a>--%>
                <a href="/webpage/com/showpro.jsp"><li>选择我们</li></a>
                <a href="/webpage/com/contact.jsp"><li>我的订单</li></a>
            </ul>
        </div>
        <c:if test="${!empty user}">
            <div class="lang">
                   <li></li> 欢迎您！${user.userName}
                &nbsp;<a onclick="logout()">退出</a>
            </div>
        </c:if>
        <c:if test="${empty user}">
            <div class="lang"><a href="/repairUserController.do?loginPage" class="cn">登录</a><a href="/repairUserController.do?registerPage" class="en">注册</a><div class="clean"></div></div>
        </c:if>
        <div class="clean"></div>
    </div>
</head>
<body>
<script>
    var href = document.referrer;//跳转前页面
    function logout() {
        $.ajax({
            async: false,
            type: "post",
            url: "/repairUserController.do?logout",
            success: function (data) {
                    alert("退出成功");
                    window.location = href;
                }

        });
    }
</script>
</body>
</html>
