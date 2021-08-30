
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
String aa=request.getParameter("mid");
session.setAttribute("mid",aa);
String a=request.getParameter("id");
session.setAttribute("iid",a);
String b=request.getParameter("msg");
session.setAttribute("oo",b);
String c=request.getParameter("email");
System.out.println(c);
session.setAttribute("emailid",c);


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update register set message=? where id='"+a+"'");

ps1.setString(1,b);

ps1.executeUpdate();

         
 response.sendRedirect("emailsend.jsp");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				



%>

