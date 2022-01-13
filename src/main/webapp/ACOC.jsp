<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
<head>
<title>
nothing
</title>
</head>
<%

String CO= request.getParameter("CO");
String Target= request.getParameter("Target");
String Actual= request.getParameter("Actual");
String YN= request.getParameter("YN");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into aconew(CO,Target,Actual,YN) values(?,?,?,?)");
		ps.setString(1,CO);
		ps.setString(2,Target);
		ps.setString(3,Actual);
		ps.setString(4,YN);
		
		
	response.sendRedirect("./ACOnew.jsp");
	int x1= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}



%>

 
 </body>
 
 </html>