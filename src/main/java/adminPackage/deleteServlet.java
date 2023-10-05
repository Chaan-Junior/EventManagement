package adminPackage;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/adminDelete")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("aID");
        boolean go;

        go = DatabaseUtilization.deleteAdmin(id);

        if (go == true) {
            RequestDispatcher dis = request.getRequestDispatcher("addAdmin.jsp");
            dis.forward(request, response);
        } else {

            List<admin> adminDetails = DatabaseUtilization.getAdminDetails(id);
            request.setAttribute("adminDetails", adminDetails);

            RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
            dis.forward(request, response);
        }
	}

}
