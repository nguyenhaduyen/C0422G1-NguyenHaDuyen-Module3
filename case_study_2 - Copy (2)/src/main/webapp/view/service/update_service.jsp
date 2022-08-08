<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<div class="row">
    <div class="col-12">
        <nav class="navbar navbar-expand-lg navbar-light bg-success p-0 ">
            <div class="col-1"></div>
            <div class="col-1"><img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" width="45px">
            </div>
            <div class="col-6">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <div class="col-1">
                            <li class="nav-item">
                                <a class="nav-link active text-light" aria-current="page" href="/">Home</a>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <div class="col-2">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown2" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Employee
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                    <li><a class="dropdown-item" href="employee/list_employee.jsp">List Employee</a></li>
                                    <li><a class="dropdown-item" href="employee/add_new_employee.jsp">
                                        <button>Add New Employee</button>
                                    </a></li>
                                </ul>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <div class="col-2">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown1" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Customer
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                    <li><a class="dropdown-item" href="/customer">List</a></li>
                                    <li><a class="dropdown-item" href="/customer?action=add">
                                        <button>Add New Customer</button>
                                    </a></li>
                                </ul>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/facility">List</a></li>
                                <li><a class="dropdown-item" href="/facility?action=add">
                                    <button>Add New Service</button>
                                </a></li>
                            </ul>
                        </li>
                        <div class="col-1"></div>
                        <div class="col-1"></div>
                        <div class="col-1">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown3" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Contact
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown3">
                                    <li><a class="dropdown-item" href="contact/list_contact.jsp">List Contact</a></li>
                                    <li><a class="dropdown-item" href="contact/add_new_contact.jsp">
                                        <button>Add New Contact</button>
                                    </a></li>
                                </ul>
                            </li>
                        </div>
                    </ul>
                </div>
            </div>
            <div class="col-3">
                <form class="d-flex">
                    <input class="form-control me-2 mt-3 rounded-end  " type="search" placeholder="Search"
                           aria-label="Search"
                           width="100%">
                    <button class="btn btn-outline-success mt-3" type="submit">Search</button>
                </form>
            </div>
            <div class="col-1"></div>
        </nav>
    </div>
</div>
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
