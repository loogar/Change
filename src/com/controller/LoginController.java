package com.controller;

import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;
import com.mvc.util.DBConnection;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String useremail=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		LoginBean loginbean = new LoginBean();
		
		loginbean.setEmail(useremail);
		loginbean.setPassword(password);
		
//String sql ="select * from hem_user h,registered_house r where h.email =?and h.password=? and h.userid = r.userid";
		String sql ="select * from hem_user h,registered_house r,image_table i where h.email =?and h.password=? and h.userid = r.userid and h.email='"+ useremail +"'";
		
		
		LoginDao logindao = new LoginDao();
		
		ArrayList<ResultSet> result = logindao.authenticateUser(loginbean,sql);
		ListIterator<ResultSet> itr=result.listIterator(); 
		ResultSet rs=null;
		ResultSet re[]=new ResultSet[2];
		while(itr.hasNext()){  
			for(int i=0;i<re.length;i++)//length is the property of array  
				 
			re[i]=itr.next();  
			}  
		
	HttpSession session = request.getSession();
			
			try
			{
				if(re[1].next())
			{      
					if(re[0].next()) {
					session.setAttribute("userid", re[0].getString(1));
					session.setAttribute("fname", re[0].getString(2));
					session.setAttribute("lname", re[0].getString(3));
					session.setAttribute("email", re[0].getString(4));
					session.setAttribute("password", re[0].getString(5));
					session.setAttribute("address",re[0].getString(6));
					session.setAttribute("Addressln1",re[0].getString(8));
					session.setAttribute("Addressln2",re[0].getString(9));
					session.setAttribute("city",re[0].getString(10));
					session.setAttribute("zipcode",re[0].getString(11));
					session.setAttribute("houseType",re[0].getString(12));
					session.setAttribute("bedroom",re[0].getString(13));
					session.setAttribute("bathroom",re[0].getString(14));
					session.setAttribute("person",re[0].getString(15));
					session.setAttribute("fromdate",re[0].getString(16));
					session.setAttribute("todate",re[0].getString(17));
					session.setAttribute("Smoking",re[0].getString(18));
					session.setAttribute("pets",re[0].getString(19));
					session.setAttribute("descriptions",re[0].getString(20));
					session.setAttribute("password",re[0].getString(21));
					//session.setAttribute("path",rs.getString(23));
					System.out.println(re[0].getString(2));
					session.setAttribute("profilepic",re[0].getString(22));
					session.setAttribute("Apt1",re[0].getString(23));
					session.setAttribute("Apt2",re[0].getString(24));
					session.setAttribute("Apt3",re[0].getString(25));
					session.setAttribute("Apt4",re[0].getString(26));
					//session.setAttribute("path",rs.getString(23));
					System.out.println(re[0].getString(23));
					System.out.println(re[0].getString(24));
					
				    
		        	getServletContext().getRequestDispatcher("/UserProfile.jsp").forward(request, response);}
			else {
				session.setAttribute("userid", re[1].getString(1));
				getServletContext().getRequestDispatcher("/Registerapartment.jsp").forward(request, response);
			}
					
					
					

		        	
				}
					
				else
				{
					//request.getRequestDispatcher("/UserLogin.html").forward(request, response);
					
					request.setAttribute("Message", ":account is invalid,Please entercorrect mail id and password");

		        	getServletContext().getRequestDispatcher("/UserLogin.jsp").forward(request, response);
		        	
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
