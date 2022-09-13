package com.tnp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		String prglang="";
		String techsub="";
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String sem1=request.getParameter("sem1");
		String sem2=request.getParameter("sem2");
		String sem3=request.getParameter("sem3");
		String sem4=request.getParameter("sem4");
		String sem5=request.getParameter("sem5");
		String sem6=request.getParameter("sem6");
		String cgpa=request.getParameter("cgpa");
		
		String tenth=request.getParameter("tenth");
		String tenthyop=request.getParameter("tenthyop");
		
		String twelfth=request.getParameter("twelfth");
		String twelfthyop=request.getParameter("twelfthyop");
		
		String Aadhar_no=request.getParameter("aadhar");
		String Pan_no=request.getParameter("pan");
		
		String cpp=request.getParameter("cpp");
		if(cpp!=null)
		{
			prglang=prglang+cpp+",";
		}
		String java=request.getParameter("java");
		if(java!=null)
		{
			prglang=prglang+java+",";
		}
		String python=request.getParameter("python");
		if(python!=null)
		{
			prglang=prglang+python+",";
		}
		String ruby=request.getParameter("ruby");
		if(ruby!=null)
		{
			prglang=prglang+ruby+",";
		}
		String other_lang=request.getParameter("otherlang");
		String other_lang_text=request.getParameter("otherlangtext");
		if(other_lang!=null&&other_lang_text!=null)
		{
			prglang=prglang+other_lang_text;
		}
		
		
		
		
		String ds=request.getParameter("ds");
		if(ds!=null)
		{
			techsub=techsub+ds+",";
		}
		String dbms=request.getParameter("dbms");
		if(dbms!=null)
		{
			techsub=techsub+dbms+",";
		}
		String os=request.getParameter("os");
		if(os!=null)
		{
			techsub=techsub+os+",";
		}
		String se=request.getParameter("se");
		if(se!=null)
		{
			techsub=techsub+se+",";
		}
		String cn=request.getParameter("cn");
		if(cn!=null)
		{
			techsub=techsub+cn+",";
		}
		String cd=request.getParameter("cd");
		if(cd!=null)
		{
			techsub=techsub+cd+",";
		}
		String other_sub=request.getParameter("othersub");
		String other_sub_text=request.getParameter("othersubtext");
		if(other_sub!=null&&other_sub_text!=null)
		{
			techsub=techsub+other_sub_text;
		}
		
	

		DBConnection dbcon=new DBConnection();
		Connection com=dbcon.getConnection();
		try {
			PreparedStatement ps=com.prepareStatement("insert into Registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, " ");
			ps.setString(3, email);
			ps.setString(4, sem1);
			ps.setString(5,sem2 );
			ps.setString(6, sem3);
			ps.setString(7, sem4);
			ps.setString(8, sem5);
			ps.setString(9, sem6);
			ps.setString(10, cgpa);
			ps.setString(11, tenth);
			ps.setString(12, tenthyop);
			ps.setString(13, twelfth);
			ps.setString(14, twelfthyop);
			ps.setString(15,Aadhar_no );
			ps.setString(16, Pan_no);
			ps.setString(17, prglang);
			ps.setString(18, techsub);
			ps.executeUpdate();
			com.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}		
	}

}
