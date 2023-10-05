package userPackage;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class userServletDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("uid");
        boolean isTrue;

        isTrue = userDBUtil.deleteUser(id);

        if (isTrue == true) {
        	HttpSession session = request.getSession();
            session.invalidate();
        	
            RequestDispatcher dis = request.getRequestDispatcher("demo.jsp");
            dis.forward(request, response);
        } else {

            List<user> userDetails = userDBUtil.getUserDetails(id);
            request.setAttribute("userDetails", userDetails);

            RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
            dis.forward(request, response);
        }
    }
}
