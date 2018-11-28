package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.RequestforexchangeBean;
import com.mvc.util.DBConnection;

public class RequestforexchangeDAO {


public String requestforexchange(RequestforexchangeBean requestforexchangebean) {

	//String Firstname = requestforexchangebean.getFirstname();
	String RequestedFrom = requestforexchangebean.getRequestedFrom();
	String Requestedto=requestforexchangebean.getRequestedto();
	String noofperson=requestforexchangebean.getNoofperson();
	String fromdate=requestforexchangebean.getFromdate();
	String todate=requestforexchangebean.getTodate();
	
	System.out.println(RequestedFrom);

	
	Connection con = null;
	PreparedStatement preparedstatement =  null;
	
	
	
	try{
	        
	
	         con=DBConnection.createConnection();
	        
	         String sql ="insert into Requestforexchange (RequestedFrom,Requestedto,noofperson,fromdate,todate ) values (?,?,?,?,?)";
	         preparedstatement = con.prepareStatement(sql);

	         preparedstatement.setString(1, RequestedFrom);
	         preparedstatement.setString(2, Requestedto);
	         preparedstatement.setString(3, noofperson);
	         preparedstatement.setString(4, fromdate);
	         preparedstatement.setString(5, todate);
	         
	         System.out.println(preparedstatement);
	         int i=preparedstatement.executeUpdate();
	        
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
