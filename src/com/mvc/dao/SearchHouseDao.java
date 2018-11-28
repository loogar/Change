package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mvc.bean.LoginBean;
import com.mvc.bean.SearchHouseBean;
import com.mvc.bean.search;
import com.mvc.util.DBConnection;

public class SearchHouseDao {
	public ResultSet usersearch(search searchhousebean,String sql){
	
	
	String city = searchhousebean.getCity();
	String pets =searchhousebean.getPets();
	String smoking = searchhousebean.getSmoking();
	String housetype = searchhousebean.getHousetype();
	//String Bedrooms = searchhousebean.getBedrooms();
	/*String Bedroom =searchhousebean.getBedroom();
	String localaddress =searchhousebean.getLocaladdress();
	String fromdate = searchhousebean.getFromdate();
	String todate = searchhousebean.getTodate();
	String housesize = searchhousebean.getHousesize();
	*/
	
	Connection con = null;
	Statement statement = null;
	ResultSet rs = null;
	
	PreparedStatement ps =  null;
	
        
	try {
		
		
		con=DBConnection.createConnection();
		statement = con.createStatement();
		
		//resultset = statement.executeQuery("select * from hem_user");
		ps = con.prepareStatement(sql);
		ps.setString(1,city );
		ps.setString(2,pets );
		ps.setString(3,smoking );
		ps.setString(4,housetype );
		//ps.setString(1,Bedrooms );
		System.out.println(ps);
		rs = ps.executeQuery();
		
	}
	catch (SQLException ex)
	{
		ex.printStackTrace();
	}
	
return rs;

	
	
	
}
}
