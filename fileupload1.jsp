<%@page import="com.oreilly.servlet.multipart.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.* "%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.text.DecimalFormat" %>
<html>
<head>
</head>
<body>
<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Documents\\");
		String paramname=null;
		String userid=null,fid=null,uname=null,fname=null,size=null,file=null,date=null,key=null,filename1=null,pack=null,cost=null;

		String serverstatus="Processing";
		String brokerstatus="Processing";
		String packstatus="Processing";
		  File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("userid"))
				{
					userid=multi.getParameter(paramname);
					session.setAttribute("userid",userid);
				}
				if(paramname.equalsIgnoreCase("fid"))
				{
					fid=multi.getParameter(paramname);
					session.setAttribute("fid",fid);
				}
				if(paramname.equalsIgnoreCase("uname"))
				{
					uname=multi.getParameter(paramname);
				}
				
			
				if(paramname.equalsIgnoreCase("fname"))
				{
					fname=multi.getParameter(paramname);
					session.setAttribute("fname",fname);
					
				}
				if(paramname.equalsIgnoreCase("file"))
				{
					file=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("key"))
				{
					key=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("date"))
				{
					date=multi.getParameter(paramname);
				}
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			filename1 = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Documents\\"+filename1);
			file1 = new File(fPath);
			
			FileInputStream fs = new FileInputStream(file1);
			DecimalFormat df= new DecimalFormat("#.##");
			list.add(fs);
			//list.add(df);
		}		
	}
	         FileInputStream fs1 = null;
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO fileup VALUES(?,?,?,?,AES_ENCRYPT(?, 'key'),?,?,?,?,?,?,?,?,?)");
			
       	
       			ps.setString(1,userid);
       			ps.setString(2,uname);
				ps.setString(3,fname);
			
				ps.setString(4,fid);
				ps.setString(5,key);
				double bytes = file1.length();
		double kb=bytes/1024;
	//	double mb=kb/1024;
	size=Double.toString(kb);
	
	ps.setString(6,size);
				ps.setString(7,file);
				ps.setString(8,date);
				ps.setString(9,serverstatus);
				ps.setString(10,brokerstatus);
				ps.setString(11,pack);
				ps.setString(12,cost);
					ps.setString(13,packstatus);
					ps.setString(14,"null");
				
       if(f == 0)
			ps.setObject(7,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(7,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("uploadview.jsp?Message=success");
			}
			else
			{
				response.sendRedirect("uploadview.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>