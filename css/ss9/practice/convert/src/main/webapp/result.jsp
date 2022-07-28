<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="convert" method="post">
<h2>Convert</h2>
<input type="text" name="rate" placeholder="rate">
<input type="text" name="USD" placeholder="USD">
<button type="submit">Convert</button>
    <h2>Chuyển được với giá tiền qui đổi là : ${convert}</h2>
</form>
</body>
</html>
