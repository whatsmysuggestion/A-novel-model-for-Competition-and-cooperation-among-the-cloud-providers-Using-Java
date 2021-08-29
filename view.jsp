
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
            <!--<li><a href="providerlgin.jsp">Service Provider</a></li>-->
            
        </ul>
   
    </div> <!-- end of menu -->
    
  
<div id="templatemo_content"> 
  <div id="content_left"> 
    <table>
      <tr> 
        <td><font color="#000000"><strong>UserId</strong></font></td>
        <td><font color="#000000"><strong>UserName</strong></font></td>
        <td><font color="#000000"><strong>FileName</strong></font></td>
        <td><font color="#000000"><strong>FileId</strong></font></td>
        <td><font color="#000000"><strong>Filekey</strong></font></td>
        <td><font color="#000000"><strong>Date</strong></font></td>
        <td><font color="#000000"><strong>Status</strong></font></td>
      </tr>
      <br>
      <% 


try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from fileupload";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	//File file =new File("E:/elumalai/IEEE Projects/document.pdf");


  %>
      <tr> 
        <td> <font color="#000066"> 
          <%=rs.getString("userid")%>
          </font> </td>
        <td> <font color="#000066"> 
          <%=rs.getString("uname")%>
          </font> </td>
        <td> <font color="#000066"> 
          <%=rs.getString("fname")%>
          </font> </td>
        <td> <font color="#000066"> 
          <%=rs.getString("fid")%>
          </font> </td>
        <td> <font color="#000066"> 
          <%=rs.getString("key")%>
          </font> </td>
        <td> <font color="#000066"> 
          <%=rs.getString("Date")%>
          </font> </td>
        <td><a href="Status.jsp"><font color="#000033"><em><strong>status</strong></em></font></a> 
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
    <div class="content_title_1"></div>
    <div align="center"
	  /div> 
      <div class="content_title_2"></div>
      <div class="rc_btn_03"></div>
      <div class="cleaner">&nbsp;</div>
      <div class="cleaner_h20">&nbsp;</div>
      <div class="cleaner">&nbsp;</div>
    </div>
    <!-- end of content left -->
    <div id="content_right"> 
      <div class="content_title_1"><font color="#000066"><strong><u>View CloudUser 
        Details:</u></strong></font></div>
    </div>
    <!-- end of content right -->
  </div>
  <!-- end of content -->
  <!--<a href="providerdetails.jsp"><b><font color="#330099"><strong><em><h3 align="right"><u>Click Here</u></h3></em></strong></font></b></a>
    -->
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
  <div id="templatemo_footer"> </div>
  <!-- end of footer -->
</div>
<!-- Free Website Templates @ www.TemplateMo.com -->
</body>
</html>