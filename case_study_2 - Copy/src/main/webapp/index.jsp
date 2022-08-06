<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/4/2022
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
    <style>
        #img_bg {
            background-image: url("https://furamavietnam.com/wp-content/uploads/2018/08/BG2.jpg");
            background-position: right bottom;
            background-size: contain;
            background-repeat: no-repeat;
            background-attachment: fixed;
            z-index: 15;
        }
    </style>
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
                                    <li><a class="dropdown-item" href="view/employee/list_employee.jsp">List Employee</a></li>
                                    <li><a class="dropdown-item" href="view/employee/add_new_employee.jsp">
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
                                    <li><a class="dropdown-item" href="view/customer/list_customer.jsp">List</a></li>
                                    <li><a class="dropdown-item" href="view/customer/add_new_customer.jsp">
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
                                <li><a class="dropdown-item" href="view/service/list_service.jsp">List</a></li>
                                <li><a class="dropdown-item" href="view/service/add_new_service.jsp">
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
                                    <li><a class="dropdown-item" href="view/contact/list_contact.jsp">List Contact</a></li>
                                    <li><a class="dropdown-item" href="view/contact/add_new_contact.jsp">
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

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner ">
        <div class="carousel-item active ratio ratio-21x9">
            <img src="https://thodiavn24h.com/wp-content/uploads/2020/05/room-furama-resort-danang.jpg"
                 class="d-block w-100">
        </div>
        <div class="carousel-item ratio ratio-21x9">
            <img src="https://s3-ap-southeast-1.amazonaws.com/viettrip/Products/bdbb3094-7e0f-4c05-8f97-821c5258ff8e/123116_21032019_furama-villas-da-nang-2.jpg"
                 class="d-block w-100">
        </div>
        <div class="carousel-item ratio ratio-21x9">
            <img src="https://thodiavn24h.com/wp-content/uploads/2020/05/4-8.png"
                 class="d-block w-100">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<div>
    <div id="img_bg">
        <div class="row mt-3 ">

            <div class="col-4 m-auto container-fluid text-center ">
                <p class="text-secondary">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG
                    ẨM
                    THỰC
                    TẠI VIỆT NAM.</p>
            </div>
            <div class="col-4">
                <div class="ratio ratio-16x9">
                    <iframe width="180" height="90" src="https://www.youtube.com/embed/52kXeLWVW9k"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-4 mt-auto">
                <p class="text-success">
                    Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn
                    hoá
                    thế
                    giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt
                    thự
                    từ
                    hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền
                    thống
                    của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá nhất tại
                    Việt
                    Nam –
                    vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các
                    nhà
                    lãnh
                    đạo kinh doanh quốc tế.</p>
            </div>
            <div class="col-4">

            </div>
        </div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <p class="mt-3 text-center text-danger">TRẢI NGHIỆM ẨM THỰC & GIẢI TRÍ</p>
                <p class="text-center text-secondary"> Khu nghỉ dưỡng Furama Đà Nẵng là một khu nghỉ dưỡng 5 sao sang
                    trọng,
                    có
                    uy tín và được
                    xem là một trong những biểu tượng của ngành du lịch Việt Nam.
                </p>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col-9">
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <div class="row">
                                <div class="col-6">
                                    <img class="img-fluid"
                                         src="https://furamavietnam.com/wp-content/uploads/2018/07/CULIRARY.jpg"
                                         alt="...">
                                </div>
                                <div class="col-6 mt-5">
                                    <h3>Ẩm Thực</h3>
                                    <p class="text-secondary">Trải nghiệm ẩm thực tại Khu nghỉ có sự pha trộn độc đáo
                                        các
                                        món ăn
                                        truyền thống Việt
                                        Nam với
                                        nhiều những hương vị ẩm thực châu Á, Ý và châu Âu cùng các món bò nhập khẩu
                                        thượng
                                        hạng tại
                                        đa dạng các nhà hàng, quầy bar đẳng cấp được bao quanh bởi một khu vườn nhiệt
                                        đới
                                        hay hướng
                                        mình ra biển, đón những hơi thở mát mẻ thổi về từ biển đông.</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <div class="row">
                                <div class="col-6">
                                    <img class="img-fluid"
                                         src="https://furamavietnam.com/wp-content/uploads/2018/07/RECREATION.jpg"
                                         class="d-block w-100"
                                         alt="...">
                                </div>
                                <div class="col-6 mt-5">
                                    <h3>Giải trí</h3>
                                    <p class="text-secondary">Biến kỳ nghỉ dưỡng năng động hơn bằng cách tham gia các
                                        hoạt
                                        động
                                        thể thao trên nước
                                        từ chèo
                                        thuyền catamaran, lướt ván buồm, chèo thuyền trên biển, lướt vát, đi xe đạp
                                        nước,
                                        trượt
                                        nước, lướt ván, chuối, dù lượn và đa dạng các hoạt động.</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-6">
                                    <img src="https://q-cf.bstatic.com/images/hotel/max1024x768/160/160407105.jpg"
                                         class="d-block w-100" alt="...">
                                </div>
                                <div class="col-6 mt-5">
                                    <h3>Sự Kiện</h3>
                                    <p class="text-secondary">Cung hội nghị Quốc tế International Convention Palace
                                        (ICP)
                                        với
                                        phòng Hội nghị lớn
                                        sức chứa lên tới 1000 khách cùng hơn 10 phòng chức năng phụ trợ quy mô từ 50 đến
                                        300
                                        khách được trang bị cơ sở vật chất, thiết bị hiện đại, là địa điểm lý tưởng dành
                                        cho
                                        các đoàn MICE tổ chức hội nghị, hội thảo và sự kiện..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="row mt-5 bg bg-light">
        <div class="col-2 mt-3"><p class="float-end">Follow this page</p></div>
        <div class="col-9 mt-3">
            <img
                    src="https://c.s-microsoft.com/en-us/CMSImages/facebook-gray.svg?version=0b3295fd-6d09-d5a5-af3b-498b3ad72a95"
                    alt="" width="30px" height="30px">
            <img
                    src="https://c.s-microsoft.com/en-us/CMSImages/twitter-gray.svg?version=9b4af76e-357b-33af-9bf5-7b5dbf882330"
                    alt="" width="30px" height="30px">
            <img
                    src="https://c.s-microsoft.com/en-us/CMSImages/intagram.svg?version=3571ba35-1fde-08f2-8396-dd1969712cd8"
                    alt="" width="30px" height="30px">
            <img
                    src="https://c.s-microsoft.com/en-us/CMSImages/linkedin-black.svg?version=9e943abf-c655-434c-6e60-91aed3e9ea11"
                    alt="" width="30px" height="30px">
        </div>
    </div>
    <div class="row container-fluid ">
        <div class="col-7 mt-3 float-end">
            <h4 class="text-danger">Liên Hệ</h4>
            <p>103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam<br>
                Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666 <br>
                Email: <a href=" reservation@furamavietnam.com * www.furamavietnam.com"></a> <br>
                GDS Codes: Amadeus-GD DADFUR, Galileo/Apollo-GD 16236, <br>
                Sabre-GD 032771, Worldspan- GD DADFU</p>
        </div>
        <div class="col-2"></div>
        <div class="col-3"></div>
    </div>
</footer>
</body>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
