

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

	String fid1=request.getParameter("fid1");
    String serverstatus ="Accept";
		
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update fileup set serverstatus=? where fid='"+fid1+"' ");
				ps.setString(1,serverstatus);
				int x=ps.executeUpdate();
				
				response.sendRedirect("amazon.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			
	
		
	
 %>
