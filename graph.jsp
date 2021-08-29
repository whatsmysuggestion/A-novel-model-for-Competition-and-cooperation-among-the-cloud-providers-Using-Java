<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
String query="SELECT uname,usertype from service";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/novel","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("Total=1500GB", "ResourceAllocation", "ServerUsage",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("c://logotype.jpg"), chart, 600, 250);
response.sendRedirect("graph1.jsp");
}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>

