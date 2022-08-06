package customer.controller;

import customer.model.Customer;
import customer.model.TypeCustomer;
import customer.service.ICustomerService;
import customer.service.ITypeCustomerService;
import customer.service.impl.CustomerService;
import customer.service.impl.TypeCustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    ICustomerService customerService = new CustomerService();
    ITypeCustomerService typeCustomerService = new TypeCustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
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
                delete (request,response);
                break;
            default:
                showListCustomer(request, response);
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
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

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.delete(id);
        showListCustomer(request,response);
    }

    private void saveFormAdd(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("date");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String identify = request.getParameter("cmnd");
        String phoneNumber = request.getParameter("sdt");
        String email = request.getParameter("email");
        String address = request.getParameter("dc");
        int typeCustomer = Integer.parseInt(request.getParameter("typeCustomer"));
        customerService.add(new Customer(name, dateOfBirth, gender, identify, phoneNumber, email, address, typeCustomer));
        showListCustomer(request, response);
    }


    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.findAll();
        List<TypeCustomer> typeCustomerList = typeCustomerService.findAll();
        request.setAttribute("customer", customerList);
        request.setAttribute("typeCustomer", typeCustomerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list_customer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findById(id);
        List<TypeCustomer> typeCustomer = typeCustomerService.findAll();
        request.setAttribute("customer", customer);
        request.setAttribute("typeCustomer",typeCustomer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/update_customer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int customerCode = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("date");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String identify = request.getParameter("cmnd");
        String phoneNumber = request.getParameter("sdt");
        String email = request.getParameter("email");
        String address = request.getParameter("dc");
        int typeCustomer = Integer.parseInt(request.getParameter("typeCustomer"));
        customerService.update(new Customer(customerCode, name, dateOfBirth, gender, identify, phoneNumber, email, address, typeCustomer));
        showListCustomer(request, response);
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/add_new_customer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
