<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%
Integer id=(Integer)session.getAttribute("id");

String a=(String)session.getAttribute("uname");
String b=(String)session.getAttribute("email");
String c=(String)session.getAttribute("location");
String d=(String)session.getAttribute("latt");
System.out.println(d);
String e=(String)session.getAttribute("langi");



try
{
	Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into index_server(id,uname,email,location,lattitude,langitude) values(?,?,?,?,?,?)");
ps.setInt(1,id);
ps.setString(2,a);
ps.setString(3,b);
ps.setString(4,c);
ps.setString(5,d);
ps.setString(6,e);
ps.executeUpdate();
response.sendRedirect("update.jsp");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

