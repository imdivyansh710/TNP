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
 * Servlet implementation class Category
 */
@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Category() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cat=request.getParameter("cat");
		
	//	System.out.println(cat);
		DBConnection dbcon=new DBConnection();
		ResultSet rs=null;
		Connection com=dbcon.getConnection();
		try {
			PreparedStatement ps=com.prepareStatement("select * from registration where BRANCH=?");
			ps.setString(1, cat);
			rs=ps.executeQuery();
			
//			while(rs.next())
//			{
//				System.out.println(rs.getString(1)+" "+rs.getString(2));
//			}
//			
//			
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("student_res_set",rs);
		request.setAttribute("branch",cat);
		
		RequestDispatcher rd=request.getRequestDispatcher("StudentTable.jsp");
		
		rd.forward(request, response);
		
		try {
			com.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
