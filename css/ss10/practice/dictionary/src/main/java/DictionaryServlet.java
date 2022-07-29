import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static java.lang.System.out;

@WebServlet(name = "DictionaryServlet", value = "/dictionary")
public class DictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        Map<String, String> list = new HashMap<>();
        list.put("ant", "con kiến");
        list.put("elephant", "con voi");
        list.put("tiger", "con hổ");
        list.put("cow", "con bò");
        list.put("mouse", "con chuột");
        String word = request.getParameter("word");
        String result = list.get(word);
        if (request != null) {
            request.setAttribute("result", result);
        } else {
           request.setAttribute("result","Not found");
        }
        requestDispatcher.forward(request,response);
    }
}

