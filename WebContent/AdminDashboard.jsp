<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN DASHBOARD</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="AdminDashboard.css">
</head>
<body>


<!--  -->
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


<br/><br/>


<div class="row">
	<div class="column">
		<div class="card">
      <div class="card-image"></div>
      <div class="card-text">
        <span class="date">-------</span>
        <h2>VIEW STUDENT PROFILES</h2>
        <p>--------------------------------------------</p>
        <form>
        	 <button type="submit" class="btn btn-outline-danger">CLICK HERE</button>
        </form>
       


      </div>
      <div class="card-stats">
        <div class="stat">
          <div class="value">==<sup>m</sup></div>
          <div class="type">=====</div>
        </div>
        <div class="stat border">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
        <div class="stat">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
      </div>
    </div>

	</div>

	<div class="column">
		
		 <div class="card">
      <div class="card-image card2"></div>
      <div class="card-text card2">
        <span class="date">---------</span>
        <h2>SHORTLIST</h2>
        <p>-----------------------------------------------</p>
        <form>
        	 <button type="submit" class="btn btn-outline-warning">CLICK HERE</button>
        </form>
      </div>
      <div class="card-stats card2">
        <div class="stat">
          <div class="value">==<sup>m</sup></div>
          <div class="type">=====</div>
        </div>
        <div class="stat border">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
        <div class="stat">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
      </div>
    </div>
	</div>


<div class="column">
		 <div class="card">
        <div class="card-image card3"></div>
        <div class="card-text card3">
          <span class="date">---------</span>
          <h2>UPCOMMING COMPANIES</h2>
          <p>----------------------------------------</p>
          <form>
        	 <button type="submit" class="btn btn-outline-success">CLICK HERE</button>
        </form>
        </div>
        <div class="card-stats card3">
          <div class="stat">
            <div class="value">==<sup>m</sup></div>
            <div class="type">=====</div>
          </div>
          <div class="stat border">
            <div class="value">==</div>
            <div class="type">=====</div>
          </div>
          <div class="stat">
            <div class="value">==</div>
            <div class="type">=====</div>
          </div>
        </div>
      </div>
		
	</div>





<div class="column">
		<div class="card">
      <div class="card-image"></div>
      <div class="card-text">
        <span class="date">--------</span>
        <h2>NOTICE BOARD</h2>
        <p>----------------------------------------------------</p>
        <form>
        	 <button type="submit" class="btn btn-outline-danger">CLICK HERE</button>
        </form>
      </div>
      <div class="card-stats">
        <div class="stat">
          <div class="value">==<sup>m</sup></div>
          <div class="type">=====</div>
        </div>
        <div class="stat border">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
        <div class="stat">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
      </div>
    </div>

	</div>

	<div class="column">
		
		 <div class="card">
      <div class="card-image card2"></div>
      <div class="card-text card2">
        <span class="date">--------</span>
        <h2>REPLY</h2>
        <p>------------------------------------------------------</p>
        <form action="reply" method="post">
        	 <button type="submit" class="btn btn-outline-warning">CLICK HERE</button>
        </form>
      </div>
      <div class="card-stats card2">
        <div class="stat">
          <div class="value">==<sup>m</sup></div>
          <div class="type">=====</div>
        </div>
        <div class="stat border">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
        <div class="stat">
          <div class="value">==</div>
          <div class="type">=====</div>
        </div>
      </div>
    </div>
	</div>


<div class="column">
		 <div class="card">
        <div class="card-image card3"></div>
        <div class="card-text card3">
          <span class="date">-----------</span>
          <h2>INF SEL STUDENT</h2>
          <p>----------------------------</p>
          <form>
        	 <button type="submit" class="btn btn-outline-success">CLICK HERE</button>
        </form>
         
        </div>
        <div class="card-stats card3">
          <div class="stat">
            <div class="value">==<sup>m</sup></div>
            <div class="type">=====</div>
          </div>
          <div class="stat border">
            <div class="value">==</div>
            <div class="type">=====</div>
          </div>
          <div class="stat">
            <div class="value">==</div>
            <div class="type">=====</div>
          </div>
        </div>
      </div>
		
	</div>



</div>



</div>



</div>


</body>
</html>