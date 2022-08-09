<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css" />


</head>
<body>


<div class="row text-center mt-3">
    <h3>Trang danh sách các dịch vụ</h3>
</div>
<form class="d-flex w-50 container-fluid" action="/facility" method="get">
    <input class="form-control me-2 mt-3 rounded-end  " type="search"
           aria-label="Search"
           width="100%" hidden name="action" value="search">

    <input class="form-control me-2 mt-3 rounded-end" type="search" placeholder="nhập tên"
           aria-label="Search" type="search" name="name"
           width="100%">

    <input class="form-control me-2 mt-3 rounded-end  " type="search" placeholder="nhập id"
           aria-label="Search" name="id"
           width="100%">

    <button class="btn btn-outline-success mt-3">Search</button>
</form>
<table id="tableStudent" class="table table-striped table-hover mt-3 w-auto m-auto fw-bold" id="tableService">
    <thead class="table-primary">
    <th scope="col">Mã dịch vụ</th>
    <th scope="col">Tên dịch vụ</th>
    <th scope="col">Diện tích</th>
    <th scope="col">Chi phí thuê</th>
    <th scope="col">Số người tối đa</th>
    <th scope="col">Tiêu chuẩn phòng</th>
    <th scope="col">Mô tả tiện nghi khác</th>
    <th scope="col">Diện tích hồ bơi</th>
    <th scope="col">Số tầng</th>
    <th scope="col">Dịch vụ miễn phí đi kèm</th>
    <th scope="col">Tên kiểu thuê</th>
    <th scope="col">Tên loại dịch vụ</th>
    <th scope="col">Delete</th>
    <th scope="col">Update</th>
    </thead>
    <tbody>
    <c:forEach var="facility" items="${facility}">
        <tr>
            <td>${facility.serviceCode}</td>
            <td>${facility.serviceName}</td>
            <td>${facility.area}</td>
            <td>${facility.cost}</td>
            <td>${facility.maxPeople}</td>
            <td>${facility.standardRoom}</td>
            <td>${facility.descriptionOtherConvenience}</td>
            <td>${facility.poolArea}</td>
            <td>${facility.numberOfFloor}</td>
            <td>${facility.facilityFree}</td>
            <c:forEach var="typeRent" items="${typeRent}">
                <c:if test="${typeRent.rentTypeId==facility.rentTypeId}">
                    <td>${typeRent.rentalTypeName}</td>
                </c:if>
            </c:forEach>

            <c:forEach var="typeService" items="${typeService}">
                <c:if test="${typeService.codeTypeService==facility.codeTypeService}">
                    <td>${typeService.serviceTypeName}</td>
                </c:if>
            </c:forEach>

            <td>
                <button onclick="delete1 ('${facility.serviceCode}')" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-trash3"
                         viewBox="0 0 16 16">
                        <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
                    </svg>
                </button>
            </td>
            <td>
                <a href="/facility?action=update&id=${facility.serviceCode}">
                    <button type="button" class="btn btn-primary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd"
                                  d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                        </svg>
                    </button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">DELETE</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="text" name="deleteId" id="deleteId">
                Bạn có muốn xóa dịch vụ này hay không?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                <button type="submit" class="btn btn-primary" id="confirm"></button>
            </div>
        </div>
    </div>
</div>


</body>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

<script>
    function delete1(id) {
        document.getElementById("deleteId").value = id;
        document.getElementById("confirm").innerHTML = '<a class="text-light text-decoration-none" href="/facility?action=delete&id=' + id + '">Yes</a>'
    }
</script>
<script>
    $(document).ready(function() {
        $('#tableStudent').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        } );
    } );
</script>
</html>
