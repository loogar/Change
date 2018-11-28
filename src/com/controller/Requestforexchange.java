package com.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import com.mvc.bean.RegisterBean;
import com.mvc.bean.RequestforexchangeBean;
import com.mvc.dao.RegisterDao;
import com.mvc.dao.RequestforexchangeDAO;;


/**
 * Servlet implementation class Requestforexchange
 */
@WebServlet("/Requestforexchange")
public class Requestforexchange extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String RequestedFrom  = request.getParameter("RequestedFrom");
        System.out.println(RequestedFrom);
        String Requestedto = request.getParameter("Requestedto");
       // System.out.println(Lastname);
       // System.out.println(password);
        String noofperson = request.getParameter("noofperson");
       // System.out.println(password);
        // System.out.println(password);
        String fromdate = request.getParameter("fromdate");
        // System.out.println(password);
        String todate = request.getParameter("todate");
        
        RequestforexchangeBean requestforexchangebean = new RequestforexchangeBean();
        
        requestforexchangebean.setRequestedFrom(RequestedFrom);
        requestforexchangebean.setRequestedto(Requestedto);
        requestforexchangebean.setNoofperson(noofperson);
        requestforexchangebean.setFromdate(fromdate);
        requestforexchangebean.setTodate(todate);
        
        
        RequestforexchangeDAO requestforexchangedao =  new RequestforexchangeDAO();
         String UserRegistered = requestforexchangedao.requestforexchange(requestforexchangebean);
         HttpSession session = request.getSession();
         
        
        if (UserRegistered.equals("SUCCESS"))
        {
        	
        	
        	request.getRequestDispatcher("/UserProfile.jsp").forward(request, response);
        }
        else {
        	
        	request.setAttribute("errormessage", "User is not registered");
        	request.getRequestDispatcher("/thechange.jsp").forward(request, response);
        	
        }
        
        
        
        
        
       
	
      }
}
