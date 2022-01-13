<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %><%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%

String objective=request.getParameter("objective");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into objective(objective) values(?)");
	ps.setString(1,objective);

	response.sendRedirect("./objectivenew.jsp");
	int x= ps.executeUpdate();

}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>