package controller;
import model.Users;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "update":
                showFormUpdate(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "findByCountry":
                showCountry(request, response);
                break;
            case "sort":
                sort (request,response);
            default:
                showList(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                saveFormAdd(request, response);
                break;
            case "update":
                saveFormUpdate(request, response);
                break;
        }
    }

    private void sort(HttpServletRequest request, HttpServletResponse response) {
        List<Users> usersList = userService.sortByName();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/list.jsp");
        request.setAttribute("user",usersList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.delete(id);
        showList(request,response);
    }


    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Users users = userService.findById(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/edit.jsp");
        request.setAttribute("user", users);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCountry(HttpServletRequest request, HttpServletResponse response) {
        String country = request.getParameter("country");
        List<Users> usersList = userService.findByCountry(country);
        RequestDispatcher requestDispatcher;
        if (usersList == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("user", usersList);
            requestDispatcher = request.getRequestDispatcher("view/user/list.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        Users users = new Users(id, name, email, country);
        userService.edit(users);
        showList(request, response);

    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Users> usersList = userService.findAll();
        request.setAttribute("user", usersList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveFormAdd(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        Users users = new Users(name, email, country);
        userService.add(users);
        showList(request, response);
    }
}
