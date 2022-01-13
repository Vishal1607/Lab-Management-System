<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="website3.css">
<link rel="stylesheet" href="avgtable.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js"></script>


</script>
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
                        <a href="timetable2.jsp">Time Table</a>
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
                        <a href="APOs.jsp">POs &POS</a>
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
        <div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2><b>Program Outcome</b></h2>
                </div>
                
            </div>
        </div>
        <script>
			function calculateAvg(id) {
				id = id.substring(2);
				var [row, col] = id.split('-');
				var sum = 0;
				var count = 0;
				for (var i = 1; i <= 6; i++) {
					var input_value = document.getElementById('PO' + i + '-' + col).firstElementChild.value;
					if (input_value !== '') {
							sum += Number(input_value) 
							count++
					}
				}

				var avg_html = document.getElementById('avg1' + col);
				var ravg_html = document.getElementById('r.avg2' + col);

				avg_html.innerHTML = '';
				ravg_html.innerHTML = '';

				avg_html.innerHTML = (sum / count).toFixed(2);
				ravg_html.innerHTML = Math.round(sum / count);
			}
		</script>
		<table id="table" cellspacing="0" border="1">
			<thead>
				<tr>
					<th>Course Outcome</th>
					<th colspan="15" id="colspan">Program outcome</th>
				</tr>
				<tr>
					<th id="col1">Sr.No</th>
					<th>PO1</th>
					<th>PO2</th>
					<th>PO3</th>
					<th>PO4</th>
					<th>PO5</th>
					<th>PO6</th>
					<th>PO7</th>
					<th>PO8</th>
					<th>PO9</th>
					<th>PO10</th>
					<th>PO11</th>
					<th>PO12</th>
					<th>PSO1</th>
					<th>PSO2</th>
					<th>PSO3</th>
				</tr>
			</thead>
			<tbody></tbody>
			<tfoot></tfoot>
		</table>
		
		<script src="tableCreate.js"></script>
  
          
            
      	<script src="website3.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>