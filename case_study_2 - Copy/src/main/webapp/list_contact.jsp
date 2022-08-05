<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/5/2022
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<h3>Trang danh sách khách hàng</h3></div>
<table class="table table-striped table-hover mt-3 w-75 m-auto">
    <thead class="table-primary">
    <th scope="col">#</th>
    <th scope="col">Dịch Vụ</th>
    <th scope="col">Khách Hàng</th>
    <th scope="col">Ngày Bắt Đầu</th>
    <th scope="col">Ngày Kết Thúc</th>
    <th>Tiền đặt cọc</th>
    <th scope="col">Tổng Tiền</th>
    <th scope="col">Các Dịch Vụ Đi Kèm</th>
    </thead>
    <tr>
        <td>1</td>
        <td>Room Twin 01</td>
        <td>Nguyễn Thị Hào</td>
        <td>8/12/2020</td>
        <td>8/12/2020</td>
        <td>0</td>
        <td>1000000</td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
               +
            </button>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Danh sách các dịch vụ đi kèm
            </button>
        </td>
    </tr>
    <tbody>
</table>


<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Thêm mới hợp đồng chi tiết</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mã Hợp Đồng Chi Tiết
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </label>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail2" class="form-label">Số Lượng</label>
                        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail3" class="form-label">Mã Hợp Đồng</label>
                        <input type="email" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail4" class="form-label">Mã Dịch Vụ</label>
                        <input type="email" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Understood</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Danh sách dịch vụ đi kèm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-hover mt-3 w-75 m-auto">
                    <thead class="table-primary">
                    <th scope="col">Mã dịch vụ đi kèm</th>
                    <th scope="col">Tên dịch vụ đi kèm</th>
                    <th scope="col">Gía</th>
                    <th scope="col">Đơn vị</th>
                    <th scope="col">Trạng thái</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Karaoke</td>
                        <td>1000</td>
                        <td>giờ</td>
                        <td>Tiện nghi, hiện đại</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Thuê xe máy</td>
                        <td>1000</td>
                        <td>chiếc</td>
                        <td>Hỏng 1 xe</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Thuê xe đạp</td>
                        <td>2000</td>
                        <td>chiếc</td>
                        <td>Tốt</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>