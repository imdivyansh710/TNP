package com.tnp;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpcommingCompany")
public class UpcommingCompany extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpcommingCompany() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String companyname=	request.getParameter("companyname");
	String date=request.getParameter("date");
	String detail=request.getParameter("detail");
	//System.out.println(companyname+" "+date+" "+detail);
	DBConnection dbcon=new DBConnection();
	Connection con=dbcon.getConnection();
	PreparedStatement ps;
	try {
		ps = con.prepareStatement("insert into upcomming_companies values(?,?,?)");
		ps.setString(1, companyname);
		ps.setString(2, date);
		ps.setString(3, detail);
		ps.executeUpdate();
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	
		
	}

}
