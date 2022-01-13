<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="website3.css">
<link rel="stylesheet" href="detail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
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
          <h1>Details of activities beyond syllabus if any 
                (seminar/guest lecture etc.)</h1>
                <form action="./detailc.jsp" method="post">
	                <table>
	                  <td><textarea id="input1" rows="10" cols="100" name="addmore"></textarea></td>
	                </table>  
	                <button class="button button1" onclick="window.location.href='./detailshow.jsp'">Submit</button>
		        </form>
          </div>
      <script src="website3.js"></script>
</body>
</html>