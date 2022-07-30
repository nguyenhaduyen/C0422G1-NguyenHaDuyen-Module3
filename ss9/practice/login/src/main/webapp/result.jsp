<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 9:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .login {
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
            border: 1px #CCC solid;
        }
        .login input {
            padding: 5px;
            margin: 5px;
        }
    </style>
</head>

<body>
<form action="login" method="post">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" placeholder="username" size="30px">
        <input type="text" name="password" placeholder="password" size="30px">
        <input type="submit" value="Sign in">
    </div>
</form>
<h2>${response}</h2>
</body>
</html>