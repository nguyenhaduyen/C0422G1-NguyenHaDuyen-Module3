<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 10:19 AM
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
                                <a class="nav-link active text-light" aria-current="page" href="#">Home</a>
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
<h3 class="text-center mt-3">ADD NEW CUSTOMER</h3>
<form class="w-25 container-fluid shadow" method="post" action="/customer?action=add">
    <div class="mb-3">
        <label class="form-label">Họ tên Khách Hàng</label>
        <input type="text" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="name">
    </div>
    <div class="mb-3">
        <label class="form-label">Ngày Sinh</label>
        <input type="date" class="form-control" aria-describedby="emailHelp" name="date">
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
        <input type="text" class="form-control" aria-describedby="emailHelp" name="cmnd">
    </div>
    <div class="mb-3">
        <label class="form-label">Số Điện Thoại</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="sdt">
    </div>
    <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" class="form-control" aria-describedby="emailHelp" name="email">
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
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>
</form>
</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
