<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.ResultSet" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reply</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<%
ResultSet rs=(ResultSet)request.getAttribute("query");
int i=0;


%>






<div class="container">
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
<br/>
<div>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">ENROLLMENT-NO</th>
      <th scope="col">QUERY</th>
      <th scope="col">REPLY</th>
        <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <% 
  while(rs.next()){
	  i++;
	  
	  %>
  
  
    <tr>
      <th scope="row"><%=i %></th>
      <td><%=rs.getString(1)  %></td>
      <td><%=rs.getString(2) %></td>
       <td><textarea rows="5" cols="50" id=<%=i+"queryreply"%>></textarea></td>
		 <td><button  id=<%=i %>  class="btn btn-outline-primary btn-lg" onclick="identifystudent(this.id)">REPLY</button></td>
    </tr>
    <%
    } 
    %>
  </tbody>
</table>




</div>




</div>

<script type="text/javascript">
function identifystudent(x)
{
	var t = document.getElementById(x+"queryreply").value;
	var msg=t;
	document.getElementById(x+"queryreply").value="";
	console.log(t);
	var res;
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	   if (this.readyState == 4 && this.status == 200) {
	    	//action
	      res=  this.responseText;
	    	reload();
	    	console.log(res);
	    	
	    	
	    }
	  };
	  xhttp.open("POST", "/tnpproject/reply2", true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send("replyno="+x+"&qreply="+msg);
	  
}

function reload()
{
	location.reload(true);
	
}

</script>



</body>
</html>