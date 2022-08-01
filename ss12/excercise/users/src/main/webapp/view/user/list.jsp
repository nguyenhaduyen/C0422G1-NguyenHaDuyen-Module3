<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List of user</h2>
<a href="/user?action=add">Add new user</a>
<form action="/user">
    <p>Nhâp id để update</p>
    <input type="text" name="id">
    <button type="submit" name="action" value="update">Tim kiem</button>
</form>
<form action="/user">
    <p>Nhập tên nước muốn tìm kiếm</p>
    <input type="text" name="country">
    <button type="submit" name="action" value="findByCountry">Tim</button>
</form>
<form action="/user" method="get">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="user" items="${user}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <th><a href="/user?action=delete&id=${user.id}">Delete</a></th>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
