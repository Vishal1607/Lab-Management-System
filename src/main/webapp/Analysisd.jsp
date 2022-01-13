<%@ page errorPage="error.jsp" language="java" contentType="application/xml" import="java.sql.*" %>
<%@ page import="java.lang.Class" %>
<html>
 <head>
 <title>
 nothing
 </title>
 </head>
 <%
Connection con=null;
Statement st=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	 con =DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
	 st =con.createStatement();
	String qry="select * from analysis";
	rs=st.executeQuery(qry);
	while(rs.next())
	{
		out.print("Number of Students Appeared:"+rs.getString(1)+"<br>");
		out.print("Number of Students Passed:"+rs.getString(2)+"<br>");
		out.print("Number of Students Passed:"+rs.getString(3)+"<br>");
		out.print("Percentage of Result:"+rs.getString(4)+"<br>");
		out.print("Number of Students with marks > 80 %:"+rs.getString(5)+"<br>");
		out.print("Number of Students with marks 60 < % < 80  :"+rs.getString(6)+"<br>");
	    out.print("Number of Students with marks 40 < % < 60  :"+rs.getString(7)+"<br>");
						
		
	}
	
	

}
catch(Exception e){
	out.println(e);
}

%>
 
 </body>
 
 </html>