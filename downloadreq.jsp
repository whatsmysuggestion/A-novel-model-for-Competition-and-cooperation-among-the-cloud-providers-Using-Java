
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
    <div class="content_title_1"><font color="#000066"><strong><u>File Download 
      Data </u></strong></font></div>
    <table width="943" >
      <tr bgcolor="#FF6600"> 
        <td width="52" height="37"><font color="#000000"><strong>UserId</strong></font></td>
        <td width="98"><font color="#000000"><strong>UserName</strong></font></td>
        <td width="73"><font color="#000000"><strong>FileName</strong></font></td>
        <td width="62"><font color="#000000"><strong>FileId</strong></font></td>
      
    
        <td width="111"><font color="#000000"><strong>BrokerStatus</strong></font></td>
        <td width="111"><font color="#000000"><strong>ServerStatus</strong></font></td>
		<td width="111"><font color="#000000"><strong>Cloudserver</strong></font></td>
		<td width="111"><font color="#000000"><strong>DownloadRequest</strong></font></td>
      </tr>
      <br>
      <% 


 String n=(String)session.getAttribute("uid");
 System.out.println(n);
try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from fileup where brokerstatus='Accept' and serverstatus='Accept' and userid='"+n+"'";

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	

  %>
      <tr> 
        <td height="39"> <font color="#000066"> <strong> 
          <%=rs.getString("userid")%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=rs.getString("uname")%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=rs.getString("fname")%>
          </strong> </font> </td>
        <td> <font color="#000066"> <strong> 
          <%=rs.getString("fid")%>
          </strong> </font> </td>
      
      
        <td> <font color="#FF0000"> <strong> 
          <%=rs.getString("brokerstatus")%>
          </strong> </font> </td>

        <td> <font color="#FF0000"> <strong> 
          <%=rs.getString("serverstatus")%>
          </strong> </font> </td>
		     <td> <font color="#FF0000"> <strong> 
          <%=rs.getString("cloudserver")%>
          </strong> </font> </td>
		   <td ><a href="dwnreq1.jsp?fid1=<%=rs.getString("fid")%>"><font color="#FFFF00"><strong> 
          Download</strong></font></a></td>
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