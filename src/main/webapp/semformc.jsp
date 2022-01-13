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
String classn= request.getParameter("classn");
String code= request.getParameter("code");
String Acadamic= request.getParameter("Acadamic");
String course= request.getParameter("course");
String Faculty= request.getParameter("Faculty");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into semform(semester,classn,code,Acadamic,course,Faculty) values(?,?,?,?,?,?)");
	ps.setString(1,semester);
	ps.setString(2,classn);
	ps.setString(3,code);
	ps.setString(4,Acadamic);
	ps.setString(5,course);
	ps.setString(6,Faculty);
	response.sendRedirect("./semform2.jsp");
	int x= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>