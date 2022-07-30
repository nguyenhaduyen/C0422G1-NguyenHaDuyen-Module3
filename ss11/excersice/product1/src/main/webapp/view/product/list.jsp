<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/29/2022
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang danh sach san pham</title>
</head>
<link rel="stylesheet" href="../bootstrap-5.0.2-dist/css/bootstrap.css">
<script src="../bootstrap-5.0.2-dist/js/bootstrap.js"></script>
<body>
<h1>Trang danh sach san pham</h1>
<a href="/product?action=add">Them moi san pham</a>
<form action="/product" method="get">
    <p>Tim kiem thong tin chinh sua</p><input type="text" name="id">
    <button name="action" value="update">submit</button>
</form>
<form action="/product" method="get">
    <p>Tim kiem thong tin theo ten</p><input type="text" name="name">
    <button type="submit" name="action" value="findByName">submit</button>
</form>
<table class="table table table-bordered border-primary">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">Ten san pham</th>
        <th scope="col">Gia san pham</th>
        <th scope="col">Mo ta san pham</th>
        <th scope="col">Noi san xuat</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="product" items="${product}" varStatus="status">
        <tr>
            <td>${product.id}</td>
            <td>${product.nameOfProduct}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.madeIn}</td>
            <td>
                <button><a href="/product?action=delete&id=${product.id}">delete</a></button>
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>

</body>
</html>
