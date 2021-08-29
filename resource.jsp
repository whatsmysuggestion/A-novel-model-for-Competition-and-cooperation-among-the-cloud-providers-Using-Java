
<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
<% String a=(String)session.getAttribute("uname");
System.out.println(a);
%>


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
           <!-- <li><a href="clouduserlgin.jsp">Cloud User</a></li>-->
            <li><a href="brokerlgin.jsp" class="current">Cloud Broker</a></li>
			  <li><a href="brokerpage.jsp" class="current">Back</a></li>
            <!--<li><a href="providerlgin.jsp">Service Provider</a></li>-->
            
        </ul>
   
    </div> <!-- end of menu -->
    
  <div id="templatemo_content"> 
    <div class="content_title_1"><font color="#000066"><strong><u> Resource Capacities</u></strong></font></div>
    <fieldset style="border: 5px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:160px;  margin: 0px 0px;">
    <br></font>
    <table width="821" align="center">
      <tr> 
        <td width="210"> <table>
            <tr> 
              <td width="85"><font color="#0000FF"><strong>CloudSigma:</strong></font></td>
              <td width="111"><img src="images/p1.JPG" width="100"></td>
            </tr>
            <tr> 
              <td><font color="#0000FF"><strong>Rackspace:</strong></font></td>
              <td><img src="images/p2.JPG" width="100"></td>
            </tr>
            <tr> 
              <td><font color="#0000FF"><strong>Amazon:</strong></font></td>
              <td><img src="images/p3.JPG" width="100"></td>
            </tr>
            <tr> </table></td>
        <td width="599"><table width=596 height="68" >
            <tr> <br>
              <% 


try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from service";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	

  %>
              <td width="229" height="62"> <font color="#000000"> <strong> <font color="#FFFF00"> 
                CloudServer:</font> 
                <%=rs.getString("usertype")%>
                </strong> </font> </td>
              <td width="170"> <font color="#000000"> <strong> <font color="#FFFF00"> TotalSpace:</font> 
                <%=rs.getString("resource")%>
                GB</strong> </font> </td>
              <td width="181"> <font color="#000000"> <strong> <font color="#FFFF00"> ResourceUsed:</font> 
                <%=rs.getString("used")%>
                MB</strong> </font> </td>
            </tr>
			
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
          </table></td>
      </tr>
    </table>
    </fieldset>
    <br>
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