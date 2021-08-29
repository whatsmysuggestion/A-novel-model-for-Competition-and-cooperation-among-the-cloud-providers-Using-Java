<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%


String packstatus=null;
try
{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

String sss1 = "select * from upload";

ResultSet rs1=st1.executeQuery(sss1);
while(rs1.next())
{
packstatus=rs1.getString("packstatus");
System.out.println(packstatus);
}

if(packstatus.equals("Accept"))
{
response.sendRedirect("brokerview1.jsp");
}
else if(packstatus.equals("Processing"))
{
response.sendRedirect("brokerview.jsp");
}








}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>