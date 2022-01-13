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
              <a href="website3.jsp"><strong>Vcet Manual</strong></a>
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
                        <a href="avgtable.jsp.jsp">Program outcome</a>
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
                        <a href="#">Assessment</a>
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
          <table border="1">
                  <tr>
                      <td style="width: 400px; height: 25px; text-align: center;" colspan="2" ><strong>Guides</strong></td>
                  </tr>
                  <tr>
                      <td style="width: 400x; height: 25px;"><center><img src="ashish.jpeg" alt="ashish" width="200px" style=""></center></td>
                      <td style="width: 400px; height: 200px;"><center><img src="yogesh sir.png" alt="ashish" width="200px" style=""></center></td>
                  </tr>
                  <tr>
                    <td style="width: 400px; height: 25px;"><center><h5>Dr.Ashish Vanmali<br>(HOD-IT Dept)</h5></center></td>
                    <td style="width: 400px; height: 25px;"><center><h5>Prof.Yogesh Pingle<br>(Prof-IT Dept)</h5></center></td>
                </tr>
              </table>
              <br>
              <table border="1">
                <tr>
                    <td style="width: 400px; height: 25px; text-align: center;" colspan="2"><strong>Working Team</strong></td>
                </tr>
                <tr>
                    <td style="width: 400px; height: 25px;"><center><img src="vishal3.jpeg" alt="ashish" width="200px" style=""></center></td>
                    <td style="width: 400px; height: 200px;"><center><img src="Manaswi.jpg" alt="ashish" width="150px" style=""></center></td>
                </tr>
                <tr>
                    <td style="width: 400px; height: 25px;"><center><h5>Vishal Gupta<br>(2yr.Student)</h5></center></td>
                    <td style="width: 400px; height: 25px;"><center><h5>Manaswi Jadhav<br>(2yr.Student)</h5></center></td>
                </tr>
                <tr>
                  <td style="width: 400px; height: 25px;"><center><img src="omkar.jpeg" alt="ashish" width="200px" style=""></center></td>
                  <td style="width: 400px; height: 200px;"><center><img src="shlok.jpeg" alt="ashish" width="200px" style=""></center></td>
              </tr>
              <tr>
                <td style="width: 400px; height: 25px;"><center><h5>Omkar Jadhav<br>(2yr.Student)</h5></center></td>
                <td style="width: 400px; height: 25px;"><center><h5>Shlok Shetty<br>(2yr.Student)</h5></center></td>
            </tr>
              </table>
          </div>
      <script src="website3.js"></script>
</body>
</html>