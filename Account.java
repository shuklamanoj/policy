package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Account {
	String user = "root";
	String password="";
	String url="jdbc:mysql://localhost:3306/";
	String dbname="policy";
	String driver="com.mysql.jdbc.Driver";
	Connection con;
	

	public boolean doLogin(String email,String password) throws Exception{
		dbConnect();
		int count = 0;
		String sql="select count(*) as count from user where email = ? AND password =?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet rst = pstmt.executeQuery();
		
		while(rst.next()){
			count = rst.getInt("count"); //1
		}
		dbClose();
		if(count == 0)
			return false;
		else
			return true;
		
	}
	private void dbConnect() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
	    con = DriverManager.getConnection(url+dbname,user,password);
	}
	
	private void dbClose() throws SQLException{
		con.close();
	}
}
