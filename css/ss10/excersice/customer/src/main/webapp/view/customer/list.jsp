<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}">
    <tr>
        <td>${customer.name}</td>
        <td>${customer.dateOfBirth}</td>
        <td>${customer.address}</td>
        <td><img src="${customer.image}" alt="dgdf" width="50px"></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
