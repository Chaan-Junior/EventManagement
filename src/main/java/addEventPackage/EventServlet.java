package addEventPackage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class EventServlet
 */
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("Action").equals("Add Event")) {
		      System.out.println("in");
		      PrintWriter printWriter = response.getWriter();
		      AddEvent addevent = new AddEvent();
		      AddEventDao dao = new AddEventDao();
		      addevent.setEventType(request.getParameter("eventType"));
		      addevent.setVenue(request.getParameter("venue"));
		      addevent.setHallCapacity(request.getParameter("hallCapacity"));
		      addevent.setCateringType(request.getParameter("cateringType"));
		      addevent.setMealType(request.getParameter("mealType"));
		      addevent.setEventFacilities(request.getParameter("eventFacilities"));
		      boolean result = dao.addEvent(addevent);
		      RequestDispatcher dispatcher = request.getRequestDispatcher("addevent.jsp");
		      dispatcher.include(request, response);
		
		    }
		    if (request.getParameter("Action").equals("Edit")) {
		      PrintWriter printWriter = response.getWriter();
		      AddEvent addevent = new AddEvent();
		      AddEventDao dao = new AddEventDao();
		      addevent.setEventID(Integer.parseInt(request.getParameter("eventID")));
		      addevent.setEventType(request.getParameter("eventType"));
		      addevent.setVenue(request.getParameter("venue"));
		      addevent.setHallCapacity(request.getParameter("hallCapacity"));
		      addevent.setCateringType(request.getParameter("cateringType"));
		      addevent.setMealType(request.getParameter("mealType"));
		      addevent.setEventFacilities(request.getParameter("eventFacilities"));
		      boolean result = dao.editEvent(addevent);
		      System.out.println(result);
		      RequestDispatcher dispatcher = request.getRequestDispatcher("eventlist.jsp");
		      dispatcher.include(request, response);
		      
		    }
		    if (request.getParameter("Action").equals("Delete")) {
		      PrintWriter printWriter = response.getWriter();
		      AddEvent addevent = new AddEvent();
		      AddEventDao dao = new AddEventDao();
		      dao.deleteEvent(Integer.parseInt(request.getParameter("eventID")));
		      RequestDispatcher dispatcher = request.getRequestDispatcher("eventlist.jsp");
		      dispatcher.include(request, response);
		    }
	}

}
