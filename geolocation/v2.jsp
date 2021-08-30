
 <%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
 <%
 String key=request.getParameter("location");
 
 Integer s10=(Integer)session.getAttribute("s10");
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
String x="waiting";
int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select location from proxy where location='"+key+"'");
ResultSet rs=ps.executeQuery();
	
if(rs.next())
 {
 s=rs.getString(1); 
 System.out.println(s);
  
	if(key.equals(s))
	{
	response.sendRedirect("up.jsp?success");
	}
	
 

else
{
response.sendRedirect("cloud.jsp?fail");
}
}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>