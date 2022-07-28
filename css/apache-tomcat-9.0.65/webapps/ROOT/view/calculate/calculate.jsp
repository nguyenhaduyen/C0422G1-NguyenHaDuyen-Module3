<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/28/2022
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Simple Calculator</h2>
<form method="post" action="calculate">
    <input type="text" name="First Operand" placeholder="First operand">
    <input type="text" name="Second Operand" placeholder="second operand">
   <select name="calculate">
       <option value="Addition">+</option>
       <option value="Subtraction">-</option>
       <option value="Multiplication">*</option>
       <option value="Division">/</option>
   </select>
    <button type="submit">Calculate</button>
</form>
<h2>Kết quả là: ${result}</h2>

</body>
</html>
