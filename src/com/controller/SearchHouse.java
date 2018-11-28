package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.SearchHouseBean;
import com.mvc.bean.search;
import com.mvc.dao.SearchHouseDao;

/**
 * Servlet implementation class SearchHouse
 */
@WebServlet("/SearchHouse")
public class SearchHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchHouse() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String city=request.getParameter("city");
		System.out.println("city selected: " + city);
		Integer bedroom = Integer.parseInt(request.getParameter("bedrooms"));
		System.out.println("city selected: " + bedroom);
		String Pets=request.getParameter("Pets");
		String Smoking=request.getParameter("smoking");
		String housetype=request.getParameter("housetype");
		String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		/*String numberofbedroom = request.getParameter("Bedroom");
		System.out.println("number of bedroom: " + numberofbedroom);
		
		String localaddress=request.getParameter("localaddress");
		System.out.println("local address: " + localaddress);
		
		
		String fromdate=request.getParameter("fromdate");
		System.out.println("From Date: " + fromdate);
		
		//try {
			//Date date = new SimpleDateFormat("yyyy-MM-dd").parse(fromdate);
		//} catch (ParseException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			
	//	}
		
		//preparedStatement.setDate(index, new java.sql.Date(fromdate.getTime()));
		
		String todate=request.getParameter("todate");
		System.out.println("to Date: " + todate);
		
		//try {
			//Date date = new SimpleDateFormat("yyyy-MM-dd").parse(todate);
		//} catch (ParseException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			
	//	}
		
		//preparedStatement.setDate(index, new java.sql.Date(todate.getTime()));
		
		String housesize = request.getParameter("housesize");
		System.out.println("house size is: " + housesize);
		

		String pets = request.getParameter("pets");
		System.out.println("pets: " + pets);

		String smoking = request.getParameter("smoking");
		System.out.println("smoking: " + smoking);

		String housetype = request.getParameter("housetype");
		System.out.println("house type is: " + housetype);
		
		SearchHouseBean searchhousebean = new SearchHouseBean();

		searchhousebean.setCountry(country);
		searchhousebean.setBedroom(numberofbedroom);
		searchhousebean.setLocaladdress(localaddress);
		searchhousebean.setFromdate(fromdate);
		searchhousebean.setTodate(todate);
		searchhousebean.setHousesize(housesize);
		searchhousebean.setPets(pets);
		searchhousebean.setSmoking(smoking);
		searchhousebean.setHousetype(housetype);*/
		SearchHouseDao searchhousedao = new SearchHouseDao();
		search searchhousebean = new search();
		searchhousebean.setCity(city);
		searchhousebean.setPets(Pets);
		searchhousebean.setSmoking(Smoking);
		searchhousebean.setHousetype(housetype);
		
		String sql = "select * from hem_user h, registered_house r where r.city=? and r.BedRooms='"+ bedroom +"' and pets=? and Smoking=? and HouseType=? and h.userid = r.userid";
		//String sql = "select * from Registered_house where city=?";
	   ResultSet rs = searchhousedao.usersearch(searchhousebean, sql);
	   HttpSession session = request.getSession();
		
		try
		{
			if(rs.next())
		{
			session.setAttribute("Userid", rs.getString(1));
			session.setAttribute("Firstname", rs.getString(2));
			session.setAttribute("Lastname", rs.getString(3));
			session.setAttribute("emailid", rs.getString(4));
			session.setAttribute("password", rs.getString(5));
			session.setAttribute("address", rs.getString(6));
			session.setAttribute("Addressline1", rs.getString(7));
			session.setAttribute("Addressline2", rs.getString(8));
			session.setAttribute("Cityh", rs.getString(10));
			session.setAttribute("Zipcode", rs.getString(10));
			session.setAttribute("HouseTypeh", rs.getString(12));
			session.setAttribute("Bedroooms", rs.getString(12));
			session.setAttribute("Bathrooms", rs.getString(13));
			session.setAttribute("No of Person", rs.getString(14));
			session.setAttribute("Fromdate", rs.getString(16));
			session.setAttribute("Todate", rs.getString(17));
			session.setAttribute("smoking", rs.getString(17));
			session.setAttribute("pets", rs.getString(1));
			session.setAttribute("description", rs.getString(19));
			session.setAttribute("password", rs.getString(20));
			session.setAttribute("Useridhouse", rs.getString(21));
		//	session.setAttribute("status", rs.getString(21));
			//session.setAttribute("houseid", rs.getString(22));
			
			/*System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			System.out.println(rs.getString(5));
			System.out.println(rs.getString(6));
			System.out.println(rs.getString(7));
			System.out.println(rs.getString(8));
			System.out.println(rs.getString(9));
			System.out.println(rs.getString(10));
			System.out.println(rs.getString(11));
			System.out.println(rs.getString(12));
			System.out.println(rs.getString(13));
			System.out.println(rs.getString(14));
			System.out.println(rs.getString(15));
			System.out.println(rs.getString(16));
			System.out.println(rs.getString(17));
			System.out.println(rs.getString(18));
			System.out.println(rs.getString(19));
			System.out.println(rs.getString(20));
			String id = rs.getString(1);*/
			
			
	        	getServletContext().getRequestDispatcher("/BookingResult.jsp").forward(request, response);

	        	
			}
				
			else
			{
				//request.getRequestDispatcher("/UserLogin.html").forward(request, response);

	        	getServletContext().getRequestDispatcher("/UserLogin.html").forward(request, response);
	        	
			}
			
		}
	
	catch (SQLException ex)
	{
		ex.printStackTrace();
	}

	
	
	
	/* if (userValidate.equals("SUCCESS"))
       { 
		    out.println("<script src ='https://cdnjs.cloudflare.com/ajax/libs/limonte-swwtalert2/6.11.4/sweetalert2.all.js'></script>");
		    out.println("<script src = 'https://ajax.googleapis.com/ajax/jquery/3.2.1/jquery.min.js'></script>");
		    out.println("<script>");
		    out.println("$(document).ready(successfullps','success')");
		    out.println("});");
		    out.println("</script>");
		    
	       HttpSession session=request.getSession();  
	      
	       
		  
		  	request.setAttribute("useremail", useremail);
       	request.getRequestDispatcher("/Registerapartment.jsp").forward(request, response);
       	
       	
       }
       else 
       {
       	out.println("<script src ='https://cdnjs.cloudflare.com/ajax/libs/limonte-swwtalert2/6.11.4/sweetalert2.all.js'></script>");
       	out.println("<script src = 'https://ajax.googleapis.com/ajax/jquery/3.2.1/jquery.min.js'></script>");
       	out.println("<script>");
       	out.println("$(document).ready(function(){");
       	out.println("swal('oops','ops','error')");
       	out.println("});");
       	out.println("</script>");
       	
       	request.setAttribute("error message", userValidate);
       	request.getRequestDispatcher("/UserLogin.html").forward(request, response);
       	
       }*/
       
	
	
}


		
		
		
		
	}

