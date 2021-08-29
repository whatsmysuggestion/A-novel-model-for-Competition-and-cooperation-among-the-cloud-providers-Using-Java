
<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
<% String a=(String)session.getAttribute("usertype");
System.out.println(a);
%>



<html>
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
            <li><a href="#" class="current">Home</a></li>
            <li><a href="clouduserlgin.jsp">Cloud User</a></li>
            <li><a href="brokerlgin.jsp">Cloud Broker</a></li>
            <li><a href="providerlgin.jsp">Service Provider</a></li>
            
        </ul>
   
    </div> <!-- end of menu -->
    
  <div id="templatemo_content"> 
    <div id="content_left"> 
      <div class="content_title_1">Objective</div>
      <div><img src="images/res2.jpeg" width="250" height="250"></div>
      <div class="content_title_2"></div>
      <div class="rc_btn_03"></div>
      <div class="cleaner">&nbsp;</div>
      <div class="cleaner_h20">&nbsp;</div>
      <div class="cleaner">&nbsp;</div>
    </div>
    <!-- end of content left -->
    <div id="content_right"> 
      <div class="content_title_1"><font color="#000066" size="+1"><strong><u>View ServiceProvider Details</u></strong></font></div>
      <table>
        <tr> 
          <td><font color="#000000"><strong>UserType</strong></font></td>
          <td><font color="#000000"><strong>AvailableResource</strong></font></td>
		   <td><font color="#000000"><strong>PublishOffers</strong></font></td>
	    </tr>
	 
	 
	 
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
	 
	 
	
	
	<tr> 
          <td> <font color="#000066"> 
            <%=rs.getString("usertype")%>
            </font> </td>
          <td> <font color="#000066"> 
            <%=rs.getString("resource")%>
            </font> </td> 
			
<td><a href="offers.jsp"><font color="#000033"><em><strong>Clickforoffers</strong></em></font></a> 
          </td>
	 
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
      </table>
	 
	 
	  </div>
    <!-- end of content right -->
  </div>
  <!-- end of content -->
    
    
  <div id="templatemo_bottom_panel"> 
    <div id="templatemo_bottom_panel_top"></div>
    <div id="bottom_panel_content"> 
      <div class="bottom_content_box"> </div>
      <div class="bottom_content_box"> </div>
      <div class="bottom_content_box"> </div>
      <div class="cleaner_h30">&nbsp;</div>
    </div>
    <div id="templatemo_bottom_panel_bottom"></div>
  </div>
  <!-- end of bottom panel -->
    
    <div id="templatemo_footer">
     
  </div> <!-- end of footer -->
</div>
<!-- Free Website Templates @ www.TemplateMo.com -->
</body>
</html>