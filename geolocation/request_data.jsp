
<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8" />
	<title>Preserving Location Privacy in Geo-Social
Applications</title>
	<meta name="keywords" content="avocado template, free template, minimal layout, html css" />
	<meta name="description" content="Avocado is free template with minimal layout using yellow background and green color menu. Page content is centered in both horizontal and vertical aligns." />

	<!-- favicon-->
	<link rel="shortcut icon" href="./favicon.png" />		
		
	<!-- 960 grid-->
	<link rel="stylesheet" href="./css/960_24_col.css" />
		
	<!-- templatemo style-->
	<link rel="stylesheet" href="./templatemo_style.css" />
		
	<!-- jquery plugin -->
	<script language="javascript" type="text/javascript" src="datetimepicker.js">



</script>
	<script src='./js/jquery.min.js'></script>
	<script src='./js/jquery-ui.min.js'></script>
		
	<!-- google map -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
		
	<!-- templatemo config -->
	<script src="./js/templatemo_config.js"></script>
        
    <script>
	function clearText(field)
	{
		if (field.defaultValue == field.value) field.value = '';
		else if (field.value == '') field.value = field.defaultValue;
	}
	</script>

</head>

<style type="text/css">

.button {
	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
<style type="text/css">
.a{
background-color:#C4DF8C;
border-color:red;


}
.c{
background-color:#666666;
border-color:red;


}
.d{
background-color:#FFCC00;
border-color:red;


}

#b:hover{
background-color:#CC9999;
}
</style>



<body>
			<div class="container_24">
					<div class="grid_24 alpha omega" id="banner">
							<div class="grid_18 alpha">
								
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
      <p><font size="5" ><b>Preserving Location Privacy in Geo-Social Applications</b></font> 
      </p>
    </div>
							<div class="grid_6 omega">
								<form action="index.html">
									<input name="search" type="text" id="search" onfocus="clearText(this)" onblur="clearText(this)"   value="Home..." maxlength="40" />
								</form>
							</div>
                            <a href="http://www.clipartlogo.com/free/tattoo-letter-alphabet.html" title="tattoo letter alphabet clipart from www.clipartlogo.com" class="content_top"  target="_blank"><img src="images/content_top.png"  title="tattoo letter alphabet clipart" /></a>
					</div>
					
					
					
					
					
					
					<div class="grid_18 alpha" id="mid_container_wap">
						<div class="grid_18 alpha mid_container" id="about">
                            
								<div class="prefix_1 grid_16 alpha">
								<h1 align="center"><font size="2"><b>
								
								<marquee hspace=20 vspace=20 width=250  align=middle>Send Secret to friends Page!</marquee>
								</b></font></h1>
                                    
									<table align="center" width="465" height="88">
				
				<tr>
				
				 <td width="65" bgcolor="#006600"><font color="#FFFFFF" size="+1">User Id</font></td>
            <td width="50" bgcolor="#006600"><p><font color="#FFFFFF" size="+1">User </font></p>
                    <p><font color="#FFFFFF" size="+1">Name</font></p></td>
			  <td width="41" bgcolor="#006600"><font color="#FFFFFF" size="+1">Email</font></td>
			 <td width="41" bgcolor="#006600"><font color="#FFFFFF" size="+1">Location name</font></td>
			
			 

			
			 <td width="135" bgcolor="#006600"><font color="#FFFFFF" size="+1">data_name</font></td>
			<td width="135" bgcolor="#006600"><font color="#FFFFFF" size="+1">response</font></td>
			
				</tr>
				 <%
		 
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String x="waiting";
int id=0;
String id1=null,id2=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  uid,uname,uemail,location_name,dname from server ");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("ido",s);

  s1=rs.getString(2);
 session.setAttribute("uname",s1);

   s2=rs.getString(3);
   session.setAttribute("email",s2);
  
    s3=rs.getString(4);
	session.setAttribute("location",s3);



s4=rs.getString(5);








 %>
				<tr  bgcolor="#FFCCFF"> 
		  <td bgcolor="#000000"> 
             <font color="#0000000"><%=s%></font>
            </td>
            	  <td bgcolor="#000000"> 
              <font color="#0000000"><%=s1%></font>
            </td>
      	  <td bgcolor="#000000"> 
               <font color="#0000000"><%=s2%></font>
            </td>
          	  <td bgcolor="#000000"> 
               <font color="#0000000"><%=s3%></font>
            </td>
         	 
			<td bgcolor="#000000"> 
               <font color="#0000000"><%=s4%></font>
            </td>
			
			<td bgcolor="#000000">  <a href="update5.jsp?as=<%=id%>"><font color="#0000000">send to user</font></a></td>
  
			
				    </tr>
				 <%
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
				
				
				</table>
                               	</div>
					</div>
							
                           
							
							
					</div>
                    
					<div class="grid_6 omega">
						<div class="grid_6 alpha omega">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
	  <img src="favicon.png"><a  href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="#000000"><b>
	  Home</b></font></a>
    </div>
						</div>
                    
				<div class="grid_24 alpha omega" id="footer" >
					</div>
		</div>
</body>
<script type='text/javascript' src='js/logging.js'></script>
</html>