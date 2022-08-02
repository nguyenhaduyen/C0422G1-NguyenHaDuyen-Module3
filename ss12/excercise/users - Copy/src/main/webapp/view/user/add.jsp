<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add new users</h2>
<a href="/user">Quay lại trang chính</a>
<form action="/user" method="post">
    <table>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" placeholder="ten"></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><input type="text" name="email" placeholder="email"></td>
        </tr>
        <tr>
            <th>Country</th>
            <td><input type="text" name="country" placeholder="country" ></td>
        </tr>
        <tr>
            <td><button name="action" value="add" type="submit">Save</button> </td>
        </tr>
    </table>
</form>

</body>
</html>
