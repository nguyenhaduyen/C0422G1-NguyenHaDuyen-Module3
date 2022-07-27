import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Task2Servlet", value = "/login")
public class Task2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("resultTask2.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("resultTask2.jsp");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin")&&password.equals("admin")) {
                request.setAttribute("response","welcome" + username + " to website");
        } else {
                request.setAttribute("response","login error");
        }
        requestDispatcher.forward(request,response);
    }
}
