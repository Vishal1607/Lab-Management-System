<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        text-align: center;
        margin-left: auto;
        margin-right: auto;
        font-family: 'Varela Round', sans-serif;
        border-color: #5a708b;
        border-width: 0.1px;
    }
    .table-title {        
		padding-bottom: 1px;
		background-color: #435d7d;
		font-color:#fffff;
		padding: 20px 1px 30px 30px; 
        padding-top: 3px;
        padding-bottom: 3px;
		/* margin: 20px 20px 1px;  */
        margin-right: 40%;
        margin-left:-0.62%;
		border-radius: 3px 3px 0 0;
        width: 100.5%;
        font-size:0px;
        width:900px;
        text-align:right;
	}
    th,td{
        padding: 20px;
        
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
        text-align:left;
        color: #FFFFFF;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 30px;
        padding:20px;
    
	}
	th{
        border-width: 1px;
        border: 0.5px solid black;
		color: #566787;
    }
    #input{
        width: 100%;
        height: 20px;
        border: 0;
        background-color:#f1f1f1;
        
    }
    #input1{
        width: 100%;
        height: 40px;
        border: 0;
        background-color:#f1f1f1
            
    }
    #input2{
        width: 100%;
        height: 20px;
        border: 0;
        background-color:white;
        
    }
    #input3{
        width: 100%;
        height: 40px;
        border: 0;  
        background-color:white;  
    }    
    table.table-striped.table-hover tbody tr:hover {
	background: #f1f1f1;
	}
	
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
          <div class="table-title" >
   <h1>Observations and Action Planned</h1>
   <div class="col-sm-6">
                    <a href="#addEmployeeModal" class="btn btn-success" style="margin-right:-400px; margin-top:-80px;" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add</span></a>						
                </div></div>
   
      
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
                    String sql ="select * from oap";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    %>
            		<tr>
                    <td rowspan="4" id="rowspan"></td>
                	<th>Target Level</th>
                	<td><%=resultSet.getString("tl")%></td>
                </tr>
                	<tr>
                	<th>Action Level</th>
                    <td><%=resultSet.getString("al")%></td>
                	</tr>
                	<tr>
                	<th>Observation</th>
                    <td><%=resultSet.getString("ob")%></td>
                	</tr>
                	<tr>
                	<th>Action Planned</th>
                    <td><%=resultSet.getString("ap")%></td>
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
    <div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="./newOAPc.jsp" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Add</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Target Level </label>
                        <input type="text" class="form-control" name="tl" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label>Attainment Level</label>
                        <input type="text" class="form-control" name="al" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label>Observations</label>
                        <input type="text" class="form-control" name="ob" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label>Action Planned</label>
                        <input type="text" class="form-control" name="ap" placeholder="" required>
                    </div>     
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
         
          </div>
      <script src="website3.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>