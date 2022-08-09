<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
    <style>
        body{
            background: url("https://media.istockphoto.com/vectors/green-watercolor-background-illustration-vector-id1367756024?k=20&m=1367756024&s=612x612&w=0&h=ZM_3CDnvZCcLE0ktCeIQu82wnMNikYyFkp-r0Xe7lxw=");
        }
    </style>
</head>
<body>

<h3 class="text-center mt-3">UPDATE SERVICE</h3>

<form class="w-25 container-fluid shadow mt-3" name="/facility?action=update" method="post" >
    <input id="code" value="${facility.codeTypeService}" type="hidden" name="sv">
    <div class="mb-3">
        <label class="form-label">Mã dịch vụ</label>
        <input type="text" class="form-control" name="serviceCode" value="${facility.serviceCode}">
    </div>
    <div class="mb-3">
        <label class="form-label">Tên dịch vụ</label>
        <input type="text" class="form-control" name="serviceName" value="${facility.serviceName}">
        <p class="text-danger">${errors.get("name")}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Diện tích sử dụng</label>
        <input type="text" class="form-control" id="exampleInputEmail" name="dt" value="${facility.area}">
    </div>
    <div class="mb-3">
        <label class="form-label">Chi phí thuê</label>
        <input type="text" class="form-control" name="cp" value="${facility.cost}">
    </div>
    <div class="mb-3">
        <label class="form-label">Số lượng người tối đa</label>
        <input type="text" class="form-control" name="nguoi" value="${facility.maxPeople}">
    </div>
    <div class="mb-3" id="s1" style="display: none">
        <label class="form-label">Tiêu chuẩn phòng</label>
        <input type="text" class="form-control" name="tc" value="${facility.standardRoom}">
    </div>
    <div class="mb-3" id="s4" style="display: none">
        <label class="form-label">Mô tả tiện nghi khác</label>
        <input type="text" class="form-control" name="mota" value="${facility.descriptionOtherConvenience}">
    </div>
    <div class="mb-3" id="s3" style="display: none">
        <label class="form-label">Diện tích hồ bơi</label>
        <input type="text" class="form-control" name="pool" value="${facility.poolArea}">
    </div>
    <div class="mb-3" id="s2" style="display: none">
        <label class="form-label">Số tầng</label>
        <input type="text" class="form-control" name="floor" value="${facility.numberOfFloor}">
        <p class="text-danger">${errors.get("floor")}</p>
    </div>
    <div class="mb-3" id="s5" style="display: none">
        <label class="form-label">Dịch vụ miễn phí đi kèm</label>
        <input type="text" class="form-control" name="dvmp" value="${facility.facilityFree}">
    </div>
    <div class="mb-3">
        <label class="form-label">Kiểu thuê</label>
        <select name="kieuThue">
            <c:forEach var="typeRent" items="${typeRentList}">
                <c:if test="${typeRent.rentTypeId==facility.rentTypeId}">
                    <option value="${typeRent.rentTypeId}">
                            ${typeRent.rentalTypeName}
                    </option>
                </c:if>
            </c:forEach>
            <c:forEach var="typeRent" items="${typeRentList}">
                <c:if test="${typeRent.rentTypeId!=facility.rentTypeId}">
                    <option value="${typeRent.rentTypeId}">
                            ${typeRent.rentalTypeName}
                    </option>
                </c:if>
            </c:forEach>
        </select>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>
</form>
</div>
</div>
</div>
</body>
<script>
    let code = document.getElementById("code").value
    window.onload = serviceInput(code)
    function serviceInput(code) {
        switch (code) {
            case "1":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "block"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "2":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "3":
                document.getElementById("s1").style.display = "none"
                document.getElementById("s2").style.display = "none"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "none"
                document.getElementById("s5").style.display = "block"
                break;
        }
    }
</script>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
