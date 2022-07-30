import model.Calculate;
import model.Calculate;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/calculate/calculate.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/calculate/calculate.jsp");
        Double firstOperand = Double.parseDouble(request.getParameter("First Operand"));
        Double secondOperand = Double.parseDouble(request.getParameter("Second Operand"));
        String operate = request.getParameter("calculate");
        double result=0;
        try {
            result = Calculate.calculate1(firstOperand,secondOperand,operate);
        } catch (ArithmeticException e) {
            e.printStackTrace();
        }
        request.setAttribute("result",result);
        requestDispatcher.forward(request,response);


    }
}
