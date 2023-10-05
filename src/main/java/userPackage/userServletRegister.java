package userPackage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class userServletRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // To save the Data which we get from userRegister.jsp --> request.getParameter()
        String name = request.getParameter("rName");
        String email = request.getParameter("rEmail");
        String phone = request.getParameter("rPhone");
        String userName = request.getParameter("rUserName");
        String userPass = request.getParameter("rPassword");

        boolean trueMsg;

        trueMsg = userDBUtil.insertUser(name,email, phone, userName, userPass);

        // To check the return value is true
        if (trueMsg == true) {
            // navigate to another JSP class
            RequestDispatcher rd = request.getRequestDispatcher("successPage.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd2 = request.getRequestDispatcher("unsuccessPage.jsp");
            rd2.forward(request, response);
        }
    }
}
