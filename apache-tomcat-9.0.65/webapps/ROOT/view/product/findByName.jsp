<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Trang hien thi thong tin theo ten</h2>
<a href="/product">Quay lai trang list</a>
<table border="1px">
    <tr>
        <th>ID</th>
        <td><input value="${product.id}"></td>
    </tr>
    <tr>
        <th>Name</th>
        <td><input value="${product.nameOfProduct}"></td>
    </tr>
    <tr>
        <th>Price</th>
        <td><input value="${product.price}"></td>
    </tr>
    <tr>
        <th>Description Product</th>
        <td><input value="${product.description}"></td>
    </tr>
    <tr>
        <th>Made In</th>
        <td><input value="${product.madeIn}"></td>
    </tr>
</table>


</body>
</html>
