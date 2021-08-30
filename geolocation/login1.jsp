
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String email=null;
int id;
String name = request.getParameter("name");
	//session.setAttribute("oname",name);
String password = request.getParameter("pass");

try
			{
			Connection con=databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from register where name='"+name+"' and password='"+password+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct name, password");
	
	}
	else{
	
	
	id=rs.getInt("id");
	session.setAttribute("id",id);
	
	name=rs.getString("name");
		session.setAttribute("nname",name);
	email=rs.getString("email");
	session.setAttribute("eemail",email);
	//System.out.println(email);
	
	response.sendRedirect("user.jsp");
	
	
	
	
			
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


