<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String a=request.getParameter("uname");
String b=request.getParameter("pwd");
int uid=0;

	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select uname,pwd,uid from reg where uname='"+a+"' && pwd='"+b+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("clouduserpage.jsp");
		session.setAttribute("uname",a);
		session.setAttribute("uid",Integer.toString(rs.getInt("uid")));
		System.out.println(uid);
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
