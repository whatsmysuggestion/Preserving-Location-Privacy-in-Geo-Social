<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
   
	String name=request.getParameter("name");
	String password=request.getParameter("pass");
	
	
	
		
		
		
			
			
			if( name.equalsIgnoreCase("server") && password.equalsIgnoreCase("server"))
		{
		 %>
 <jsp:forward page="indexxx.jsp"/> 
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