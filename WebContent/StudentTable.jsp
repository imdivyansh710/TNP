<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.ResultSet" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>STUDENT TABLE</title>
</head>
<body>

<%
ResultSet rs=(ResultSet)request.getAttribute("student_res_set");
int i=0;

String branch= (String)request.getAttribute("branch");

%>
<p id="branch" hidden><%=branch %></p>

<div class="container">
		
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
			<br/>
		<div class=profiletable>
			<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ENROLLMENT NO.</th>
      <th scope="col">NAME</th>
      <th scope="col">VIEW</th>
    </tr>
  </thead>
  <tbody>
 
  <% while(rs.next()){
	  
	 
	  i++;
	  
	 
	  %>
  
    <tr>
      <th scope="row"><%=i %></th>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(1) %></td>
      <td><button  id=<%=i %>  class="btn btn-outline-primary" onclick="myfun(this.id)">VIEW PROFILE</button></td>
      <%
  		} %>
    </tr>
   
  </tbody>
</table>


		</div>

		




	</div>

<script>
function myfun(x)
{
	var branch=document.getElementById("branch").innerHTML;
	var res;
	console.log(x);
	console.log(branch);
	
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	   if (this.readyState == 4 && this.status == 200) {
	    	//action
	      res=  this.responseText;
	    	console.log(res);
	    	viewprof(res);
	    }
	  };
	  xhttp.open("POST", "/tnpproject/studentprofile", true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send("id="+x+"&branch="+branch);
	  
	
}



function viewprof(resp)
{
	var a;
	var xhttp=new XMLHttpRequest();
	
	  xhttp.onreadystatechange = function() {
		   if (this.readyState == 4 && this.status ==200) {
		    	//action
		      a= this.responseText;
		    	document.write(a);
		    	console.log(a);
		    	
		    	 
		    }
		  };
	
	 xhttp.open("POST", "/tnpproject/profile", true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send("enroll="+resp);
	 
}






</script>


</body>
</html>