import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BaiTapServlet", value = "/calculate")
public class BaiTapServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result3.jsp");
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result3.jsp");
        String description = request.getParameter("description");
        Double listPrice = Double.parseDouble(request.getParameter("list price"));
        Double discount = Double.parseDouble(request.getParameter("discount"));
        Double discountAmount = listPrice*discount*0.1;
        Double discountPrice = listPrice - discountAmount;
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        requestDispatcher.forward(request,response);
    }
}
