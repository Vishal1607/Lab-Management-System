<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %><%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%

String day= request.getParameter("day");
String subject1= request.getParameter("subject1");
String subject2= request.getParameter("subject2");
String subject3= request.getParameter("subject3");
String subject4= request.getParameter("subject4");
String subject5= request.getParameter("subject5");
String subject6= request.getParameter("subject6");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into timetable(day,subject1,subject2,subject3,subject4,subject5,subject6) values(?,?,?,?,?,?,?)");
	ps.setString(1,day);
	ps.setString(2,subject1);
	ps.setString(3,subject2);
	ps.setString(4,subject3);
	ps.setString(5,subject4);
	ps.setString(6,subject5);
	ps.setString(7,subject6);

	response.sendRedirect("./timetable2.jsp");
	int x= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>