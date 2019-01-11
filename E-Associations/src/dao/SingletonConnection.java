package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class SingletonConnection {
	private static Connection connection;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-association","root","");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Killer hell Killer");
		}
	}
	public static Connection getConnection() {
		return connection;
	}
	
	 
}
