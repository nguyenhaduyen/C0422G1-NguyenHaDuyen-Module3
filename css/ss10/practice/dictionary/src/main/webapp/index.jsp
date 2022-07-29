<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2>Dictionary</h2>
<form action="dictionary" method="post">
    <input type="text" name="word" placeholder="word">
    <button type="button">Search</button>
</form>
<h2>Từ đó có nghĩa là: ${result}</h2>
</body>
</html>
