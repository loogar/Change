package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.EditRegisterBean;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.LoginDao;
import com.mvc.dao.RegisterDao;

/**
 * Servlet implementation class UpdateUserProfile
 */
@WebServlet("/UpdateUserProfile")
public class UpdateUserProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
		
	        String Firstname  = request.getParameter("fname");
	        //System.out.println(Firstname);
	        String Lastname = request.getParameter("lname");
	       // System.out.println(Lastname);
	       // String Gender = request.getParameter("gender");
	       // System.out.println(email);
	        String Email = request.getParameter("email");
	       // System.out.println(password);
	      //  String age = request.getParameter("age");
	       // System.out.println(address);
	       // String phone = request.getParameter("phone");
	        String password = request.getParameter("password");
	       // String placetravel = request.getParameter("placetravel");
	       // String showurself = request.getParameter("showurself");
	       // String qoute = request.getParameter("quote");
	      //  String interest = request.getParameter("interest");
	        String address = request.getParameter("address");
	        
	        EditRegisterBean editregisterBean = new EditRegisterBean();
	        
	        editregisterBean.setFirstname(Firstname);
	        editregisterBean.setLastname(Lastname);
	        editregisterBean.setEmail(Email);
	        editregisterBean.setPassword(password);
	        editregisterBean.setAddress(address);
	
	        
	        //String sql = "Update hem_user set(Firstname,Lastname,email,password,address)=(?,?,?,?,?) where email = ?";
	        String sql = "UPDATE hem_user SET Firstname=?,Lastname=?,email=?,password=?,address=? where email = ?";
	        
	        
	        //call a method in login dao
	       
	        int i = RegisterDao.UpdateUser(editregisterBean,sql);
	        HttpSession session = request.getSession();
	        if (i!=0){
	        	request.setAttribute("msg", "updated successfully");
	        	
	        	getServletContext().getRequestDispatcher("/edituserprofile.jsp").forward(request, response);
	        	
	        }
	        else{
	        	
	        }
	}

}
