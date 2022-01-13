<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
<head>
<title>
nothing
</title>
</head>
<%

String rollno= request.getParameter("rollno");
String name= request.getParameter("name");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into attendence(rollno,name) values(?,?)");
		ps.setString(1,rollno);
		ps.setString(2,name);
		
		
		
	response.sendRedirect("./attendence.jsp");
	int x1= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}



%>

 
 </body>
 
 </html>