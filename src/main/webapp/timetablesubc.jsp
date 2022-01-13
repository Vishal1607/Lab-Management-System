<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %><%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%

String period= request.getParameter("period");
String days= request.getParameter("days");
String subject= request.getParameter("subject");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into subject(period,days,subject) values(?,?,?)");
	ps.setString(1,period);
	ps.setString(2,days);
	ps.setString(3,subject);

	response.sendRedirect("./timetable.jsp");
	int x= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>