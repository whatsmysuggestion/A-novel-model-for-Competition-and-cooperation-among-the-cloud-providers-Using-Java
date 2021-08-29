<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String name = null;
   String uname = request.getParameter("uname");
   String pwd = request.getParameter("pwd");
   String usertype=request.getParameter("usertype");
      
   String s = "select * from service where uname='"+uname+"' and pwd='"+pwd+"' and usertype='"+usertype+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   session.setAttribute("uname",rs.getString("uname"));

   if(usertype.equals("serviceprovider1"))
   {
		response.sendRedirect("amazon.jsp");
  
   }
   if(usertype.equals("serviceprovider2"))
   {
		response.sendRedirect("rackspace.jsp");
   
   }
     if(usertype.equals("serviceprovider3"))
   {
		response.sendRedirect("cloudsigma.jsp");
   
   }
   }
   else
   out.print("Please check your login credentials");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>