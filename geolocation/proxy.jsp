<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
   
	String name=request.getParameter("nname");
	String password=request.getParameter("npass");
	
	
	
		
		
		
			
			
			if( name.equalsIgnoreCase("proxy") && password.equalsIgnoreCase("proxy"))
		{
		 %>
 <jsp:forward page="proxxyy.jsp"/> 
	    	<%
			}
			
				
			if( name.equalsIgnoreCase("index_server") && password.equalsIgnoreCase("index_server"))
		{
		 %>
 <jsp:forward page="index_serverrr.jsp"/> 
	    	<%
			}
			
		
			
			
	    else
	     {
		 
		
		
	  out.println("Login Error-please check ur ID and password");
	  }

	
            %>
             </form>
       </body> 	
</html>