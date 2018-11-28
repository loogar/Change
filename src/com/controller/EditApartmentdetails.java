package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.SetupApartmentBean;
import com.mvc.dao.SetupAptDao;
import com.mvc.dao.editapartment;

/**
 * Servlet implementation class EditApartmentdetails
 */
@WebServlet("/EditApartmentdetails")
public class EditApartmentdetails extends HttpServlet {
	

	private static final long serialVersionUID = 1L;    
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Addressline1=request.getParameter("Addressline1");
		String Addressline2=request.getParameter("Addressline2");
		String city=request.getParameter("city");
		String zipcode=request.getParameter("zipcode");
		String HouseType=request.getParameter("HouseType");
		String Bathroom=request.getParameter("Bathroom");
		String Bedrooms=request.getParameter("Bedrooms");
		String persons=request.getParameter("persons");
		String FromDate=request.getParameter("FromDate");
		String ToDate=request.getParameter("ToDate");
		String Smoking=request.getParameter("Smoking");
		String Pets=request.getParameter("Pets");
		String Discription=request.getParameter("Discription");
		String password=request.getParameter("password");
		
		
	/*	System.out.println("Addressline1 is: " + Addressline1);
		*/
		
		
		SetupApartmentBean setupApp=new SetupApartmentBean();
		setupApp.setAddressline1(Addressline1);
		setupApp.setAddressline2(Addressline2);
		setupApp.setBathroom(Bathroom);
		setupApp.setCity(city);
		setupApp.setZipcode(zipcode);
		setupApp.setHouseType(HouseType);
		setupApp.setBathroom(Bathroom);
		setupApp.setBedrooms(Bedrooms);
		setupApp.setPersons(persons);
		setupApp.setFromDate(FromDate);
		setupApp.setToDate(ToDate);
		setupApp.setSmoking(Smoking);
		setupApp.setPets(Pets);
		setupApp.setDiscription(Discription);
		setupApp.setPassword(password);
		editapartment setupdao  =new editapartment();
		
		;
		
		String userid = (String) request.getSession(false).getAttribute("userid");
		System.out.println(userid);
		 String query ="UPDATE registered_house SET Addressline1=?,Addressline2=?,City=?,Zipcode=?,HouseType=?,BedRooms=?,Bathroom=?,No_of_Persons=?,FromDate=?,ToDate=?,Smoking=?,pets=?,description=?,password=? where userid="+userid;
		 String Apartmentsetup=setupdao.SetupApt(setupApp,query);
		if (Apartmentsetup.equals("SUCCESS"))
        {
        	request.getRequestDispatcher("/UserProfile.jsp").forward(request, response);
        }
        else {
        	
        	request.setAttribute("error message", Apartmentsetup);
        	request.getRequestDispatcher("/UserLogin.html").forward(request, response);
        	
        }
		
	}


}
