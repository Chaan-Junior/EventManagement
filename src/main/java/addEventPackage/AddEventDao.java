package addEventPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddEventDao {
	public boolean addEvent(AddEvent addevent) {
		Connection con = DBConnection.getConn();
		String sql = "INSERT INTO eventform(eventType,venue,hallCapacity,cateringType,mealType,eventFacilities)" +
	    		" VALUES (?,?,?,?,?,?)";
		 int i = 0;
		        try {
		            PreparedStatement ps = con.prepareStatement(sql);
		            
		            ps.setString(1, addevent.getEventType());
		            ps.setString(2, addevent.getVenue());
		            ps.setString(3, addevent.getHallCapacity());
		            ps.setString(4, addevent.getCateringType());
		            ps.setString(5, addevent.getMealType());
		            ps.setString(6, addevent.getEventFacilities());
		             
		            i=ps.executeUpdate();
		            

		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        if (i == 0) {
		            return false;
		          } else {
		            return true;
		          }
		    }	

	public void deleteEvent(int eventID) {
		Connection con = DBConnection.getConn();
		 String sql = "DELETE FROM eventform WHERE eventID=?";
	    try {
	    	
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, eventID);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	  }

	public boolean editEvent(AddEvent addevent) {   
		Connection con = DBConnection.getConn();
		String sql = "UPDATE eventform SET eventType= ?,venue= ?, hallCapacity =?,cateringType =?,mealType =?,eventFacilities =?" +
		        " WHERE eventID=?";
		int i=0;
		try {
			
	        PreparedStatement ps = con.prepareStatement(sql);
	       
	        ps.setString(1, addevent.getEventType());
	        ps.setString(2, addevent.getVenue());
	        ps.setString(3, addevent.getHallCapacity());
	        ps.setString(4, addevent.getCateringType());
	        ps.setString(5, addevent.getMealType());
	        ps.setString(6, addevent.getEventFacilities());
	        ps.setInt(7, addevent.getEventID());
	        i=ps.executeUpdate();            

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		 if (i == 0) {
		      return false;
		    } else {
		      return true;
		    }
	}
}
