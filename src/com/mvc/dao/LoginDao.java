package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;


public class LoginDao {
	
public ArrayList<ResultSet> authenticateUser(LoginBean loginbean, String sql){
		
		String useremail = loginbean.getEmail();
		String password	= loginbean.getPassword();
		ArrayList<ResultSet> arrlist = new ArrayList<ResultSet>();
		
		Connection con = null;
		Statement statement = null;
		ResultSet rs = null;
		ResultSet rs1 = null;
		
		PreparedStatement ps =  null;
		PreparedStatement ps1 =  null;
		String useremailDB = "";
		String userpasswordDB = "";
		
	        
		try {
			
			
			con=DBConnection.createConnection();
			statement = con.createStatement();
			
			//resultset = statement.executeQuery("select * from hem_user");
			String sql1 ="select * from hem_user h where h.email =?and h.password=? ";
			ps = con.prepareStatement(sql);
			ps.setString(1,useremail );
			ps.setString(2,password );
			System.out.println(ps);
			rs = ps.executeQuery();
			arrlist.add(rs);
			ps1 = con.prepareStatement(sql1);
			ps1.setString(1,useremail );
			ps1.setString(2,password );
			rs1 = ps1.executeQuery();
			arrlist.add(rs1);
			System.out.println(ps1);
			
		}
		catch (SQLException ex)
		{
			ex.printStackTrace();
		}
		
	return arrlist;
	
		
		
		
	}
}
