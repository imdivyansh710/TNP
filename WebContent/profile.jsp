<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*,com.tnp.DBConnection" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>profile</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="profile.css">
</head>
<body>
<%
String enroll=(String)request.getAttribute("enroll"); 
DBConnection dbcon=new DBConnection();
Connection com=dbcon.getConnection();
ResultSet rs=null;
	PreparedStatement ps=com.prepareStatement("select * from registration where ENROLLMENT_NO=?");
	ps.setString(1,enroll);
	rs=ps.executeQuery();
	rs.next();
%>
<br/><br/>
<div class="card">
  <img src="https://www.shareicon.net/data/256x256/2016/01/05/232816_naruto_256x256.png" alt="image" style="width:100%">
  <h1><%=rs.getString(1) %></h1>
  <p class="title"><%=rs.getString(2) %></p>
  <p><%=rs.getString(4) %></p>
  
  <p><button   onclick="window.location.href ='category.html';" >GO BACK</button></p>
</div>
</body>
</html>