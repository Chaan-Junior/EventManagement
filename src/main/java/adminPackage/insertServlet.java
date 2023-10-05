package adminPackage;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/addAdmin")
public class insertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("aName");
        String role = request.getParameter("aRole");
        String userName = request.getParameter("aUserName");
        String password = request.getParameter("aPassword");

        boolean message;

        message = DatabaseUtilization.insertAdminDetails(name,role,userName, password);

        // To check the return value is true
        if (message == true) {
            // navigate to another JSP class
            RequestDispatcher rd = request.getRequestDispatcher("loginAdmin.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd2 = request.getRequestDispatcher("unsuccessPage.jsp");
            rd2.forward(request, response);
	}

  }
}
