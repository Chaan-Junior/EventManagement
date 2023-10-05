package adminPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpSession;
import userPackage.DBconnect;


public class DatabaseUtilization {

	private static boolean message;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean validateAdminLogin(HttpSession session, String uName, String uPassword) {
		
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from admin where userName='"+uName+"' and password='"+uPassword+"' ";
			rs = st.executeQuery(sql);
			
			
			if(rs.next()) {
				// User credentials are valid, create a session and store user information
                session.setAttribute("userLoginName", uName);
                session.setAttribute("userLoginPassword", uPassword);
				message = true;
			}else {
				message = false;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return message;
	}
	
	public static List<admin> getAdminDetails(String adminName){
		ArrayList<admin> admin = new ArrayList<>();
		
		try {
			
			con = DatabaseConnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from admin where userName='"+adminName+"' ";
			rs = st.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String role = rs.getString(3);
				String uname = rs.getString(4);
				String uPass = rs.getString(5);
			
				admin ad = new admin(id, name, role, uname, uPass);
				admin.add(ad);
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return admin; 
	}
	
	public static boolean insertAdminDetails(String name, String role, String uName, String uPass) {
		boolean message = false;

		try {
			con = DatabaseConnect.getConnection();
			st = con.createStatement();
			
			String sql = "insert into admin values(0,'"+name+"', '"+role+"', '"+uName+"','"+uPass+"')";
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				message = true;
			}else
				message = false;
			
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return message;
	}
	
	public static boolean updateAdminDetails(String id, String name, String role, String userName, String password) {
		
		try {
			con = DatabaseConnect.getConnection();
			st = con.createStatement();
			
			String sql = "update admin set adminName='"+name+"', adminRole='"+role+"', userName='"+userName+"', "

					+ "password='"+password+"' where adminID='"+id+"'";
			
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				message = true;
			}else {
				message = false;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return message;
	}
	
	public static List<admin> getAllAdminDetails(String Id){
		int conID = Integer.parseInt(Id);
		
		ArrayList<admin> admin = new ArrayList<>();
		
		try {
			
			con = DatabaseConnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from admin where adminID='"+conID+"' ";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String role = rs.getString(3);
				String userName = rs.getString(4);
				String password = rs.getString(5);
				
				admin ad = new admin(id, name, role, userName, password);
				admin.add(ad);
			}
			
		}catch(Exception e){
			e.getStackTrace();
		}
		
		return admin;
	}
	
public static boolean deleteAdmin(String id) {
		
		int conID = Integer.parseInt(id);
		
		try {
			
			con = DatabaseConnect.getConnection();
			st = con.createStatement();
			
			String sql = "delete from admin where adminID='"+conID+"' ";
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				message = true;
			}else {
				message = false;
			}
			
			}catch(Exception e) {
			e.printStackTrace();
		}
		
		return message;
	}
}




