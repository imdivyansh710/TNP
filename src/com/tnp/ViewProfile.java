package com.tnp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewProfile
 */
@WebServlet("/ViewProfile")
public class ViewProfile extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    public ViewProfile() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String enroll=request.getParameter("enroll");
		//System.out.println(enroll);
		
		DBConnection dbcon=new DBConnection();
		Connection com=dbcon.getConnection();
		ResultSet rs=null;
		try {
			PreparedStatement ps=com.prepareStatement("select * from registration where ENROLLMENT_NO=?");
			ps.setString(1,enroll);
			rs=ps.executeQuery();
			response.setContentType("text/html");
			request.setAttribute("enroll",enroll);
			RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
			rd.forward(request, response);
			
			
				com.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

	
	
		
		
	




}
