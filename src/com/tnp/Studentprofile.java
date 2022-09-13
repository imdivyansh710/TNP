package com.tnp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Studentprofile
 */
@WebServlet("/Studentprofile")
public class Studentprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Studentprofile() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String branch=(String)request.getParameter("branch");
		int lenb=branch.length();
		String b=branch.substring(0,lenb);
		//System.out.println(b+"12345");
		int count=0;
		int a=Integer.parseInt(id);
		
		ResultSet rs1=null;
		DBConnection dbcon=new DBConnection();
		Connection col=dbcon.getConnection();
		
		try {
			PreparedStatement ps1= col.prepareStatement("select * from registration where BRANCH=?");
			ps1.setString(1, b);
			rs1=ps1.executeQuery();
			while(rs1.next())
			{
				count++;
				if(count==a)
				{
					//System.out.println(rs1.getString(2));
					response.getWriter().write(rs1.getString(2));
					break;
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
