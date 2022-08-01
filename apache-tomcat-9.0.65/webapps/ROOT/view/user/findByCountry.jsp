<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user">Quay lai trang chinh</a>
<table border="1px">
    <tr>
        <th>ID</th>
        <td><input disabled value="${user.id}"></td>
    </tr>
    <tr>
        <th>Name</th>
        <td><input disabled value="${user.name}"></td>
    </tr>
    <tr>
        <th>Email</th>
        <td><input disabled value="${user.email}"></td>
    </tr>
    <tr>
        <th>Country</th>
        <td><input disabled value="${user.country}"></td>
    </tr>
</table>



</form>

</body>
</html>
