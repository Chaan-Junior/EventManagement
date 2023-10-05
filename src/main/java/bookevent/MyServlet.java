package bookevent;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MyServlet
 */
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 if (request.getParameter("Action").equals("Add Event")) {
		      System.out.println("in");
		      PrintWriter printWriter = response.getWriter();
		      Event event = new Event();
		      EventDao dao = new EventDao();
		      event.setEname(request.getParameter("ename"));
	    	  event.setEdate(request.getParameter("edate"));
	    	  event.setVenue(request.getParameter("venue"));
	    	  event.setGuests(request.getParameter("guests"));
	    	  event.setEfood(request.getParameter("efood"));
	    	  event.setEmeal(request.getParameter("emeal"));
	    	  event.setEqup(request.getParameter("equp"));
		      boolean result = dao.addBookEvent(event);
		      RequestDispatcher dispatcher = request.getRequestDispatcher("bookevent.jsp");
		      dispatcher.include(request, response);
		      printWriter.print("<br><h2>Booked Event Successfully!!</h2>");
		    }
		    if (request.getParameter("Action").equals("Edit")) {
		      PrintWriter printWriter = response.getWriter();
		      Event event = new Event();
		      EventDao dao = new EventDao();
		    event.setId(Integer.parseInt(request.getParameter("id")));
		  	event.setEname(request.getParameter("ename"));
    		event.setEdate(request.getParameter("edate"));
    		event.setVenue(request.getParameter("venue"));
    		event.setGuests(request.getParameter("guests"));
    		event.setEfood(request.getParameter("efood"));
    		event.setEmeal(request.getParameter("emeal"));
    		event.setEqup(request.getParameter("equp"));
		      boolean result = dao.editBookEvent(event);
		      System.out.println(result);
		      RequestDispatcher dispatcher = request.getRequestDispatcher("bookeventlist.jsp");
		      dispatcher.include(request, response);
		      
		    }
		    if (request.getParameter("Action").equals("Delete")) {
		      PrintWriter printWriter = response.getWriter();
		      Event event = new Event();
		      EventDao dao = new EventDao();
		      dao.deleteBookEvent(Integer.parseInt(request.getParameter("id")));
		      RequestDispatcher dispatcher = request.getRequestDispatcher("bookeventlist.jsp");
		      dispatcher.include(request, response);
		    }
	}

}
