package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.BookingStatus;
import com.mvc.bean.SetupApartmentBean;
import com.mvc.dao.BookingStatusDAO;
import com.mvc.dao.LoginDao;

/**
 * Servlet implementation class Requestconfirmation
 */
@WebServlet("/Requestconfirmation")
public class Requestconfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
			
	        String status  = request.getParameter("status");
	        System.out.println(status);
	        
	        BookingStatus bookingstatus = new BookingStatus();
		
		String userid = (String) request.getSession(false).getAttribute("userid");
		System.out.println("dil"+userid);
		int userID=Integer.parseInt(userid);
		
		String bookingid = (String) request.getSession(false).getAttribute("BookingIDS");
		System.out.println("heart"+bookingid);
		int bookingids=Integer.parseInt(bookingid);
		
		bookingstatus.setStatus(status);
		//bookingstatus.setBookingid(bookingid);
		//bookingstatus.setUserid(userid);
		
		String sql ="INSERT INTO bookingStatus(bookingid,Status,requestedto) values("+bookingids +",'"+status +"',"+userID +")";
		
       // String sql ="INSERT INTO bookingStatus(bookingid,Status,requestto) values("+bookingids +","+status +","+userID +")";
		//String sql ="INSERT INTO bookingStatus(bookingid,Status,requestto) values(?,?,?)";
       //System.out.println(sql);
		
        BookingStatusDAO bookingstatusdao = new BookingStatusDAO();
		
		String result = bookingstatusdao.booking(bookingstatus,sql);
	       HttpSession session = request.getSession();
	        
	        if (result.equals("SUCCESS"))
	        {
	        	request.getRequestDispatcher("/Houseexchangerequest.jsp").forward(request, response);
	        	session.setAttribute("finalstatus", "ACCEPTED");
	        }
	        else {
	        	
	        	request.setAttribute("errormessage", "User is not registered");
	        	request.getRequestDispatcher("/UserRegistration.html").forward(request, response);
	        	
	        }
	        
	        
	        
	        
	        
	       
		
	      }
	}
