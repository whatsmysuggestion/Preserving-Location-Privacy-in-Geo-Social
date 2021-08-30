<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,databaseconnection1.*,databaseconnection2.*,databaseconnection3.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>



<%

	String id=(String)session.getAttribute("id");
	
	Blob file1= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		

	
	try
	{
		 con=databasecon.getconnection();

		ps = con.prepareStatement("select AES_DECRYPT(file,'key') from server where uid ='"+id+"'");
		rs = ps.executeQuery();
		while(rs.next())
		{
		file1=rs.getBlob("AES_DECRYPT(file,'key')");
		
		}
		int len1=(int)file1.length();
		
		
		//session.setAttribute("resumeBlob1",file1);
		byte[] ba = file1.getBytes(1, (int)file1.length());
		String filename="File";
			   
			response.setContentType("application/plain");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			
			
			os.write(ba);
			

			os.close();
				//response.sendRedirect("index.html");
	
	}
	
	
		catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}

	
	%>