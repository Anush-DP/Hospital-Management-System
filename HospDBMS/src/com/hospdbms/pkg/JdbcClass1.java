package com.hospdbms.pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcClass1 {

	public static void main(String[] args) {
		// url of the database
		String url="jdbc:mysql://localhost:3306/hospital_database";
try {
	//establish connection object
	Connection conn=DriverManager.getConnection(url,"root","1234");
	
	//create statement object to send to the database
	Statement stmnt = conn.createStatement();
	
	//execute the stmnt object
	stmnt.executeQuery(query);
	
} 

catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


	}

}
