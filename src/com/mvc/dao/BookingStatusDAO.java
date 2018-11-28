package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mvc.bean.BookingStatus;
import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;

public class BookingStatusDAO {
	
public String booking(BookingStatus bookingstatus,String sql){
		
	String bookingstat = bookingstatus.getStatus();
	System.out.println(bookingstat);
	String userid=(bookingstatus.getUserid());
	System.out.println(userid);
	String bookingid =(bookingstatus.getBookingid());
	System.out.println(userid);
		try{
		Connection con = null;
		Statement statement = null;
		ResultSet rs = null;
		con=DBConnection.createConnection();
		//String sql ="INSERT INTO bookingStatus(bookingid,Status,requestedto) values(?,?,?)";
		System.out.println(sql);
		PreparedStatement ps =  null;
		
	     ps = con.prepareStatement(sql);
         System.out.println(ps);
         //ps.setString(1, bookingstat);
        // ps.setString(2, userid);
        // ps.setString(3, bookingid);
         
         int i=ps.executeUpdate();
        
          if(i>0)
          {
            return "SUCCESS";
          }
        
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }
return "Ops error occured";

}
	
		
		
		
	}

