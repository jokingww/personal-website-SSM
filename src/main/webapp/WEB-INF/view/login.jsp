<%--
Created by IntelliJ IDEA.
User: wan
Date: 2020/9/2
Time: 20:41
To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head> 
  <meta charset="UTF-8"> 
  <meta name="Generator" content="EditPlus®"> 
  <meta name="Author" content=""> 
  <meta name="Keywords" content=""> 
  <meta name="Description" content=""> 
  <title>MyWebsite</title>
  <link href="/css/login.css" rel="stylesheet">
  <script type="text/javascript">
    var msg = '<%= (String) request.getAttribute("msg") %>'
    if(msg != null && msg != "" && msg != "null") {
     alert(msg)
    }
    var intercepter = '<%= (String) request.getAttribute("intercepter") %>'
    if (intercepter != null && intercepter != "" && intercepter != "null") {
     alert(intercepter)
    }
   //验证用户名和密码是否为空
   function verifyLogin() {
    if(document.loginForm.username.value == "") {
     alert("用户名不能为空！");
     return false;
    }
    if(document.loginForm.password.value == "") {
     alert("密码不能为空！");
     return false;
    }
   }
  </script>
 </head>
 <body>
  <script type="text/javascript" src="/js/canvas.js" opacity= 0.6></script>
  <div id="login-box">
   <h1>Login</h1>
   <form action="/dologin.do" name="loginForm" method="post" onsubmit="return verifyLogin()">
    <div class="form">
    <div class="item">
     <i class="fa fa-user-circle-o" aria-hidden="true"></i>
     <input type="text" name="username" placeholder="username">
    </div>
    <div class="item">
     <i class="fa fa-key" aria-hidden="true"></i>
     <input type="text" name="password" type="password" placeholder="password">
    </div>
   </div>
    <button>Login</button>
   </form>
  </div>
 </body> 
</html>