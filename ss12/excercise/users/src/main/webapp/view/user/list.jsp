<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/1/2022
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<div class="container-fluid">


    <div class="container">
        <h1 style="text-align: center" class="mt-3">List of user</h1>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
        <div class="container row">
            <div class="col-lg-1"></div>
            <div class="col-lg-3">
                <a class="navbar-brand" href="/user?action=add">Add new user</a></div>
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <form class="d-flex">
                    <input class="form-control me-2 mt-3" type="search" placeholder="Search" aria-label="Search"
                           name="country">
                    <button class="btn btn-outline-success mt-3" type="submit" name="action" value="findByCountry">
                        Search
                    </button>
                </form>
            </div>
        </div>
    </nav>
    <table class="table table-active table-striped mt-3">
        <tr>
            <th>ID</th>
            <th>Name
                <a href="/user?action=sort">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor"
                         class="bi bi-sort-alpha-down" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                              d="M10.082 5.629 9.664 7H8.598l1.789-5.332h1.234L13.402 7h-1.12l-.419-1.371h-1.781zm1.57-.785L11 2.687h-.047l-.652 2.157h1.351z"/>
                        <path d="M12.96 14H9.028v-.691l2.579-3.72v-.054H9.098v-.867h3.785v.691l-2.567 3.72v.054h2.645V14zM4.5 2.5a.5.5 0 0 0-1 0v9.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L4.5 12.293V2.5z"/>
                    </svg>

                </a></th>
            <th>Email</th>
            <th>Country</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${user}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <th><a href="/user?action=update&id=${user.id}">
                    <button type="button" class="btn btn-primary">Update</button>
                </a></th>
                <th>
                    <button  type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal${user.id}">
                        DELETE
                    </button>
                    <!-- The Modal -->
                    <div class="modal" id="myModal${user.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Delete</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn xóa hay không?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
                                    <a class="btn btn-danger" href="/user?action=delete&id=${user.id}">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>

            </tr>
        </c:forEach>
    </table>
</div>
</div>
<script src="view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</body>
</html>
