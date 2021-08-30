<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.text.SimpleDateFormat"  %>
<%@ page import="java.io.*"%>
<%

String a= request.getParameter("name");
System.out.println(a);
String b = request.getParameter("lat");
System.out.println(b);
String c = request.getParameter("lng");
System.out.println(c);
Integer id=(Integer)session.getAttribute("id");
System.out.println(id);
String name=(String)session.getAttribute("nname");
System.out.println(name);
String email=(String)session.getAttribute("eemail");
System.out.println(email);


String status="waiting";

java.util.Date now = new java.util.Date();
String DATE_FORMAT1 = "yyyy/MM/dd HH:mm:ss";
SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
String strDateNew1 = sdf1.format(now);

try
{
	Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into proxy(id,uname,email,location,lattitude,langitude,date,status) values (?,?,?,?,?,?,?,?)");
ps.setInt(1,id);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,a);
ps.setString(5,b);

ps.setString(6,c);
ps.setString(7,strDateNew1);
ps.setString(8,status);
ps.executeUpdate();

response.sendRedirect("success.jsp");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

