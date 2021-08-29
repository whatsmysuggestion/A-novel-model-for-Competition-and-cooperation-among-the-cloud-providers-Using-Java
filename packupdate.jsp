
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%
 String n=(String)session.getAttribute("uid");
 System.out.println(n);
String cate=request.getParameter("cate");
System.out.println(cate);

String cost1=(String)session.getAttribute("cost1");
 System.out.println(cost1);

String packstatus="update";
    
		
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update fileup set pack=?,cost=?,packstatus=? where userid='"+n+"'");
				ps.setString(1,cate);
					ps.setString(2,cost1);
					ps.setString(3,packstatus);
				int x=ps.executeUpdate();
				
				response.sendRedirect("succ.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			
	
	
	
 %>

