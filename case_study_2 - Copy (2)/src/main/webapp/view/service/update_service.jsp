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
        <nav class="navbar navbar-expand-lg navbar-light bg-light p-0 ">
            <div class="col-1"></div>
            <div class="col-1"><img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" width="45px">
            </div>
            <div class="col-6">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <div class="col-1">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <div class="col-2">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Employee
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                    <li><a class="dropdown-item" href="../../employee/list_employee.jsp">List Employee</a></li>
                                    <li><a class="dropdown-item" href="../../employee/add_new_employee.jsp">
                                        <button>Add New Employee</button>
                                    </a></li>
                                </ul>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <div class="col-2">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Customer
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                    <li><a class="dropdown-item" href="../../customer/list_customer.jsp">List</a></li>
                                    <li><a class="dropdown-item" href="../../customer/add_new_customer.jsp">
                                        <button>Add New Customer</button>
                                    </a></li>
                                </ul>
                            </li>
                        </div>
                        <div class="col-1"></div>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="list_service.jsp">List</a></li>
                                <li><a class="dropdown-item" href="add_new_service.jsp">
                                    <button>Add New Service</button>
                                </a></li>
                            </ul>
                        </li>
                        <div class="col-1"></div>
                        <div class="col-1"></div>
                        <div class="col-1">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Contact
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown3">
                                    <li><a class="dropdown-item" href="../../contact/list_contact.jsp">List Contact</a></li>
                                    <li><a class="dropdown-item" href="../../contact/add_new_contact.jsp">
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

<form class="w-25 container-fluid">
    <div class="mb-3">
        <label class="form-label">Chọn dịch vụ</label>
        <select onchange="service()" id="select">
            <option value="villa">Villa</option>
            <option value="house">House</option>
            <option value="room">Room</option>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Diện tích sử dụng</label>
        <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label class="form-label">Chi phí thuê</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label class="form-label">Số lượng người tối đa</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label class="form-label">Kiểu thuê</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s1">
        <label class="form-label">Tiêu chuẩn phòng</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s2">
        <label class="form-label">Số tầng</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s3">
        <label class="form-label">Diện tích hồ bơi</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s4">
        <label class="form-label">Mô tả tiện nghi khác</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" id="s5">
        <label class="form-label">Dịch vụ miễn phí đi kèm</label>
        <input type="email" class="form-control" aria-describedby="emailHelp">
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
    </div>
</form>
</div>
</div>
</div>
</body>
<script>
    function service() {
        let type = document.getElementById("select").value;
        switch (type) {
            case "villa":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "block"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "house":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "room":
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
