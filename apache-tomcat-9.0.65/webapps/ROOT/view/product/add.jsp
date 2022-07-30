<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/29/2022
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang them moi thong tin</title>
</head>
<body>
<h2>Trang them moi thong tin</h2>
<a href="/product">Quay lai trang list</a>
<form action="/product?action=add" method="post">
    <table border="1px">
        <tr>
            <th>ID</th>
            <td><input type="text" name="id" placeholder="id" ></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" placeholder="ten"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price" placeholder="price"></td>
        </tr>
        <tr>
            <th>Description Product</th>
            <td><input type="text" name="description" placeholder="description" ></td>
        </tr>
        <tr>
            <th>Made In</th>
            <td><input type="text" name="madeIn" placeholder="made in"></td>
        </tr>
        <tr>
            <th><button type="submit">Save</button> </th>
        </tr>
    </table>
</form>
</body>
</html>
