<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
<head>
<title>
nothing
</title>
</head>
<%

String no= request.getParameter("no");
String Exp= request.getParameter("Exp");
String CO1= request.getParameter("CO1");
String CO2= request.getParameter("CO2");
String CO3= request.getParameter("CO3");
String CO4= request.getParameter("CO4");
String CO5= request.getParameter("CO5");
String CO6= request.getParameter("CO6");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	PreparedStatement ps =con.prepareStatement("insert into exp(no,Exp,CO1,CO2,CO3,CO4,CO5,CO6) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,no);
		ps.setString(2,Exp);
		ps.setString(3,CO1);
		ps.setString(4,CO2);
		ps.setString(5,CO3);
		ps.setString(6,CO4);
		ps.setString(7,CO5);
		ps.setString(8,CO6);
		
		
		
	response.sendRedirect("./ExpMap.jsp");
	int x1= ps.executeUpdate();


}
catch(Exception e){
	out.println(e);
}



%>

 
 </body>
 
 </html>