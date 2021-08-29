<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String a=request.getParameter("uname");
String b=request.getParameter("pwd");
	

	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select uname,pwd from broker where uname='"+a+"' && pwd='"+b+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("brokerpage.jsp");
		session.setAttribute("uname",a);
		System.out.println(a);
		}
		else
		{
		out.println("enter correct  name and password");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
