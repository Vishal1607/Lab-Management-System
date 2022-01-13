<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %><%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%

String appeared=request.getParameter("appeared");
String passed=request.getParameter("passed");
String failed=request.getParameter("failed");
String result=request.getParameter("result");
String percent80=request.getParameter("percent80");
String percent8060=request.getParameter("percent8060");
String percent6040=request.getParameter("percent6040");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into analysis(appeared,passed,failed,result,percent80,percent8060,percent6040) values(?,?,?,?,?,?,?)");
	ps.setString(1,appeared);
	ps.setString(2,passed);
	ps.setString(3,failed);
	ps.setString(4,result);
	ps.setString(5,percent80);
	ps.setString(6,percent8060);
	ps.setString(7,percent6040);
	int x= ps.executeUpdate();
	session.setAttribute("msg","Data Inserted Successfully");
	response.sendRedirect("./Analysisshow.jsp");
	

}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>