package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.ExhangeDAO;

/**
 * Servlet implementation class PendingRequestidsforowner
 */
@WebServlet("/PendingRequestidsforowner")
public class PendingRequestidsforowner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PendingRequestidsforowner() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  

		
		
		
		
          
        HttpSession session=request.getSession();  
       Integer userid = Integer.parseInt( (session.getAttribute ("userid").toString()));
       // session.getAttribute("userid");
        System.out.println(userid);
      
      String sql = "select * from requestforexchange where requestedto = '"+ userid +"'";
      	
      ExhangeDAO exchangedao = new ExhangeDAO();
	   ResultSet rs = exchangedao.Pendingrequestdetailstoowner(sql);
	
		
		try
		{
			if(rs.next())
		{
			session.setAttribute("RequestedFrom", rs.getString(1));
			session.setAttribute("Requestedto", rs.getString(2));
			session.setAttribute("noofperson", rs.getString(3));
			session.setAttribute("fromdate", rs.getString(4));
			session.setAttribute("todate", rs.getString(5));
			session.setAttribute("BookingIDS", rs.getString(6));
			
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			System.out.println(rs.getString(5));
			System.out.println("BOOKING ID"+rs.getString(6));
			
			String id = rs.getString(1);
			
			
	        	getServletContext().getRequestDispatcher("/Houseexchangerequest.jsp").forward(request, response);

	        	
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
