package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.Imagebean;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class ImagepathsetDAO {
	public String Setimage( Imagebean imagePath,String query) {
		 String Profilepic= imagePath.getProfilepic();
		 String AptImage1= imagePath.getAptImage1();
		 String AptImage2= imagePath.getAptImage2();
		 String AptImage3= imagePath.getAptImage3();
		 String AptImage4= imagePath.getAptImage4();
		 PreparedStatement preparedstatement =  null;
			PreparedStatement ps1 =  null;
			Connection con = null;
			
			
			try{
			        
			
			         con=DBConnection.createConnection();
	                 
			        
			        
			              
			         preparedstatement = con.prepareStatement(query);

			         preparedstatement.setString(1,Profilepic );
			         preparedstatement.setString(2,AptImage1 );
			         preparedstatement.setString(3,AptImage2 );
			         preparedstatement.setString(4,AptImage3 );
			         preparedstatement.setString(5,AptImage4 );
			         
			      //ps1= con.prepareStatement(image);
			         System.out.println(preparedstatement);
			         //System.out.println(ps1);
			         
			         int i=preparedstatement.executeUpdate();
			         //int J=ps1.executeUpdate();
			        
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
