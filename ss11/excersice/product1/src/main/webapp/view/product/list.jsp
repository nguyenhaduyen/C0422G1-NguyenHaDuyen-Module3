<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/29/2022
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Product List</title>
    <%--    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center">List of Product</h1>


<div class="row">
    <nav class="navbar navbar-expand-lg bg-light p-0">
        <div class="col-lg-1"></div>
        <div class="col-lg-4 container-fluid">
            <a class="navbar-brand" href="/product?action=add">Add new product</a>
        </div>
        <div class="col-lg-3"></div>
        <div class="col-lg-4 collapse navbar-collapse" id="navbarSupportedContent">
            <form class="d-flex mt-3" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="name">
                <button class="btn btn-outline-success" type="submit" name="action" value="findByName">Search</button>
            </form>
        </div>
    </nav>
</div>
<table class="table table table-bordered border-primary mt-3">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">Ten san pham</th>
        <th scope="col">Gia san pham</th>
        <th scope="col">Mo ta san pham</th>
        <th scope="col">Noi san xuat</th>
        <th scope="col">Update</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="product" items="${product}" varStatus="status">
        <tr>
            <td>${product.id}</td>
            <td>${product.nameOfProduct}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.madeIn}</td>
            <td>
                <a href="product?action=update&id=${product.id}">
                    <button type="button" class="btn btn-primary">
                        Update
                    </button>
                </a>
            </td>
            <td>

                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal${product.id}">
                    Delete
                </button>
                <div class="modal fade" id="exampleModal${product.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"><h3 class="text-dark">Xác nhận xóa hay
                                    không?</h3></h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-danger text-center">
                                <p>ID:${product.id}</p>
                                <p>Name:${product.nameOfProduct}</p>
                                <p>Price:${product.price}</p>
                                <p>Description${product.description}</p>
                                <p>MadeIn:${product.madeIn}</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <a href="product?action=delete&id=${product.id}">
                                    <button type="button" class="btn btn-danger">Yes</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<%--<script src="/bootstrap/js/bootstrap.js"/>--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
        integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
        crossorigin="anonymous"></script>
</body>


</html>
