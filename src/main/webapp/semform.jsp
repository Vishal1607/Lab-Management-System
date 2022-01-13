<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="website3.css">
<link rel="stylesheet" href="semform.css">
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
          <!-- Modal -->
  <div class="modal fade" id="semaddmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Semester Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="./semformc.jsp" method="post">
        <div class="modal-body">
                <div1 class="form-group">
                    <label for="sem" style="text-align: centre;">Semester:</label>
                        <select id="sem" name="semester">
                        <option value="Semester 1">Semester 1</option>
                        <option value="Semester 2">Semester 2</option>
                        <option value="Semester 3">Semester 3</option>
                        <option value="Semester 4">Semester 4</option>
                        <option value="Semester 5">Semester 5</option>
                        <option value="Semester 6">Semester 6</option>
                        <option value="Semester 7">Semester 7</option>
                        <option value="Semester 8">Semester 8</option>
                        </select>
                </div1>
				<br>
                <div1 class="form-group">
                    <label>Class</label>
                    <br>
                    <input type="text" name="classn" class="form-group" placeholder="Branch" style="width: 300px;">
                </div1>
				<br>
                <div1 class="form-group">
                    <label>Cource Code</label>
                    <input type="text" name="code" class="form-group" placeholder="1111">
                </div1>
				<br>
                <div1 class="form-group">
                    <label>Acadamic year</label>
                    <input type="text" name="Acadamic" class="form-group" placeholder="1yr.">
                </div1>
				<br>
                <div1 class="form-group">
                    <label>Cource Name</label>
                    <input type="text" name="course" class="form-group" placeholder="Java">
                </div1>
				<br>
                <div1 class="form-group">
                    <label>Name of Faculty</label>
                    <input type="text" name="Faculty" class="form-group" placeholder="Prof..">
                </div1>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" name="savedata" class="btn btn-primary">Save Data</button>
        </div>
    </form>
      </div>
    </div>
  </div>
    <div class="container">
        <div class="jumbotron">
            <div class="card">
            <div class="table-title" style="padding-bottom: 15px; padding-left:50px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            border-radius: 3px 3px 0 0;
            width: 100%;">
            <h1 style="text-align: left;" >Semester</h1><span><a href="#addEmployeeModal" class="btn btn-success" style:"padding-right:100px" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add</span></a>	
                      </button></span>
            </div>  
            </div>
            <div class="card">  
            </div>
            <div class="card">
            <div class="card-body">
                <table1 class="table table-striped table-hover">
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
                    String sql ="select * from semform";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    %>
                    <table id="goon"  border="5" style="width:500px; font-family:'Times New Roman', Times, serif; font-weight: bold;">
						<tr><td><div1 id="sem" > Semester: <%=resultSet.getString("semester") %> </div1></td> ><td><div id="class"> Class: <%=resultSet.getString("classn") %> </div></td></tr>

						<tr><td><div1 id="code"> Course Code: <%=resultSet.getString("code") %> </div1></td> <td> <div id="ay">Acadamic Year: <%=resultSet.getString("Acadamic") %></div></td></tr> 
						
						<tr><td><div1 id="course"> Course Name: <%=resultSet.getString("course") %> </div1></td></tr>
						
						<tr><td><div1 id="name"> Name of Faculty: <%=resultSet.getString("Faculty") %> </div1></td> <td><div1 <button class="button button2"
						onclick="window.location.href='./content.jsp'">Go</button> > </div1></td></tr> 
						
						<%
						}
						connection.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
						</table>  
      
					
            </div>
        </div>
        </div>
    </div>
          
            
      	<script src="website3.js"></script>
      	<script src="timetable.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>