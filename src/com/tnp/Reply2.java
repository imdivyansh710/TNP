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
 * Servlet implementation class Reply2
 */
@WebServlet("/Reply2")
public class Reply2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reply2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String replyno=request.getParameter("replyno");
		String qreply=request.getParameter("qreply");
		String qmsg=null;
		
	
		int count=0;
		int a=Integer.parseInt(replyno);
		System.out.println(replyno+ "----------");
		System.out.println(qreply+ "----------");
		
		ResultSet rs1=null;
		DBConnection dbcon=new DBConnection();
		Connection col=dbcon.getConnection();
		
		
			PreparedStatement ps1;
			try {
				ps1 = col.prepareStatement("select * from query where reply=?");
				ps1.setString(1, "");
				rs1=ps1.executeQuery();
				
				while(rs1.next())
				{
					count++;
					if(count==a)
					{
					//	System.out.println(rs1.getString(2));
						qmsg=rs1.getString(2);
						response.getWriter().write("query updated");
						break;
					}
					
				}
				
				PreparedStatement ps2=col.prepareStatement("update query set reply ='"+qreply+"' where query_message= '"+qmsg+"'");
				ps2.executeUpdate();
				
					
				
				col.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
			
	}
			

}
