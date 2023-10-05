package userPackage;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class userServletUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("uid");
        String name = request.getParameter("uname");
        String email = request.getParameter("uEmail");
        String phone = request.getParameter("uPhone");
        String username = request.getParameter("uName");
        String password = request.getParameter("uPass");
        
        boolean isSuccess;
        // Passing the values to the updateUser method
        isSuccess = userDBUtil.updateUser(id, name, email, phone, username, password);

        if (isSuccess == true) {

            List<user> userDetails = userDBUtil.getUserDetails(id);
            request.setAttribute("userDetails", userDetails);

            RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
            dis.forward(request, response);
        } else {

            List<user> userDetails = userDBUtil.getUserDetails(id);
            request.setAttribute("userDetails", userDetails);

            RequestDispatcher dis2 = request.getRequestDispatcher("userAccount.jsp");
            dis2.forward(request, response);
        }
    }
}
