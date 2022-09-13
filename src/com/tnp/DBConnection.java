package com.tnp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public Connection getConnection() 
	{
		Connection com =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 com=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/tnp_project","root","rootwdp");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return com;
		
		
		
	}

}
