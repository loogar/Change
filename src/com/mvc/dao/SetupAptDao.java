package com.mvc.dao;

import java.sql.*;


import com.mvc.bean.SetupApartmentBean;
import com.mvc.util.DBConnection;

public class SetupAptDao {

public String SetupApt(SetupApartmentBean setupApartmentBean,String apartmentquery)
	
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
			//String userid = (String) request.getSession(false).getAttribute("userid");
		System.out.println(Addressline1);
		Connection con = null;
		
		PreparedStatement preparedstatement =  null;
		PreparedStatement ps1 =  null;
		
		
		
		try{
		        
		
		         con=DBConnection.createConnection();
                 
		         String query ="INSERT INTO registered_house(Addressline1,Addressline2,City,Zipcode,HouseType,BedRooms,Bathroom,No_of_Persons, \r\n" + 
		         		"FromDate,ToDate,Smoking,pets,description,password) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		        
		              
		         preparedstatement = con.prepareStatement(apartmentquery);

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
