<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Hiển thị thông tin theo tên</h2>
<ul class="nav nav-pills">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="/product">Quay lại trang list</a>
    </li>
</ul>
<table border="1px">
    <tr>
        <th>ID</th>
        <td><input disabled value="${product.id}"></td>
    </tr>
    <tr>
        <th>Name</th>
        <td><input disabled value="${product.nameOfProduct}"></td>
    </tr>
    <tr>
        <th>Price</th>
        <td><input disabled value="${product.price}"></td>
    </tr>
    <tr>
        <th>Description Product</th>
        <td><input disabled value="${product.description}"></td>
    </tr>
    <tr>
        <th>Made In</th>
        <td><input disabled value="${product.madeIn}"></td>
    </tr>
</table>

<script src="/bootstrap/js/bootstrap.js"/>
</body>
</html>
