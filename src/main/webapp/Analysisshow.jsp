<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    table
    {
        border-collapse: collapse;
        margin-right: auto;
        margin-left: auto;
        font-family: 'Varela Round', sans-serif;
       /* border-color: #5a708b; */
        border-width: 0.1px;
    }
    #input{
        border: 0px;    
    }
    td,th
    {
        padding: 15px;   
    }
      .table-title {        
      padding-bottom: 1px;
     background-color:#435d7d; 
      color: #fff;
      padding: 20px 1px 30px 30px; 
      padding-top: 3px;
      padding-bottom: 3px;
      margin: 20px 20px 1px; 
      margin-left: 0%;
      border-radius: 3px 3px 0 0;
      width:100%;
    }
  td{
            width:50%;
            border-width: 1px;
            border: 0.5px solid black;
     }
     #rowspan{
            width: 10%;
            
        }
        h1{
            text-align: center;
            /* color: #fdfdfd; */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 20px;
        }

        #input{
            width: 200px;
            height: 30px;
            border: 0;
            font-size: medium;
            padding-right: 50px;
            padding-left: 50px;
        }
        th{
            border-width: 1px;
            border: 0.5px solid black;
            /* background-color: #435d7d; */
            /* color: #566787; */

        }
        table.table-striped.table-hover tbody tr:hover {
		background: #e6dfdf;
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
  margin-left: 4%;
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
                        <a href="timetable2.jsp">Time Table</a>
                      </li>
                      <li>
                        <a href="attedence.jsp">Attendence</a>
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
          <div class="container">
          <div class="table-title">
    <h1>Result Analysis</h1>
</div>
    <table border="1" class="table table-striped table-hover">
    <tbody>        
          <%
                String id = request.getParameter("id");
                String driverName = "com.mysql.jdbc.Driver";
                String connectionUrl = "jdbc:mysql://localhost:3306/";
                String dbName = "miniproject";
                String userId = "root";
                String password = "#Vishal1607";
                
                try {
                Class.forName(driverName);
                } catch (ClassNotFoundException e) {
                e.printStackTrace();
                }
                
                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;
                %>
        
                    <%
                    try{
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
                    statement=connection.createStatement();
                    String sql ="select * from analysis";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    %>
            		<tr>
                	<th>Number of Students Appeared</th>
                	<td><%=resultSet.getString("appeared")%></td>
                </tr>
                	<tr>
                	<th>Number of Students Passed</th>
                    <td><%=resultSet.getString("passed")%></td>
                	</tr>
                	<tr>
                	<th>Number of Students Failed</th>
                    <td><%=resultSet.getString("failed")%></td>
                	</tr>
                	<tr>
                	<th>>Percentage of Result</th>
                    <td><%=resultSet.getString("result")%></td>
                	</tr>
                	<tr>
                	<th>Number of Students with marks > 80 %</th>
                    <td><%=resultSet.getString("percent80")%></td>
                	</tr>
                	<tr>
                	<th>Number of Students with marks 60 < % < 80</th>
                    <td><%=resultSet.getString("percent8060")%></td>
                	</tr>
                	<tr>
                	<th>>Number of Students with marks 40 < % < 60</th>
                    <td><%=resultSet.getString("percent6040")%></td>
                	</tr>
                    <%
                    }
                    connection.close();
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %> 

                         
                                
              </tbody>


            </table>
            <button class="button button2" onclick="window.location.href='./Analysis.jsp'">Back</button>
          </div>
      <script src="website3.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>