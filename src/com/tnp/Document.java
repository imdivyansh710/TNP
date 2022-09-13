package com.tnp;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import javax.servlet.annotation.WebServlet;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB

/**
 * Servlet implementation class Document
 */
@SuppressWarnings("unused")
@WebServlet("/Document")

public class Document extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Document() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		InputStream inputstream=null;
		Part filepart=request.getPart("photo");
		if(filepart!=null)
		{
			System.out.println(filepart.getName());
			System.out.println(filepart.getContentType());
			inputstream=filepart.getInputStream();
			
			DBConnection dbcon=new DBConnection();
			Connection com=dbcon.getConnection();
			try {
				System.out.println("connected to db");
				PreparedStatement ps=com.prepareStatement("insert into document values(?)");
				if(inputstream!=null)
				{
					ps.setBlob(1,inputstream);
					
				}
				
				int row=ps.executeUpdate();
				if(row>0)
				{
					System.out.println("uploaded successfully");
					
				}
				
					com.close();
				
				
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
			
			
		}
		
		
		
	}

}
