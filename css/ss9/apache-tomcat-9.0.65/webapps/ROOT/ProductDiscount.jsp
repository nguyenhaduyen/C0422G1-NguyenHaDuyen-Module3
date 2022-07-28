<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/27/2022
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .calculate {
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
            border: 1px #CCC solid;
        }
        .login input {
            padding: 5px;
            margin: 5px;
        }
    </style>
</head>
<body>

<form action="calculate" method="post">
    <div class="calculate">
        <h2>Product Discount Calculator</h2>
        <input type="text" name="description" placeholder="product description" size="30px">
        <input type="text" name="list price" placeholder="list price" size="30px">
        <input type="text" name="discount" placeholder="Discount Percent" size="30px">
        <button type="submit"> Calculate Discount</button>
    </div>
</form>
<h2>Luong chiet khau la: ${discountAmount}</h2>
<h2>Gia sau khi da duoc chiet khau la: ${discountPrice} </h2>
</body>
</html>
