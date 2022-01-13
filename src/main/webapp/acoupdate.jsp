<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/miniproject";%>
<%!String user = "root";%>
<%!String psw = "#Vishal1607";%>
<%
String id = request.getParameter("id");
String CO=request.getParameter("CO");
String Target=request.getParameter("Target");
String Actual=request.getParameter("Actual");
String YN=request.getParameter("YN");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","#Vishal1607");
String sql="Update users set id=?,CO=?,Target=?,Actual=?,YN=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, CO);
ps.setString(3, Target);
ps.setString(4, Actual);
ps.setString(5, YN);
response.sendRedirect("./ACOnew.jsp");
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>