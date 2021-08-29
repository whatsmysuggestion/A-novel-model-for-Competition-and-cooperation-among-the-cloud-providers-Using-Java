
<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Construction - free website template</title>
<meta name="keywords" content="The Construction, free download, free website templates, CSS, HTML" />
<meta name="description" content="The Construction - free website template from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_container">
<!-- Free CSS Templates @ www.TemplateMo.com -->
	<div id="templatemo_top_panel">
       <br><br><br>
          
    <p align="center"><font size="6"><strong><font color="#000066">A Novel Model for Competition 
      and Cooperation <br><br>Among Cloud Providers</font></strong></font></p>
			
            <div id="site_tagline"></div>
        </div>
        <div id="templatemo_searchbox">
            
        </div>
    
<!-- end of top panel -->
    
    <div id="templatemo_banner">
    
    	<div id="banner_content">
    	
        
      </div>
    </div> <!-- end of banner -->
    
    <div id="templatemo_menu">

        <ul>        
		    <li><a href="index.html" >Home</a></li>

            <li><a href="clouduserlgin.jsp" class="current">Cloud User</a></li>
			 <li><a href="clouduserpage.jsp" class="current">Back</a></li>
			<li><a href="index.html" class="current">Logout</a></li>  
            <!--<li><a href="providerlgin.jsp">Service Provider</a></li>-->
            
        </ul>
   
    </div> <!-- end of menu -->
    
  <div id="templatemo_content"> 
    <div class="content_title_1"><font color="#000066"><strong><u>View Publish 
      Offer </u></strong></font></div>
    <table width="943" border="1px">
      <tr bgcolor="#FF6600"> 
        <td width="98"><font color="#000000"><strong>Provider</strong></font></td>
        <td width="73"><font color="#000000"><strong>Package</strong></font></td>
        <td width="62"><font color="#000000"><strong>Cost</strong></font></td>
        <td width="62"><font color="#000000"><strong>Click Here</strong></font></td>
      </tr>
      <br>
      <% 
String a=(String)session.getAttribute("uname");
System.out.println(a);
String prov=null,pack1=null,cost1=null;

try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from provider1";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	
                prov=rs.getString("provider1");
				pack1=rs.getString("pack1");
				cost1=rs.getString("cost1");
				session.setAttribute("cost1",cost1);
  %>
      <tr> 
        <td> <font color="#000066"> <strong> 
          <%=prov%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=pack1%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=cost1%>
          </strong> </font> </td>
        <td><a class="pirobox" href="packupdate.jsp?cate=<%=pack1%>"> <font color="#99FF00"><strong>ClickHere</strong></font></a></td>
      </tr></tr>
      <%

     

}

st.close();

con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>
    </table>
    <br>
    <br>
    <table width="943" border="1px">
      <tr bgcolor="#FF6600"> 
        <td width="98"><font color="#000000"><strong>Provider</strong></font></td>
        <td width="73"><font color="#000000"><strong>Package</strong></font></td>
        <td width="62"><font color="#000000"><strong>Cost</strong></font></td>
        <td width="62"><font color="#000000"><strong>Click Here</strong></font></td>
      </tr>
      <br>
      <% 


String prov2=null,pack2=null,cost2=null;

try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from provider2";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	 prov2=rs.getString("provider2");
				pack2=rs.getString("pack2");
				cost2=rs.getString("cost2");
				session.setAttribute("cost2",cost2);

  %>
      <tr> 
        <td> <font color="#000066"> <strong> 
          <%=prov2%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=pack2%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=cost2%>
          </strong> </font> </td>
        <td ><a href="packupdate.jsp?cate=<%=pack2%>"><font color="#99FF00"><strong>ClickHere</strong></font></a></td>
      </tr></tr>
      <%

     

}

st.close();

con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>
    </table>
    <br>
    <br>
    <table width="943" border="1px" >
      <tr bgcolor="#FF6600"> 
        <td width="98"><font color="#000000"><strong>Provider</strong></font></td>
        <td width="73"><font color="#000000"><strong>Package</strong></font></td>
        <td width="62"><font color="#000000"><strong>Cost</strong></font></td>
        <td width="62"><font color="#000000"><strong>Click Here</strong></font></td>
      </tr>
      <br>
      <% 
String prov3=null,pack3=null,cost3=null;

try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from provider3";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	
prov3=rs.getString("provider3");
				pack3=rs.getString("pack3");
				cost3=rs.getString("cost3");
				session.setAttribute("cost3",cost3);
  %>
      <tr> 
        <td> <font color="#000066"> <strong> 
          <%=prov3%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=pack3%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=cost3%>
          </strong> </font> </td>
        <td ><a href="packupdate.jsp?cate=<%=pack3%>"><font color="#99FF00"><strong>ClickHere</strong></font></a></td>
      </tr></tr>
      <%

     

}

st.close();

con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>
    </table>
    <br>
    <br>
  </div>
    <!-- end of content left -->
   
    <!-- end of content right -->
  </div>
  <!-- end of content -->
     <!--<a href="providerdetails.jsp"><b><font color="#330099"><strong><em><h3 align="right"><u>Click Here</u></h3></em></strong></font></b></a>
    -->
  
  <!-- end of bottom panel -->
    
   <!-- end of footer -->
</div>
<!-- Free Website Templates @ www.TemplateMo.com -->
</body>
</html>