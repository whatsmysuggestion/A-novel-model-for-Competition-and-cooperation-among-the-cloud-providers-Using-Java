<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>

<%
		 String server=(String)session.getAttribute("cloudserver");
	 Integer used1 = (Integer)session.getAttribute("used");
int s=0;
int s1=0;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  used from service where uname='"+server+"'");
ResultSet rs=ps.executeQuery();
	
if(rs.next())
 {
 s=rs.getInt(1);
 s1=used1+s;
 System.out.println(s1); 
 
       
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
<%
		
						
				try{
				Connection	con1=databasecon.getconnection();
				PreparedStatement ps1=con1.prepareStatement("Update service set used=? where uname='"+server+"' ");
				ps1.setInt(1,s1);
				int x1=ps1.executeUpdate();
				
				response.sendRedirect("succcloud.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}%>
