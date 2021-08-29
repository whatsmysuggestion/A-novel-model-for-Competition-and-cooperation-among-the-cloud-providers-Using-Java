<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>


<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

int  u = Integer.parseInt(request.getParameter("uid"));
String a = request.getParameter("uname");
String b = request.getParameter("pwd");
String c = request.getParameter("email");
String d = request.getParameter("mno");
String e = request.getParameter("address");




try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into reg(uid,uname,pwd,email,mno,address) values("+u+",'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
response.sendRedirect("clouduserlgin.jsp?Message=success");



}

catch(Exception ex)
{
	out.println(ex);
}
%>
