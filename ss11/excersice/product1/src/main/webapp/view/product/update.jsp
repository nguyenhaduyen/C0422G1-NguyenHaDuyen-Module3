<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/30/2022
  Time: 8:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update thong tin san pham</title>
</head>
<body>
<h2>Update thong tin san pham</h2>
<a href="/product">Quay lai thong tin san pham</a>
<form action="/product?action=update" method="post">
    <td><input type="hidden" name="id"value="${product.id}"></td>
    <table border="1px">
        <tr>
            <th>ID</th>
            <td><input type="text" disabled value="${product.id}"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" placeholder="ten" value="${product.nameOfProduct}"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price" placeholder="price" value="${product.price}"></td>
        </tr>
        <tr>
            <th>Description Product</th>
            <td><input type="text" name="description" placeholder="description" value="${product.description}"></td>
        </tr>
        <tr>
            <th>Made In</th>
            <td><input type="text" name="madeIn" placeholder="made in" value="${product.madeIn}"></td>
        </tr>
        <tr>
            <th>
                <button type="submit">Save</button>
            </th>
        </tr>
    </table>
</form>

</body>
</html>
