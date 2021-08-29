 
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat"%>	 
<% 
	


	ResultSet rs1=null;
	int m=1;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(fid) from fileup";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(1)==0)
		m=1;
		else
		m=rs1.getInt(1)+1;
		session.setAttribute("fid",m);
		}
%>

		
<%
 
 
 String n=(String)session.getAttribute("uid");
 System.out.println(n);
 
 String a=(String)session.getAttribute("uname");
 System.out.println(a);

 
%>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>
	 
	 
	 
	 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Construction - free website template</title>
<meta name="keywords" content="The Construction, free download, free website templates, CSS, HTML" />
<meta name="description" content="The Construction - free website template from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
function validation()
{
  
  var a=document.form.fname.value;
  var b=document.form.fid.value;
  /*var type=document.form.type.value;*/
  var d=document.form.file.value
  
  
  if(a=="")
  {
   alert(" please enter correct file name");
   document.form.fname.focus();
   return false;
  }
  
  if(b=="")
  {
  alert("please enter the file id");
  document.form.fid.focus();
  return false;
  }
  
/*if ( ( form.type[0].checked == false ) && ( form.type[1].checked == false )  && ( form.type[2].checked == false ))
  {
     alert ( "Please choose your file type" );
     return false;
  }*/


 if(d=="")
 
 {
 alert("please choose your file");
 document.form.file.focus();
 return false;
 }

}

</script>


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
    <p align="center"><font color="#000099" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome 
      &nbsp;&nbsp;&nbsp;<font color="#FF0000"> 
      <%=a%>
      </font></font></a></p>
    <br>
    <br>
    <div id="content_right"> 
      <div class="content_title_1"><font color="#000066"><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Upload 
        Data Here:</u></strong></strong></font></div>
      <table align="center" width="350" height="350">
        <form method="post" name="form" ENCTYPE="multipart/form-data" action="fileupload1.jsp" onsubmit="return validation()">
          <tr> 
            <td><font color="#000000"><strong>User Id </strong></font></td>
            <td><input type="text" name="userid" value="<%=n%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong><strong>User Name</strong></strong></font></td>
            <td><input type="text" name="uname" value="<%=a%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File Name</strong></font></td>
            <td><input type="text" name="fname"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File Id</strong></font></td>
            <td><input type="text" name="fid" value="<%=m%>"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>File key</strong></font></td>
            <td><input type="text" name="key"  value="K<%= (int) (Math.random() * 1000) %>"></td>
          </tr>
          <!-- <tr> 
            <td><font color="#000000"><strong><strong>File Type</strong></strong></font></td>
            <td><input type="radio" name="type"> <font color="#000000"><strong>Text</strong></font> 
              <input type="radio" name="type"> <font color="#000000"><strong>Image</strong></font> 
              <input type="radio" name="type"> <font color="#000000"><strong>Video</strong></font> 
            </td>
          </tr>-->
          <tr> 
            <td><font color="#000000"><strong>UploadFile&nbsp;&nbsp;</strong></font></td>
            <td><input type="file" name="ff"></td>
          </tr>
          <tr> 
            <td><font color="#000000"><strong>Date&nbsp;&nbsp;</strong></font></td>
            <td><input  name="date" value="<%=strDateNew1%>"></td>
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
	catch(Exception e1){
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