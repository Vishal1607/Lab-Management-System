<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %><%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%

String semester= request.getParameter("semester");
String string2= request.getParameter("string2");
String string3= request.getParameter("string3");
String string4= request.getParameter("string4");
String string5= request.getParameter("string5");
String string6= request.getParameter("string6");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into sem(semester,string2,string3,string4,string5,string6) values(?,?,?,?,?,?)");
	ps.setString(1,semester);
	ps.setString(2,string2);
	ps.setString(3,string3);
	ps.setString(4,string4);
	ps.setString(5,string5);
	ps.setString(6,string6);
	response.sendRedirect("./semester.jsp");
	int x= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>