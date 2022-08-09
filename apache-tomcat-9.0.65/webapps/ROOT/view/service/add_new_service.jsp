<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 7:56 PM
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
        <input type="text" class="form-control" aria-describedby="emailHelp" name="serviceName" value="${facility.serviceName}">
        <p class="text-danger">${errors.get('name')}</p>
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
    <p class="text-danger">${errors.get("floor")}</p>
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
