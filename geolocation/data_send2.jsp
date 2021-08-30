ss<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%!
private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;
 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        }
%>
<%!
        private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          }
          %>
<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

	  
	  <%
	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

	    
%>
<%
java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;//String ffnn=request.getParameter("key1");
Integer id=(Integer)session.getAttribute("id");
//String ffn=request.getParameter("key");
String name=(String)session.getAttribute("nname");
String email=(String)session.getAttribute("eemail");
String fff=request.getParameter("file");
String location=(String)session.getAttribute("location");
String dname=(String)session.getAttribute("dname");
int a=(int) (Math.random() * 1000000);
int b=(int) (Math.random() * 100);
//String a="D:\\apache-tomcat-6.0.18\\webapps\\DpaaswithsecureDataForwarding\\file\\";
//String fname=a+ff;
/*
FileInputStream fis=null;
BufferedInputStream bis = null;
DataInputStream dis = null;


File image=new File(fname);
 StringBuffer fileData = new StringBuffer(1000);
        BufferedReader reader = new BufferedReader(
                new FileReader(fname));
        char[] buf = new char[1024];
 
        int numRead=0;
        while((numRead=reader.read(buf)) != -1){
            String readData = String.valueOf(buf, 0, numRead);
            fileData.append(readData);
            buf = new char[1024];
        }
 
        reader.close();
        String s1=(fileData.toString());
       
	   */





FileInputStream fis;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into server(uid,uname,uemail,location_name,dname,file,fff,date) values(?,?,?,?,?,AES_ENCRYPT(?,'key'),?,?)");
File f = new File(saveFile);
ps.setInt(1,id);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,location);
ps.setString(5,dname);
fis = new FileInputStream(f);
ps.setBinaryStream(6, (InputStream)fis, (int)(f.length()));

ps.setString(7,fff);

ps.setString(8,strDateNew);

ps.executeUpdate();
//out.print(passw);
//out.print(Successfully Registered);

response.sendRedirect("success.jsp?success");


}

catch(Exception e1)
{
out.println(e1.getMessage());
}
}
%>
</body>
</html>
