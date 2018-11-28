package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.SetupApartmentBean;
import com.mvc.util.DBConnection;

public class editapartment {

public String SetupApt(SetupApartmentBean setupApartmentBean,String query)
	
	{
		 String Addressline1= setupApartmentBean.getAddressline1();
		 String Addressline2=setupApartmentBean.getAddressline2();
		 String city=setupApartmentBean.getCity();
		 String zipcode=setupApartmentBean.getZipcode();
		 String HouseType=setupApartmentBean.getHouseType();
		 String Bathroom=setupApartmentBean.getBathroom();
		 String Bedrooms=setupApartmentBean.getBedrooms();
		 String persons=setupApartmentBean.getPersons();
		 String FromDate=setupApartmentBean.getFromDate();
		 String ToDate=setupApartmentBean.getToDate();
		 String Smoking=setupApartmentBean.getSmoking();
		 String Pets=setupApartmentBean.getPets();
		 String Discription=setupApartmentBean.getDiscription();
		 String password=setupApartmentBean.getPassword();
		Connection con = null;
		
		PreparedStatement preparedstatement =  null;
		
		
		
		try{
		        
		
		         con=DBConnection.createConnection();
                 //UPDATE registered_house SET Addressline1=?,Addressline2=?,City=?,Zipcode=?,HouseType=?,BedRooms=?,Bathroom=?,No_of_Persons=?,FromDate=?,ToDate=?,Smoking=?,pets=?,description=?,password=?,userid=? 
		         //String query ="UPDATE registered_house SET Addressline1=?,Addressline2=?,City=?,Zipcode=?,HouseType=?,BedRooms=?,Bathroom=?,No_of_Persons=?,FromDate=?,ToDate=?,Smoking=?,pets=?,description=?,password=? where userid=1 ";
		        
		              
		         preparedstatement = con.prepareStatement(query);

		         preparedstatement.setString(1,Addressline1 );
		         preparedstatement.setString(2,Addressline2 );
		         preparedstatement.setString(3,city );
		         preparedstatement.setString(4,zipcode );
		         preparedstatement.setString(5,HouseType );
		         preparedstatement.setString(6,Bedrooms );
		         preparedstatement.setString(7,Bathroom );
		         preparedstatement.setString(8,persons );
		         preparedstatement.setString(9,FromDate );
		         preparedstatement.setString(10,ToDate );
		         preparedstatement.setString(11,Smoking );
		         preparedstatement.setString(12,Pets );
		         preparedstatement.setString(13,Discription );
		         preparedstatement.setString(14,password );
		         
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
