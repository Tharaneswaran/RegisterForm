package com.anna.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.msc.dbo.Register;

public class RegisterDao {
	
		public int registerRegister(Register register_java) throws ClassNotFoundException
		{
			String Insert_Users_SQl = "INSERT INTO register_java" + 
					"(rollno, first_name, last_name, dob, uname, pwd, cpwd)VALUES"+
					"(?, ?, ?, ?, ?, ?, ?);";
			
			int result = 0;
		
			
			Class.forName("org.postgresql.Driver");
			
			try (Connection connection =  DriverManager.getConnection("jdbc:postgresql://localhost:5432/java","postgres", "tharan1610");
					PreparedStatement objStmt = connection.prepareStatement(Insert_Users_SQl)){
					
					//objStmt = objConnect.prepareStatement(strQuery);
					objStmt.setInt(1, register_java.getStrrollno());
					objStmt.setString(2, register_java.getStrfname());
					objStmt.setString(3, register_java.getStrlname());
					objStmt.setString(4, register_java.getStrDOB());
					objStmt.setString(5, register_java.getStrUname());
					objStmt.setString(6, register_java.getStrPwd());
					objStmt.setString(7, register_java.getStrCPwd());
					
					System.out.println(objStmt);
					
					result = objStmt.executeUpdate();
			}catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
			
		}

}
