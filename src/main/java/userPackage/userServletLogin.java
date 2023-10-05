package userPackage;

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

@WebServlet("/login")
public class userServletLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String userLoginName = request.getParameter("uID");
        String userLoginPassword = request.getParameter("uPassword");    
        
        HttpSession session = request.getSession();
        
        boolean isTrue;
        //passing the values to the validate method
        isTrue = userDBUtil.validate(session,userLoginName, userLoginPassword);

        if (isTrue == true) {
            List<user> userDetails = userDBUtil.getUser(userLoginName);
            request.setAttribute("userDetails", userDetails);

            RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
            dis.forward(request, response);
        } else {
            out.println("<script type = 'text/javascript'>");
            out.println("alert('Your Username or Password is Incorrect');");
            out.println("location='userLogin.jsp'");
            out.println("</script>");
        }
    }
}
