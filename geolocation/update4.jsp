<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
String a=(String)session.getAttribute("ip");
System.out.println(a);
String b="waiting";


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update server set request=? where uid='"+a+"'");

ps1.setString(1,b);

ps1.executeUpdate();

         
 response.sendRedirect("sendrequest2.jsp?success");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
   %>				
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         

