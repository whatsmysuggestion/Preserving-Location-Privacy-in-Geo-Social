
 <%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
 <%
 String key=request.getParameter("key");
 String a=request.getParameter("id");
 session.setAttribute("ip",a);
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;

int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select dname from server where dname='"+key+"'");
ResultSet rs=ps.executeQuery();
	
if(rs.next())
 {
 s=rs.getString(1); 
 System.out.println(s);
  
	if(key.equals(s))
	{
	response.sendRedirect("update4.jsp?success");
	}
	
 

else
{
response.sendRedirect("fail.jsp?fail");
}
}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>