
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>

<h3 class="text-center mt-3">UPDATE CUSTOMER</h3>
<form class="w-25 container-fluid shadow" method="post" action="/customer?action=update">
    <div class="mb-3">
        <label class="form-label">Mã Khách Hàng</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="id" value="${customer.customerCode}">
    </div>
    <div class="mb-3">
        <label class="form-label">Họ tên Khách Hàng</label>
        <input type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="name"
               value="${customer.name}">
        <p class="text-danger">${errors.get("name")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Ngày Sinh</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="date"
               value="${customer.dateOfBirth}">
    </div>
    <div class="mb-3">
        <label class="form-label">Giới Tính</label>
        <select name="gender">

            <c:if test="${customer.gender == true}">
                <option value="${true}">Nam</option>
            </c:if>
            <c:if test="${customer.gender == false}">
                <option value="${false}">Nữ</option>
            </c:if>

            <c:if test="${customer.gender == true}">
                <option value="${false}">Nữ</option>
            </c:if>
            <c:if test="${customer.gender == false}">
                <option value="${true}">Nam</option>
            </c:if>

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
        <input type="text" class="form-control" aria-describedby="emailHelp" name="dc" value="${customer.address}">
    </div>
    <div class="mb-3">
        <label class="form-label">Loại Khách Hàng</label>
        <select name="typeCustomer">
            <c:forEach var="typeCustomer" items="${typeCustomer}">

                <c:if test="${typeCustomer.typeCustomerCode == customer.typeCustomerCode}">
                    <option value="${typeCustomer.typeCustomerCode}">
                            ${typeCustomer.nameTypeCustomer}</option>
                </c:if>

            </c:forEach>
            <c:forEach var="typeCustomer" items="${typeCustomer}">
                <c:if test="${typeCustomer.typeCustomerCode != customer.typeCustomerCode}">
                    <option value="${typeCustomer.typeCustomerCode}">${typeCustomer.nameTypeCustomer}</option>
                </c:if>
            </c:forEach>
        </select>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>
</form>
</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
