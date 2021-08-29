

<%@page import="java.sql.*, databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
 
<% 
	


	ResultSet rs1=null;
	int n=1;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(uid) from reg";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		session.setAttribute("uid",n);
		}
%>


       
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Construction - free website template</title>
<meta name="keywords" content="The Construction, free download, free website templates, CSS, HTML" />
<meta name="description" content="The Construction - free website template from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language = "javascript" type = "text/javascript">
function validation()
{
var u=document.form.uname.value;
var p=document.form.pwd.value;
var i = document.form.email.value;
var h = document.form.mno.value;
var f = document.form.address.value; 

if(u=="")
 {
    alert("enter your username");
    document.form.uname.focus();
    return false;
 }
if(p=="")
 {
    alert("enter your password");
    document.form.pwd.focus();
    return false;
 }
if(i=="")
 {
    alert("enter your email");
    document.form.email.focus();
    return false;
 }
 if(i.indexOf("@",0)<0)
 {
 alert("enter valid email");
 document.form.email.focus();
 return false;
 }
if(i.indexOf(".",0)<0)
 {
 alert("enter valid email");
 document.form.email.focus();
 return false;
 }
if(h=="")
 {
    alert("enter your mno");
    document.form.mno.focus();
    return false;
 }
 if(isNaN(h))
 {
    alert("enter your mno");
    document.form.mno.focus();
    return false;
 }
 if(h.length!=10)
{
 alert("enter 10 integers only");
 document.form.mno.focus();
 return false;
}
if(f=="")
{
 alert("enter your address");
 document.form.address.focus();
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
            <li><a href="#" class="current">Home</a></li>
            <li><a href="clouduserlgin.jsp">Cloud User</a></li>
            <li><a href="#">Cloud Broker</a></li>
            <li><a href="providerlgin.jsp">Service Provider</a></li>
            
        </ul>
   
    </div> <!-- end of menu -->
    
  <div id="templatemo_content"> 
    <div id="content_left"> 
      <div class="content_title_1"></div>
      <img src="images/reg-1 copy.png" width="250" height="350"> 
      <div class="content_title_2"></div>
      <div class="rc_btn_03"></div>
      <div class="cleaner">&nbsp;</div>
      <div class="cleaner_h20">&nbsp;</div>
      <div class="cleaner">&nbsp;</div>
    </div>
    <!-- end of content left -->
    <div id="content_right"> 
      <div class="content_title_1"><font color="#000066" size="+1"><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>User 
        Registration Form:</u></strong></strong></font></div>
      <form method="post" name="form" action="userreg1.jsp" onsubmit="return validation()">
        <table align="center"  width="327" height="350">
          <tr> 
            <td><font color="#000000"><strong>User Id</strong></font></td>
            <td><input type="text" name="uid" value="<%=n%>"></td>
          </tr>
          <tr> 
            <td width="94"><strong><font color="#000000">User Name</font></strong></td>
            <td width="144"><input type="text" name="uname" ></td>
          </tr>
          <tr> 
            <td><strong><font color="#000000">Pass Word</font></strong></td>
            <td><input type="password" name="pwd"></td>
          </tr>
          <tr> 
            <td><strong><font color="#000000">Email Id</font></strong></td>
            <td><input type="text" name="email"></td>
          </tr>
          <tr> 
            <td><strong><font color="#000000">Mobile No</font></strong></td>
            <td><input type="text" name="mno"></td>
          </tr>
          <tr> 
            <td><strong><font color="#000000">Address</font></strong></td>
            <td><input type="textarea" height="50" name="address"></td>
          </tr>
          <tr> 
            <td></td>
            <td><input type="submit" value="Register"> <input type="reset" name="clear"> 
            </td>
          </tr>
        </table>
        <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>
      </form>
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