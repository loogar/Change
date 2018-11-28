package com.controller;

import java.io.IOException;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mvc.bean.Imagebean;
import com.mvc.dao.ImagepathsetDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UploadImageServlet
 */
@WebServlet("/UploadImageServlet")
public class UploadImageServlet extends HttpServlet {

	private final String UPLOAD_DIRECTORY = "C:/Users/vivek/ISEP/HomeExchange/WebContent/Pictures";
	private static final long serialVersionUID = 1L;
	ArrayList<String> arrlist = new ArrayList<String>();
       
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
				 String Imagesetup=null;
				if(ServletFileUpload.isMultipartContent(request))
				{
					try
					{
						List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
						for(FileItem item : multiparts)
						{
							if(!item.isFormField())
							{
								String name = new File(item.getName()).getName();
								String path=UPLOAD_DIRECTORY + name;
								//System.out.println(path);
								arrlist.add(path);
								item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
							}
						}
						
						ListIterator<String> itr=arrlist.listIterator(); 
						String Pathimage[]=new String[arrlist.size()];
						while(itr.hasNext()){  
							for(int i=0;i<arrlist.size();i++)//length is the property of array  
							{
								Pathimage[i]=itr.next();  
							    System.out.println(Pathimage[i]);
							} }
						String userid = (String) request.getSession(false).getAttribute("userid");
						System.out.println(userid);
						int i=Integer.parseInt(userid);
						//int i = 1;
						 String image ="INSERT INTO image_table(Profilepic,AptImage1,AptImage2,AptImage3,AptImage4,userid) values(?,?,?,?,?,"+i+")";
						 		
						 Imagebean Pathset=new Imagebean();
						 ImagepathsetDAO iamge= new ImagepathsetDAO();
						 Pathset.setProfilepic(Pathimage[0]);
						 Pathset.setAptImage1(Pathimage[1]);
						 Pathset.setAptImage2(Pathimage[2]);
						 Pathset.setAptImage3(Pathimage[3]);
						 Pathset.setAptImage4(Pathimage[4]);
						 Imagesetup=iamge.Setimage(Pathset, image);
						//request.setAttribute("message", "File uploaded successfully.");
					}
					catch(Exception ex)
					{
						request.setAttribute("message", "File upload failed due to : " + ex);
					}
				}
				else
				{
					request.setAttribute("message", "Sorry this servlet only handles file upload request.");
				}
				//request.getRequestDispatcher("/result.jsp").forward(request, response);
				if (Imagesetup.equals("SUCCESS"))
		        {    
					 request.getSession(false).invalidate();  
		        	request.getRequestDispatcher("/UserLogin.jsp").forward(request, response);
		        }
		        else {
		        	
		        	request.setAttribute("error message", Imagesetup);
		        	request.getRequestDispatcher("/imageupload.jsp").forward(request, response);
		        	
		        }
			}

}
