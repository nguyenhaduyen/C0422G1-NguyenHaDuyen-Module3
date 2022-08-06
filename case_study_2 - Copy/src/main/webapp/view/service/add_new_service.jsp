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
        <nav class="navbar navbar-expand-lg navbar-light bg-light p-0 ">
            <div class="col-1"></div>
            <div class="col-1"><img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" width="45px">
            </div>
            <div class="col-1">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <a class="nav-link active" aria-current="page" href="../../index.jsp">Home</a>
                </div>
            </div>
            <div class="col-4">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal">
                    Add New Service
                </button>
            </div>
            <div class="col-3">
                <form class="d-flex">
                    <input class="form-control me-2 mt-3 rounded-end " type="search" placeholder="Search"
                           aria-label="Search"
                           width="100%">
                    <button class="btn btn-outline-success mt-3" type="submit">Search</button>
                </form>
            </div>
            <div class="col-2"></div>
        </nav>
    </div>
</div>
<div class="col-3"></div>
<div class="col-1"></div>
</nav>
</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Chọn dịch vụ muốn add</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <select onchange="service()" id="select">
                    <option value="villa">Villa</option>
                    <option value="house">House</option>
                    <option value="room">Room</option>
                </select>
            </div>

            <form class="w-75 container-fluid">
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Close
                    </button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>


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
</html>
