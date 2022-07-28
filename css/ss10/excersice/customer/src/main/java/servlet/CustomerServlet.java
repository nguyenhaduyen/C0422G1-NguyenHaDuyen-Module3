package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Mai Văn Hoàn", LocalDate.parse("1983-08-20"), "Hà Nội", "https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cute.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam", LocalDate.parse("1983-08-21"), "Bắc Giang", "https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cute.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hòa", LocalDate.parse("1983-08-22"), "Nam Định", "https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cute.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa", LocalDate.parse("1983-08-17"), "Hà Tây", "https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cute.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi", LocalDate.parse("1983-08-19"), "Hà Tây", "https://blogphanmem.vn/wp-content/uploads/2021/12/Cute-pho-mai-que-8.jpeg"));

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
