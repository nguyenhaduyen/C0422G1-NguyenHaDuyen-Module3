<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>

<h3 class="text-center mt-3">ADD NEW CUSTOMER</h3>
<form class="w-25 container-fluid shadow mt3" method="post" action="/customer?action=add">
    <div class="mb-3 mt-3">
        <label class="form-label">Họ tên Khách Hàng</label>
        <input type="text" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="name" value="${customer.name}">
        <p class="text-danger">${errors.get("name")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Ngày Sinh</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="date">
        <p class="text-danger">${errors.get('birthday')}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Giới Tính</label>
       <select name="gender">
           <option value="1">Nam</option>
           <option value="0">Nữ</option>
       </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Số CMND</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="cmnd" value="${customer.identify}">
        <p class="text-danger">${errors.get("cmnd")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Số Điện Thoại</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="sdt" value="${customer.phoneNumber}">
        <p class="text-danger">${errors.get("phone")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="email" value="${customer.email}">
        <p class="text-danger">${errors.get("email")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Địa Chỉ</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="dc">
    </div>
    <div class="mb-3">
        <label class="form-label">Loại Khách Hàng</label>
        <select name="typeCustomer">
        <option value="1">Diamond</option>
        <option value="2">Platinium</option>
        <option value="4">Silver</option>
        <option value="5">Member</option>
        <option value="3">Gold</option>
        </select>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>
</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
