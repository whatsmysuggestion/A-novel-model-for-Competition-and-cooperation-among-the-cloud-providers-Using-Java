
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>

<%
       String filid=request.getParameter("filid");
	   System.out.println(filid);
	String cloudserver=request.getParameter("cloudserver");
	session.setAttribute("cloudserver",cloudserver);

		 System.out.println(cloudserver);
		  
		   
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update fileup set cloudserver=? where fid='"+filid+"' ");
				ps.setString(1,cloudserver);
				int x=ps.executeUpdate();
				
				
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			

		
	
 %>
<% int filesize1=0;
      int used1=0;
	 filesize1 = Integer.parseInt(request.getParameter("filsize"));
	
		 System.out.println(filesize1);
		int used=used1+filesize1;	
		System.out.println(used);	
		session.setAttribute("used",used);				
				try{
				Connection	con1=databasecon.getconnection();
				PreparedStatement ps1=con1.prepareStatement("Update service set used=? where uname='"+cloudserver+"' ");
				ps1.setInt(1,used);
				
				int x1=ps1.executeUpdate();
				
				response.sendRedirect("serverupdate1.jsp?message=success");
				}
				catch (Exception ex1) 
				{
					out.println(ex1.getMessage());
				}
		
			

		
	
 %>
