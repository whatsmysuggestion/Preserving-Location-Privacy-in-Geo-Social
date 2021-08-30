<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.text.SimpleDateFormat"  errorPage="Error.jsp"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%

String location=request.getParameter("name");
System.out.println(location);
String lat=request.getParameter("lat");
System.out.println(lat);
String lng=request.getParameter("lng");
System.out.println(lng);

Integer id=(Integer)session.getAttribute("iid");

String uname=(String)session.getAttribute("nname");
String email=(String)session.getAttribute("eemail");

java.util.Date now = new java.util.Date();
String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
String strDateNew1 = sdf1.format(now);


int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;




String status="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into index(id,uname,email,location,lattitude,langitude,date,status) values(?,?,?,?,?,?,?,?)");
ps.setInt(1,id);

ps.setString(2,uname); 
ps.setString(3,email);
ps.setString(4,location);
ps.setString(5,lat);
ps.setString(6,lng);
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
</body>
</html>
