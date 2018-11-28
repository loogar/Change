package com.mvc.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.EditRegisterBean;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class RegisterDao 
{
	
	public String registerUser(RegisterBean registerBean)
	
	{
		String Firstname = registerBean.getFirstname();
		String Lastname = registerBean.getLastname();
		String email = registerBean.getEmail();
		String password = registerBean.getPassword();
		String address = registerBean.getAddress();
		
		Connection con = null;
		
		PreparedStatement preparedstatement =  null;
		
		
		
		try{
		        
		
		         con=DBConnection.createConnection();
		                    
		         String query ="insert into hem_user(Firstname,Lastname,email,password,address) values(?,?,?,?,?)";
		         preparedstatement = con.prepareStatement(query);

		         preparedstatement.setString(1, Firstname);
		         preparedstatement.setString(2, Lastname);
		         preparedstatement.setString(3, email);
		         preparedstatement.setString(4, password);
		         preparedstatement.setString(5, address);
		         
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
	
	public static int UpdateUser(EditRegisterBean editregisterBean, String sql)
	{
		
		int i = 0;
		Connection con = DBConnection.createConnection();
		
		     try {
		    	 PreparedStatement preparedstatement= con.prepareStatement(sql);
		    	 preparedstatement.setString(1, editregisterBean.getFirstname());
				 preparedstatement.setString(2, editregisterBean.getLastname());
		         preparedstatement.setString(3, editregisterBean.getEmail());
		         preparedstatement.setString(4, editregisterBean.getPassword());
		         preparedstatement.setString(5, editregisterBean.getAddress());
		         preparedstatement.setString(6, editregisterBean.getEmail());	         
		         
		         i = preparedstatement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         
		return i;
		
		
	}
	

}
