package adminPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class adminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle GET requests here if needed
        doPost(request, response); // Call the doPost method to handle logout functionality
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String uName = request.getParameter("aID");
        String uPassword = request.getParameter("aPass");    
        
        HttpSession session = request.getSession();
        
        boolean isTrue;
        //passing the values to the validate method
        isTrue = DatabaseUtilization.validateAdminLogin(session,uName, uPassword);

        if (isTrue == true) {
            List<admin> adminDetails = DatabaseUtilization.getAdminDetails(uName);
            request.setAttribute("adminDetails", adminDetails);

            RequestDispatcher dis = request.getRequestDispatcher("ProfileAdmin.jsp");
            dis.forward(request, response);
        } else {
            out.println("<script type = 'text/javascript'>");
            out.println("alert('Your Username or Password is Incorrect');");
            out.println("location='userLogin.jsp'");
            out.println("</script>");
        }
    }
}
