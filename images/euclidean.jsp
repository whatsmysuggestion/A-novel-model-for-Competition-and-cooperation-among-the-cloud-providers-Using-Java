<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.math.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.security.SecureRandom"%>



<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%

String a=request.getParameter("x");
String b=request.getParameter("y");

Double a1= Double.parseDouble(a);
Double a2= Double.parseDouble(b);

Double c=Math.sqrt(a2-a1);

System.out.println(c);


%>



<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carpet Theme - Free Website Template</title>
<meta name="keywords" content="carpet, web theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Carpet theme is a free website template provided by tooplate.com" />
<link href="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/css/contentslider.css" />
<script type="text/javascript" src="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/js/contentslider.js">

/***********************************************
* Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>
<script language="javascript" type="text/javascript" src="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/datetimepicker.js">



</script>
<style>
STableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #bfbf00;
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
   
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#00bfbf;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #aaff56 5%, #00bfbf 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #aaff56), color-stop(1, #00bfbf) ); 
	background:-moz-linear-gradient( center top, #aaff56 5%, #00bfbf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#aaff56", endColorstr="#00bfbf");	background: -o-linear-gradient(top,#aaff56,00bfbf);

	background-color:#aaff56;

	border:1px solid #bfbf00;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:10px;

	font-size:15px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#191919;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #7f00ff 5%, #bfbf00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #7f00ff), color-stop(1, #bfbf00) );
	background:-moz-linear-gradient( center top, #7f00ff 5%, #bfbf00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#7f00ff", endColorstr="#bfbf00");	background: -o-linear-gradient(top,#7f00ff,bfbf00);

	background-color:#7f00ff;
	border:0px solid #bfbf00;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #7f00ff 5%, #bfbf00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #7f00ff), color-stop(1, #bfbf00) );
	background:-moz-linear-gradient( center top, #7f00ff 5%, #bfbf00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#7f00ff", endColorstr="#bfbf00");	background: -o-linear-gradient(top,#7f00ff,bfbf00);

	background-color:#7f00ff;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}


</style>


</head>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	<h1>&nbsp;</h1>
    <h1><font ><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Incremental Affinity Propagation Clustering Based</b></font></h1>
    <h1><font ><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; on Message Passing</b></font></h1>
  
		<div id="tooplate_header">
			<div id="site_title"><h1></h1></div>
			<div id="tooplate_menu">
				<ul>
					<li><a href="file:///c|/docume%7e1/ahieezer/locals%7e1/temp/rar$dia0.432/index.html" class="current">Home</a></li>
					<li><a href="file:///c|/docume%7e1/ahieezer/locals%7e1/temp/rar$dia0.432/new.jsp">Back</a></li>
					
				</ul>    	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
		
		<div id="tooplate_middle">
			
			
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
		
		<div id="tooplate_main_top"></div>
		
    <div id="tooplate_main"> 
      <div class="col_w900 col_w900_last">
       
	   <form action="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/success.jsp">
	
	   
	   <table width="766" height="407">
	   
	   <tr><td height="55" colspan="2" align="center">
	   <font size="4" color="#660033"><b>Page for Find The Euclidean distance</b></font></td></tr>
	   
	   <tr>
	   
	   <td width="404"><table width="365" height="207">
           
		   <tr><td><font size="3" color="#000000"><b> Similarity value1 is</b></font></td>
		   <td><input type="text" name="value1" value="<%=a%>"></td>
		   </tr>
		   
		   <tr><td><font size="3" color="#000000"><b>Similarity value 2 is</b></font></td>
		   <td><input type="text" name="value2" value="<%=b%>"></td>
		   </tr>
		   <tr><td><font size="3" color="#990000"><b>The Ecludian disatance is</b></font></td>
		   <td><input type="text" name="ecludian" value="<%=c%>"></td>
		   </tr>
		   <tr><td colspan="2" align="center" ><input type="submit" value="Clustered"></td></tr>
		   
		   </table></td>
		   
		   
		   <td width="350"><img src="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/images/gallery/ecludian.jpg" width="350" height="96">
		   <img src="file:///C|/DOCUME%7E1/Ahieezer/LOCALS%7E1/Temp/Rar$DIa0.432/images/gallery/euclidian.jpg" width="350" height="204"></td>
	   
	   </tr></table>
	   
	   
	   
	   
	   
	   
	   
	   
	   
					
					</form>
	   
	   
	   
	   
	   
	   
					
					<div class="cleaner"></div>
				</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of main -->
		<div id="tooplate_main_bot"></div>
		
		
    <div id="tooplate_footer"> </div>
	</div> <!-- main wrapper -->
</div> <!-- wrapper  -->

</body>
</html>


</body>
</html>
