package userPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpSession;

public class userDBUtil {
	
	private static boolean successMsg;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null; 

	public static boolean validate(HttpSession session, String userLoginName, String userLoginPassword) {
		
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from user where userLoginName='"+userLoginName+"' and userLoginPassword='"+userLoginPassword+"' ";
			rs = st.executeQuery(sql);
			
			
			if(rs.next()) {
                session.setAttribute("userLoginName", userLoginName);
                session.setAttribute("userLoginPassword", userLoginPassword);
				successMsg = true;
			}else {
				successMsg = false;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return successMsg;
	}
	
	// Generic we create --> 'user' instead of String, int etc.
	public static List<user> getUser(String userName){
		ArrayList<user> user = new ArrayList<>();
		
		try {
			// 1st Check whether the Database connects Successfully(Calling getConnection in DBconnect.java)
			con = DBconnect.getConnection();
			st = con.createStatement();
			// 2nd If connection succes execute the SQL query
			String sql = "select * from user where userLoginName='"+userName+"' ";
			rs = st.executeQuery(sql);
			// 3rd Assign the values for the Variables in user.java
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uName = rs.getString(5);
				String uPass = rs.getString(6);
			// 4th Create an object of user and Pass the values (Constructor)
				user u1 = new user(id, name, email, phone, uName, uPass);
				user.add(u1);
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return user; 
	}
	
	
	
	
	// Insert data into Database & To get the values from the userServletRegister to assign variables
	public static boolean insertUser(String name, String email, String phone, String username, String pass) {
		boolean successMsg = false;

		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "insert into user values(0,'"+name+"', '"+email+"', '"+phone+"','"+username+"','"+pass+"')";
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				successMsg = true;
			}else
				successMsg = false;
			
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return successMsg;
	}
	
	public static boolean updateUser(String id, String name, String email, String phone, String username, String password) {
		
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "update user set userName='"+name+"', userEmail='"+email+"', userPhone='"+phone+"', userLoginName='"+username+"',"
					+ "userLoginPassword='"+password+"' where userID='"+id+"'";
			
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				successMsg = true;
			}else {
				successMsg = false;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		return successMsg;
	}
	
	public static List<user> getUserDetails(String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<user> user = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from user where userID='"+convertedID+"' ";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uName = rs.getString(5);
				String uPass = rs.getString(6);
				
				user us = new user(id, name, email, phone, uName, uPass);
				user.add(us);
			}
			
		}catch(Exception e){
			e.getStackTrace();
		}
		
		return user;
	}
	
	public static boolean deleteUser(String id) {
		
		int convID = Integer.parseInt(id);
		
		try {
			
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "delete from user where userID='"+convID+"' ";
			int rs = st.executeUpdate(sql);
			
			if(rs > 0) {
				successMsg = true;
			}else {
				successMsg = false;
			}
			
			}catch(Exception e) {
			e.printStackTrace();
		}
		
		return successMsg;
	}
	
}
