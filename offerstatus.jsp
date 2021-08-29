<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String fid1 = request.getParameter("fid1");

System.out.println(fid1);

String brokerstatus=null;
try
{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

String sss1 = "select * from fileup where fid='"+fid1+"'";

ResultSet rs1=st1.executeQuery(sss1);
while(rs1.next())
{
brokerstatus=rs1.getString("brokerstatus");
System.out.println(brokerstatus);
}

if(brokerstatus.equals("Accept"))
{
response.sendRedirect("offer.jsp");
}
else if(brokerstatus.equals("Processing"))
{
response.sendRedirect("offer1.jsp");
}








}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>