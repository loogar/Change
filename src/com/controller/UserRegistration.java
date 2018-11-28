package com.controller;

import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;;

/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String Firstname  = request.getParameter("Firstname");
        //System.out.println(Firstname);
        String Lastname = request.getParameter("Lastname");
       // System.out.println(Lastname);
        String email = request.getParameter("email");
       // System.out.println(email);
        String password = request.getParameter("password");
       // System.out.println(password);
        String address = request.getParameter("address");
       // System.out.println(password);
        
        RegisterBean registerBean = new RegisterBean();
        
        
        registerBean.setFirstname(Firstname);
        registerBean.setLastname(Lastname);
        registerBean.setEmail(email);
        registerBean.setPassword(password);
        registerBean.setAddress(address);
        
        
        RegisterDao registerdao =  new RegisterDao();
         String UserRegistered = registerdao.registerUser(registerBean);
         HttpSession session = request.getSession();
        
        if (UserRegistered.equals("SUCCESS"))
        {
        	request.getRequestDispatcher("/UserLogin.html").forward(request, response);
        }
        else {
        	
        	request.setAttribute("errormessage", "User is not registered");
        	request.getRequestDispatcher("/UserRegistration.html").forward(request, response);
        	
        }
        
        
        
        
        
       
	
      }
}
