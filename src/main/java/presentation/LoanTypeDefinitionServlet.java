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
       String loanTypeName = request.getParameter("loanTypeName");
       String interestRate = request.getParameter("interestRate");
        response.sendRedirect("grant_condition.jsp");
        //toye web.xml ye ras bere to jsp ? :|
     //   RequestDispatcher requestDispatcher = request.getRequestDispatcher("grant_condition.jsp");
       // requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
