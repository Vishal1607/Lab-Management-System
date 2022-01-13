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
              <a href="website3.jsp">Vcet Manual</a>
              <div id="close-sidebar">
                <i class="fas fa-times"></i>
              </div>
            </div>
            <div class="sidebar-header">
              <div class="user-pic">
                <img class="img-responsive img-rounded" src="vishal3.jpeg" alt="User picture">
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
                        <a href="semesterevaluation.jsp">Semester Evaluation</a>
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
          
            <img src="vcet3.png" alt="vcet" style="width: 70px;"><span style="font-size: 32px;"><b>Vidyavardhini's College Of Engineering & Technology</b></span>
            <hr style="height:4px;border-width:0;color:rgb(12, 12, 12);background-color:rgb(7, 7, 7)">
            <h2>Vision</h2>
            <p>To be a premier institution of technical education, aiming at becoming a valuable resource for industry and society.</p>
            <h2>Mission</h2>
            <p>1.To provide technologically inspiring environment for learning</p>
            <p>2.To promote creativity, innovation and professional activities.</p>
            <p>3.To inculcate ethical and moral values.</p>
            <p>4.To cater personal, professional and societal needs through quality education.</p>
            <h1>Department Mission:</h1>
            <p>• To provide quality education, by employing best and diversified teaching practices and 
              tools, and teaching beyond the confines of the university syllabus.<br>
              • To keep students abreast with latest technological advancements in the market.<br>
              • To prepare students to troubleshoot and solve IT system problems.</p>

            <h2>Program Education Objectives (PEOs):</h2>
            <p>1. To produce skilled IT Professional to cater social/industrial needs.<br>
              2. To inculcate an ability to implement modern practices with ethical and professional 
              responsibilities.<br>
              3. To establish graduate as Business Analyst, System Analyst, Data Scientist, Project Leader.</p>

            <h2>Program Specific Outcomes (PSOs):</h2>
            <h2>The graduates will be able to</h2>
            <p>Apply and implement IT solutions in allied fields of engineering to solve real word 
              problems.<br>
              • Identify social and industrial problems, provide creative solutions and become quality 
              asset for society and industry.<br>
              • Deploy secured solution using Information Technology practices and strategies.</p>

            <h2>Program Outcomes (POs):</h2>
            <p>Engineering Graduates will be able to:<br>
              •<h9></h9>PO1</h4>. Engineering knowledge: Apply the knowledge of mathematics, science, engineering 
              fundamentals, and an engineering specialization to the solution of complex engineering 
              problems.<br>
              • PO2. Problem analysis: Identify, formulate, review research literature, and analyze 
              complex engineering problems reaching substantiated conclusions using first principles of 
              mathematics, natural sciences, and engineering sciences.<br>
              • PO3. Design/development of solutions: Design solutions for complex engineering 
              problems and design system components or processes that meet the specified needs with 
              appropriate consideration for the public health and safety, and the cultural, societal, and 
              environmental considerations.<br>
              • PO4. Conduct investigations of complex problems: Use research-based knowledge and 
              research methods including design of experiments, analysis and interpretation of data, and 
              synthesis of the information to provide valid conclusions.<br>
              • PO5. Modern tool usage: Create, select, and apply appropriate techniques, resources, and 
              modern engineering and IT tools including prediction and modeling to complex 
              engineering activities with an understanding of the limitations.<br>
              • PO6. The engineer and society: Apply reasoning informed by the contextual knowledge 
              to assess societal, health, safety, legal and cultural issues and the consequent 
              responsibilities relevant to the professional engineering practice.<br>
              • PO7. Environment and sustainability: Understand the impact of the professional 
              engineering solutions in societal and environmental contexts, and demonstrate the 
              knowledge of, and need for sustainable development.<br>
              • PO8. Ethics: Apply ethical principles and commit to professional ethics and 
              responsibilities and norms of the engineering practice.<br>
              • PO9. Individual and teamwork: Function effectively as an individual, and as a member 
              or leader in diverse teams, and in multidisciplinary settings.<br>
              • PO10. Communication: Communicate effectively on complex engineering activities with 
              the engineering community and with society at large, such as, being able to comprehend 
              and write effective reports and design documentation, make effective presentations, and 
              give and receive clear instructions.<br>
              • PO11. Project management and finance: Demonstrate knowledge and understanding of 
              the engineering and management principles and apply these to one’s own work, as a 
              member and leader in a team, to manage projects and in multidisciplinary environments. <br>
              • PO12. Life-long learning: Recognize the need for and have the preparation and ability to 
              engage in independent and life-long learning in the broadest context of technological 
              change.</p>
      <script src="website3.js"></script>
</body>
</html>