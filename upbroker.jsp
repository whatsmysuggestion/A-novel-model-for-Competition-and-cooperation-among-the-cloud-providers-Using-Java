
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

	String uid1=request.getParameter("uid1");
    String brokerstatus ="Accept";
		
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update fileup set brokerstatus=? where userid='"+uid1+"' ");
				ps.setString(1,brokerstatus);
				int x=ps.executeUpdate();
				
				response.sendRedirect("brokerview.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			
	
		
	
 %>
