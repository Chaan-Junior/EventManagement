package bookevent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class EventDao {


public boolean addBookEvent(Event event) {
	Connection con = DBconnection.getConn();
	String sql = "INSERT INTO eventbooking(ename,edate,venue,guests,efood,emeal,equp)" +
    		" VALUES (?,?,?,?,?,?,?)";
	 int i = 0;
	        try {
	            PreparedStatement ps = con.prepareStatement(sql);
	            
	            ps.setString(1, event.getEname());
	            ps.setString(2, event.getEdate());
	            ps.setString(3, event.getVenue());
	            ps.setString(4, event.getGuests());
	            ps.setString(5, event.getEfood());
	            ps.setString(6, event.getEmeal());
	            ps.setString(7, event.getEqup());
	             
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

public void deleteBookEvent(int id) {
	Connection con = DBconnection.getConn();
	 String sql = "DELETE FROM eventbooking WHERE id=?";
    try {
    	
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace();
    }
  }

public boolean editBookEvent(Event event) {   
	Connection con = DBconnection.getConn();
	String sql = "UPDATE eventbooking SET ename= ?,edate= ?, venue =?,guests =?,efood =?,emeal =?,equp =?" +
	        " WHERE id=?";
	int i=0;
	try {
		
        PreparedStatement ps = con.prepareStatement(sql);
       
        ps.setString(1, event.getEname());
        ps.setString(2, event.getEdate());
        ps.setString(3, event.getVenue());
        ps.setString(4, event.getGuests());
        ps.setString(5, event.getEfood());
        ps.setString(6, event.getEmeal());
        ps.setString(7, event.getEqup());
        ps.setInt(8, event.getId());
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
	    
