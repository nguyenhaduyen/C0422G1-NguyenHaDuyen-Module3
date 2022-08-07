<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 7:56 PM
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
<h3 class="text-center mt-3">Add New Service</h3>
<form class="w-25 container-fluid mt-3 shadow" method="post" >
    <div class="mb-3">
        <label class="form-label mt-3">Chọn dịch vụ</label>
        <select onchange="serviceInput()" id="select" name="service">
            <option value="none">None</option>
            <option value="1">Villa</option>
            <option value="2">House</option>
            <option value="3">Room</option>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Tên dịch vụ</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="serviceName">
    </div>
    <div class="mb-3">
        <label class="form-label">Diện tích sử dụng</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="area">
    </div>
    <div class="mb-3">
        <label class="form-label">Chi phí thuê</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="cost">
    </div>
    <div class="mb-3">
        <label class="form-label">Số lượng người tối đa</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="people">
    </div>
    <div class="mb-3" id="s1" style="display: none ">
        <label class="form-label">Tiêu chuẩn phòng</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="standard" value="null">
    </div>
    <div class="mb-3" id="s4" style="display: none ">
        <label class="form-label">Mô tả tiện nghi khác</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="other" value="null">
    </div>
    <div class="mb-3" id="s3" style="display: none ">
        <label class="form-label">Diện tích hồ bơi</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="pool" value="0">
    </div>
    <div class="mb-3" id="s2" style="display: none ">
        <label class="form-label">Số tầng</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="floor" value="0">
    </div>
    <div class="mb-3" id="s5" style="display: none ">
        <label class="form-label">Dịch vụ miễn phí đi kèm</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="serviceFree" value="null">
    </div>
    <div class="mb-3">
        <label class="form-label">Kiểu thuê</label>
        <select name="typeRent">
            <option value="1">year</option>
            <option value="2">month</option>
            <option value="3">day</option>
            <option value="4">hour</option>
        </select>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>

</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>


<script>
    function serviceInput() {
        let type = document.getElementById("select").value;
        console.log(type)
        switch (type) {
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
            default:
                document.getElementById("s1").style.display = "none"
                document.getElementById("s2").style.display = "none"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "none"
                document.getElementById("s5").style.display = "none"
        }
    }
</script>
</html>
