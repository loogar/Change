package com.controller;

import java.io.DataInputStream;
import java.io.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.zip.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.SetupApartmentBean;
import com.mvc.dao.SetupAptDao;


/**
 * Servlet implementation class Setupapartment
 */
@WebServlet("/Setupapartment")
public class Setupapartment extends HttpServlet {
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
		/*String saveFile="";
		String contentType = request.getContentType();
		if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
		DataInputStream in = new DataInputStream(request.getInputStream());
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		while(totalBytesRead < formDataLength){
		byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
		totalBytesRead += byteRead;
		}
		String file = new String(dataBytes);
		saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
		File ff = new File("C:/Users/abhay/eclipse-workspace/ProjectVivek/WebContent/Pictures"+saveFile);
		FileOutputStream fileOut = new FileOutputStream(ff);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();*/
		
		
	System.out.println("Addressline1 is: " + Addressline1);
		
		
		
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
		SetupAptDao setupdao  =new SetupAptDao();
		
		
		
		String userid = (String) request.getSession(false).getAttribute("userid");
		System.out.println(userid);
		int i=Integer.parseInt(userid);
		//String path=ff.getPath();
		  String apartmentquery ="INSERT INTO registered_house(Addressline1,Addressline2,City,Zipcode,HouseType,BedRooms,Bathroom,No_of_Persons, \r\n" + 
	         		"FromDate,ToDate,Smoking,pets,description,password,userid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+i +")";
		 // String image ="INSERT INTO image_table(Profilepic,AptImage1,AptImage2,AptImage3,AptImage4,userid) values("+path+","+path+","+path+","+path+","+path+","+userid +")";
		  String Apartmentsetup=setupdao.SetupApt(setupApp,apartmentquery);
		if (Apartmentsetup.equals("SUCCESS"))
        {
        	request.getRequestDispatcher("/uploadImg.jsp").forward(request, response);
        }
        else {
        	
        	request.setAttribute("error message", Apartmentsetup);
        	request.getRequestDispatcher("/UserRegistration.html").forward(request, response);
        	
        }
		
	}

	}
