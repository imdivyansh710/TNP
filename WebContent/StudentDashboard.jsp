<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.ResultSet" language="java" %>
 <%@ page import ="javax.servlet.http.HttpServletRequest" language="java" %>
 <%@ page import ="java.sql.* ,com.tnp.DBConnection" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8" />
	 	<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
	 	<meta http-equiv="X-UA-Compatible" content="ie=edge" />	
	 	<link rel="stylesheet"href="https://u...content-available-to-author-only...e.com/releases/v5.8.1/css/all.css" />
	    <title>StudentDashBoard</title>
		<link rel="stylesheet" type="text/css" href="StudentDashboard.css">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	

	
	
	
</head>

<body>

<%
//ResultSet rs=(ResultSet)request.getAttribute("rs");
%>


<%

DBConnection dbcon=new DBConnection();
ResultSet rs1=null;
Connection con=dbcon.getConnection();
PreparedStatement ps = con.prepareStatement("select * from upcomming_companies");
	 rs1=ps.executeQuery();
	
	rs1.beforeFirst();
	
	String enroll="0103IT171035";
	
	//PreparedStatement ps2 = con.prepareStatement("select * from query where from_enroll=? and reply !=?");
	PreparedStatement ps2 = con.prepareStatement("select * from query where from_enroll=?");
	ps2.setString(1, enroll);
	//ps2.setString(2, "");
	ResultSet rs2=ps2.executeQuery(); 
	
	//rs2.last();
	//System.out.println(rs2.getString(3)+".....bhalu.....");
	//String msg=rs2.getString(3);
	
%>




<div class="nb">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="#">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Link</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Dropdown
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link disabled" href="#">Disabled</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
</div>

<div id='sidebar'>
    <div class='toggle-btn'>
        
    </div>

    <ul>
     <li> <div class="user-photo"><img src=" upcomimg.jpg "></div></li>
      <li> <%//= rs.getString(1)%> </li>
      <li> <%//= rs.getString(3) %>  </li>
      <li>Skills</li>
      <li>Placed in:-</li>
      
    </ul>

  </div>

	<div class="container">
		<div class="cards">

			<div   class="imgBx">
				
			<h2>UpComming Companies</h2>
			
			</div>
			<div class="overlay"></div>
			<div class="content">
				<p>
                	<!-- <h2 text-align="centre">UpComming Companies</h2><hr> -->  
       
      <div style="height:400px; overflow:auto">
        <table class=" tb table table-hover table-sm" >
    	   <tr  class="table-light">
    	   <td>COMPANY NAME</td>
    	   <td>ARRIVAL DATE</td>
    	   <td>NOTE</td>
    	   </tr>
    	   
       <% 
       while(rs1.next())
       { 
    	 %>
    	  
    	    <tr class="table-info">
    	   <td><%=rs1.getString(1) %></td>
    	   <td><%=rs1.getString(2) %></td>
    	   <td><%=rs1.getString(3) %></td>
    	   </tr>
    	    <tr>
    	   
    	   <%}
       
  
       
       %>
    	      </table>
    	   </div>
      		  </p>
               
			</div>
		</div>
		<div class="cards">
			<div class="imgBx">
				
					<h2>Your Progress</h2>
				
			</div>
			<div class="overlay"></div>
			<div class="content">
				<p>
                    <h2>Your Progress</h2><hr>
            ------data-------
                </p>
			</div>
		</div>
		<div class="cards">
			<div class="imgBx">
				
				 <h2>Notifications</h2>
				
			</div>
			<div class="overlay"></div>
			<div class="content">
			<p>
			 <div style="height:400px; overflow:auto"; >
			 <table class="table table-hover table-sm">
    	   <tr  class="table-light">
    	   <td>QUERY</td>
    	   <td>REPLY FROM ADMIN</td>
    	   
    	   </tr>
			<%while(rs2.next())
			{		
			%>
			 <tr class="table-info">
    	   <td><%=rs2.getString(2) %></td>
    	   <td><%=rs2.getString(3) %></td>
    	  
    	   </tr>
    	    <tr>
			
			
			
			<%} %>
			 </table>
			 </div>
		</p>
		
			</div>
		</div>
	
	</div>
	
	
	
	
<div class="B1" style='align-items:flex-end;'>
	<input type="button"  class="button" onclick="window.location.href ='Query.html';" value="Query">
		</div>
</body>



</html>