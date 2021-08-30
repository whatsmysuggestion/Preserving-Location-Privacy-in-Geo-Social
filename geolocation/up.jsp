<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
Integer a=(Integer)session.getAttribute("oo");
String b="waiting";


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update proxy set status1=? where id='"+a+"'");

ps1.setString(1,b);

ps1.executeUpdate();

         
 response.sendRedirect("success.jsp?success");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
   %>				
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         

