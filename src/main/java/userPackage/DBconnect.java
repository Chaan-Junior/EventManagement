package userPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/event_management";
	private static String username = "root";
	private static String password = "ABCD@123";
	
	private static Connection con;
	
	//Method
	public static Connection getConnection() {
			
			try {
				// Driver used to connect the Database
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url, username, password);
				
			}catch(Exception e) {
				System.out.println("Databse Connection Failed");
			}
		
			return con;	
		}
}

