package presentation;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mahsa on 04/09/2016.
 */
public class LoanTypeDefinitionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loanTypeName = request.getParameter("loanTypeName");
        String interestRate = request.getParameter("interestRate");
        request.setAttribute("loanTypeName", loanTypeName);
        request.setAttribute("interestRate", interestRate);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("grant_condition.jsp");
        //response.sendRedirect("grant_condition.jsp?loanTypeName="+loanTypeName+"&interestRate="+interestRate);
         requestDispatcher.forward(request, response);
    }
}
