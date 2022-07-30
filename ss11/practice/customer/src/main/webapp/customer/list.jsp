<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/29/2022
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customers?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customers.getId()}">${customer.getName()}</a></td>
            <td>${customers.getEmail()}</td>
            <td>${customers.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customers.getId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${customers.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
