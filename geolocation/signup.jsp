<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%

String name=null,email=null;


String a=request.getParameter("name");
String b=request.getParameter("pass");

String d=request.getParameter("email");
String e=request.getParameter("phone");
String g=request.getParameter("address");
String f=request.getParameter("dob");



int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;


java.util.Date now = new java.util.Date();

Date date = new SimpleDateFormat("dd-MM-yyyy").parse(f);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into register(name,password,dob,phone,address,email) values(?,?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,a2);

ps.setString(4,e);

ps.setString(5,g);

ps.setString(6,d);

ps.executeUpdate();
 
response.sendRedirect("index.html?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
