<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="website3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js"></script>
<style>
    table{
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
            font-family: 'Varela Round', sans-serif;
            border-color: #5a708b;
            border-width: 0.1px;
            

        }
        .table-title {        
		
		background-color: #435d7d;
		color: #fff;
        
		/* margin: 20px 20px 1px; */ 
/*         margin-left: 22.5%; */
		border-radius: 3px 3px 0 0;
        width: 52.5%;
        height:60px;
        margin-left:220px;
	    }

		th,td
		{
			height: 5px;
            text-align: center;
            width:30px;
            height: 10px;
            border-width: 1px;
            border: 0.5px solid black;
            

		}
		#input1{
            height: 40px;
		    border:0px;
            text-align: center;
            width: 300px;
		}
        #input{
            width: 100px;
            text-align: center;
            height: 50px;
            border: 0px;

        }
        #colspan,th{
         color: #435d7d ; 
        }
        
        table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fafafa;	
	}
        h1{
            text-align: center;
            color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size:20px;
        }
        
        table.table-striped.table-hover tbody tr:hover {
		background: #D3D3D3;
	}
	.button {
      background-color: #435d7d; 
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
      -webkit-transition-duration: 0.4s; /* Safari */
      transition-duration: 0.4s;
    }
    .button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  margin-left: 70%;
  margin-top: 10px;
    }

.button1:hover {background-color: #344861}

.button2 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  margin-left: 80%;
  margin-top: 10px;
}
.button2:hover {background-color: #344861}
</style>
</head>
<body>
    <div class="page-wrapper chiller-theme toggled">
        <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
          <i class="fas fa-bars"></i>
        </a>
        <nav id="sidebar" class="sidebar-wrapper">
          <div class="sidebar-content">
            <div class="sidebar-brand">
              <a href="website3.jsp">Vcet Manual</a>
              <div id="close-sidebar">
                <i class="fas fa-times"></i>
              </div>
            </div>
            <div class="sidebar-header">
              <div class="user-pic">
                <img class="img-responsive img-rounded" src="human.png" alt="User picture">
              </div>
              <div class="user-info">
                <span class="user-name">${message}

                </span>
                <span class="user-role">Administrator</span>
                <span class="user-status">
                  <i class="fa fa-circle"></i>
                  <span>Online</span>
                </span>
              </div>
            </div>
            <!-- sidebar-search  -->
            <div class="sidebar-menu">
              <ul>
                <li class="header-menu">
                  <span>General</span>
                </li>
                <li>
                  <a href="semform.jsp">
                    <i class="fa fa-tachometer-alt"></i>  
                    <span>Semester</span>
                  </a>
                <li class="sidebar-dropdown">
                  <a href="#">
                    <i class="fa fa-tachometer-alt"></i>  
                    <span>Course</span>
                  </a>
                  <div class="sidebar-submenu">
                    <ul>
                      <li>
                        <a href="content.jsp">Content
                        </a>
                      </li>
                      <li>
                        <a href="#">Syllabus</a>
                      </li>
                      <li>
                        <a href="timtable2.jsp">Time Table</a>
                      </li>
                      <li>
                        <a href="attendence.jsp">Attendence</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="sidebar-dropdown">
                  <a href="#">
                    <i class="fa fa-shopping-cart"></i>
                    <span>Outcome</span>
                  </a>
                  <div class="sidebar-submenu">
                    <ul>
                      <li>
                        <a href="objectivenew.jsp">Objective
                        </a>
                      </li>
                      <li>
                        <a href="courseoutcome.jsp">Outcome</a>
                      </li>
                      <li>
                        <a href="avgtable.jsp">Program outcome</a>
                      </li>
                      <li>
                        <a href="ACOnew.jsp">Attainment outcome</a>
                      </li>
                      <li>
                        <a href="APOs.html">POs &POS</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="sidebar-dropdown">
                  <a href="#">
                    <i class="far fa-gem"></i>
                    <span>Experiments</span>
                  </a>
                  <div class="sidebar-submenu">
                    <ul>
                      <li>
                        <a href="ExpMap.jsp">Experiment outcome</a>
                      </li>
                      <li>
                        <a href="#">Assesment</a>
                      </li>
                      <li>
                        <a href="#">Additional Experiment</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="sidebar-dropdown">
                  <a href="#">
                    <i class="fa fa-chart-line"></i>
                    <span>Results</span>
                  </a>
                  <div class="sidebar-submenu">
                    <ul>
                      <li>
                        <a href="semevaluation.jsp">Semester Evaluation</a>
                      </li>
                      <li>
                        <a href="Analysis.jsp">Analysis</a>
                      </li>
                      <li>
                        <a href="Details.jsp">Details</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="OAP.jsp">
                    <i class="fa fa-globe"></i>
                    <span>Observation and action plan</span>
                  </a>
                <li class="header-menu">
                  <span>Extra</span>
                </li>
                <li>
                  <a href="Aboutus.jsp">
                    <i class="fa fa-book"></i>
                    <span>About Us</span>
                  </a>
              </ul>
            </div>
            <!-- sidebar-menu  -->
          </div>
          <!-- sidebar-content  -->
          <div class="sidebar-footer">
            <a href="login.jsp">
              <i class="fa fa-power-off"></i>
            </a>
          </div>
        </nav>
        <!-- sidebar-wrapper  -->
        <main class="page-content">
          <div class="table-title" >
        <h1>Course Outcomes</h1>
     </div>
         <table border="1" class="table table-striped table-hover">
	<tr>
        <th colspan="2" id="colspan">At the end of the course student will be able to:</th>
        <th>Bloom's Level</th>
        
    </tr>


	<tr>
		<td><input type="text"  id="input"></td>
		<td><textarea id="input1"></textarea></td>
        <td><input type="text"  id="input"></td>
        
	</tr>

	<tr>
		<td ><input type="text"  id="input"></td>
		<td ><textarea id=input1 rows="6" cols="70"></textarea></td>
        <td ><input type="text"  id="input"></td>
        
        
	</tr>
    <tr>
		<td ><input type="text" id="input"></td>
		<td ><textarea id=input1 rows="6" cols="70"></textarea></td>
        <td ><input type="text"  id="input"></td>
        
	</tr>
    <tr>
		<td ><input type="text"  id="input"></td>
		<td ><textarea id=input1 rows="6" cols="70"></textarea></td>
        <td ><input type="text"  id="input"></td>
        
	</tr>
    <tr>
		<td ><input type="text" id="input"></td>
		<td ><textarea id=input1 rows="6" cols="70"></textarea></td>
        <td ><input type="text"  id="input"></td>
        
	</tr>
    <tr>
		<td ><input type="text"  id="input"></td>
		<td ><textarea id=input1 rows="6" cols="70"></textarea></td>
        <td ><input type="text"  id="input"></td>
        
	</tr>
	

    
    
</table>
<button class="button button2" onclick="window.location.href='./APOs.jsp'">submit</button>
      <script src="website3.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>