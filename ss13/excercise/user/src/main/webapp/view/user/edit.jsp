<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user">Quay lại trang chính</a>
<h2>Update thông tin sản phẩm</h2>
<form method="post">
    <table>
        <tr>
            <th>ID</th>
            <td><input type="text" name="id" value="${user.id}"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" value="${user.name}"></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><input type="text" name="email" value="${user.email}"></td>
        </tr>
        <tr>
            <th>Country</th>
            <td><input type="text" name="country" value="${user.country}"></td>
        </tr>
        <tr>
            <td><button type="submit" name="action" value="update">Save</button></td>
        </tr>
    </table>
</form>
</body>
</html>
