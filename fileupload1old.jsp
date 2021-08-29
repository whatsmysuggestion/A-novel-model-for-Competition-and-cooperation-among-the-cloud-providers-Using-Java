<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

	
String userid=request.getParameter("userid");
System.out.println(userid);
String uname=request.getParameter("uname");
System.out.println(uname);
String fname=request.getParameter("fname");
System.out.println(fname);
String fid=request.getParameter("fid");
System.out.println(fid);
String key=request.getParameter("key");
System.out.println(key);
String date=request.getParameter("date");
System.out.println(date);


String saveFile="";
//String contentType1=request.getAttribute("file");
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


int ch;
    StringBuffer strContent = new StringBuffer("");
    FileInputStream fin = null;
	
	
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


fin = new FileInputStream(ff);
      while ((ch = fin.read()) != -1)
        strContent.append((char) ch);
      fin.close();
	  String ss=(strContent.toString());





%>






    

<%

String status="Processing";
FileInputStream fis;
try{

Connection con = databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("insert into fileupload(userid,uname,fname,fid,key,size,ff,date,status) values(?,?,?,?,?,?,?,?,'"+status+"')");
		//File f = new File(saveFile);
				ps.setString(1,userid);
                ps.setString(3,fname);
                ps.setString(2,uname);
fis = new FileInputStream(ff);


	  
	  
		 double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
	
        ps.setBinaryStream(7, (InputStream)fis, (int)(ff.length()));
        ps.setString(4,fid);
ps.setString(5,key);
ps.setString(8,date);
ps.setString(6,size3);

ps.executeUpdate();
			
		
			response.sendRedirect("fileupload.jsp?success");
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}





	}
	
				
	
						
%>
