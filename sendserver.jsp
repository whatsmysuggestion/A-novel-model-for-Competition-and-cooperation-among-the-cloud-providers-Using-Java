<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
  <% 
	String fid1=request.getParameter("fid1");
try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from fileup where fid='"+fid1+"'";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	

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
         <li><a href="index.html" >Home</a></li>

            <li><a href="clouduserlgin.jsp" class="current">Cloud User</a></li>
			 <li><a href="clouduserpage.jsp" class="current">Back</a></li>
			<li><a href="index.html" class="current">Logout</a></li>  
            
        </ul>
   
    </div> <!-- end of menu -->
    
  <div id="templatemo_content"> 
    <div id="content_left"> 
      <div class="content_title_1"></div>
      <div align="left"> <img src="images/upload-8.png" width="250" height="250"> 
      </div>
      <div class="content_title_2"></div>
      <div class="rc_btn_03"></div>
      <div class="cleaner">&nbsp;</div>
      <div class="cleaner_h20">&nbsp;</div>
      <div class="cleaner">&nbsp;</div>
    </div>
    <!-- end of content left -->
    
    <br>
    <br>
    <div id="content_right"> 
      <div class="content_title_1"><font color="#000066"><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Request Send To Cloud Server 
        </u></strong></strong></font></div>
      <table align="center" width="350" height="350">
        <form method="post" name="form"  action="serverupdate.jsp" onSubmit="return validation()">
          <tr> 
            <td><font color="#000000"><strong>User Id </strong></font></td>
            <td><input type="text" name="userid" value="<%=rs.getString("userid")%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>User Name</strong></font></td>
            <td><input type="text" name="uname" value="<%=rs.getString("uname")%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File Name</strong></font></td>
            <td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File Id</strong></font></td>
            <td><input type="text" name="filid" value="<%=rs.getString("fid")%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File key</strong></font></td>
            <td><input type="text" name="key"  value="<%=rs.getString("key")%>"></td>
          </tr>
       
          <tr> 
            <td><font color="#000000"><strong>Date&nbsp;&nbsp;</strong></font></td>
            <td><input  name="date" value="<%=rs.getString("date")%>"></td>
          </tr>
		    <tr> 
            <td><font color="#000000"><strong>FileSize&nbsp;&nbsp;</strong></font></td>
            <td><input  name="filsize" value="<%=rs.getString("size")%>"></td>
          </tr>
		    <tr> 
            <td><font color="#000000"><strong>PackagePlan&nbsp;&nbsp;</strong></font></td>
            <td><input  name="pack" value="<%=rs.getString("pack")%>"></td>
          </tr>
		     <tr> 
            <td><font color="#000000"><strong>Cost&nbsp;&nbsp;</strong></font></td>
            <td><input  name="cost" value="<%=rs.getString("cost")%>"></td>
          </tr>
		   <tr> 
              <td><font color="#000000"><strong>User Type</strong></font></td>
              <td><select name="cloudserver">
                  <option value>----select Cloud----</option>
                  <option value="amazon">Amazon</option>
                  <option value="rackspace">Rackspace</option>
                  <option value="cloudsigma">Cloudsigma</option>
                </select> </td>
            </tr>
          <tr> 
            <td></td>
            <td><input type="submit" value="submit"> <input type="reset" value="clear"> 
            </td>
          </tr>
        </form>
      </table>
      <%
	}
	}
	catch(Exception e1)
	{
		out.println(e1.getMessage());
	}
%>
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