<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COMMITEE REPORTS GENERATION PANEL</title>
</head>
<body>
<div id=”header” align="center"><img src="logo.jpg"alt="source"/>
<p style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">VISAKHA DAIRY REPORTS GENERATING PANEL</p>
<p style="color:black;font-family:TimesNewRoman;font-style:italic;font-weight:bold;">TIME AND DATE OF GENERATING RECEIPT</p>
<p  id= "demo" style="color:black;font-family:calibri;font-style:italic;"> 
<b><script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script></b></p>
</div>
<hr>
<% HttpSession s1=request.getSession();
String Y1=(String)s1.getAttribute("cname1");%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">LIST OF COMMITEE IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTER CODE</th>
<th>CENTER NAME</th>
<th>MPI/MPAC</th>
<th>PRESIDENT/GROUPMEMBER</th>
<th>PRESIDENT NAME</th>
<th>PRESIDENT TERM</th>
<th>DIRECTOR1 NAME</th>
<th>DIRECTOR1 TERM</th>
<th>DIRECTOR2 NAME</th>
<th>DIRECTOR2 TERM</th>
<th>DIRECTOR3 NAME</th>
<th>DIRECTOR3 TERM</th>
<th>DIRECTOR4 NAME</th>
<th>DIRECTOR4 TERM</th>
<th>DIRECTOR5 NAME</th>
<th>DIRECTOR5 TERM</th>
<th>DIRECTOR6 NAME</th>
<th>DIRECTOR6 TERM</th>
<th>DIRECTOR7 NAME</th>
<th>DIRECTOR7 TERM</th>
<th>DIRECTOR8 NAME</th>
<th>DIRECTOR8 TERM</th>
<th>DIRECTOR9 NAME</th>
<th>DIRECTOR9 TERM</th>
</tr>
<% 
	String driver = "com.mysql.jdbc.Driver";
    String url    = "jdbc:mysql://localhost/visakhadairy";
    String username = "root";
    String password = "root";
//******************************************************************************************************//
           Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			////////////////////////////////////////////////////
			prest = con.prepareStatement("SELECT*FROM commitee WHERE BCC=? ORDER BY CENTERNAME");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						String k1 = result.getString("BCC");
						 String k2 = result.getString("CENTERCODE");
						 String k3 = result.getString("CENTERNAME");
						 String k4 = result.getString("MPI_MPAC");
						 String k5 = result.getString("PRESIDENT_GROUPMEMBER");
						 String k6 = result.getString("PRESIDENT_NAME");
						 String k7 = result.getString("PRESIDENT_TERM");
						 String k8 = result.getString("DIRECTORNAME_1");
						 String k9 = result.getString("DIRECTORTERM_1");
						 String k10 = result.getString("DIRECTORNAME_2");
						 String k11 = result.getString("DIRECTORTERM_2");
						 String k12 = result.getString("DIRECTORNAME_3");
						 String k13 = result.getString("DIRECTORTERM_3");
						 String k14 = result.getString("DIRECTORNAME_4");
						 String k15 = result.getString("DIRECTORTERM_4");
						 String k16 = result.getString("DIRECTORNAME_5");
						 String k17 = result.getString("DIRECTORTERM_5");
						 String k18 = result.getString("DIRECTORNAME_6");
						 String k19 = result.getString("DIRECTORTERM_6");
						 String k20 = result.getString("DIRECTORNAME_7");
						 String k21 = result.getString("DIRECTORTERM_7");
						 String k22 = result.getString("DIRECTORNAME_8");
						 String k23 = result.getString("DIRECTORTERM_8");
						 String k24 = result.getString("DIRECTORNAME_9");
						 String k25 = result.getString("DIRECTORTERM_9");
					 
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					
					 
					  %>
<tr>
<th><%= k1 %></th>
<th><%= k2 %></th>
<th><%= k3 %></th>
<th><%= k4 %></th>
<th><%= k5 %></th>
<th><%= k6 %></th>
<th><%= k7 %></th>
<th><%= k8 %></th>
<th><%= k9 %></th>
<th><%= k10 %></th>
<th><%= k11 %></th>
<th><%= k12 %></th>
<th><%= k13 %></th>
<th><%= k14 %></th>
<th><%= k15 %></th>
<th><%= k16 %></th>
<th><%= k17 %></th>
<th><%= k18 %></th>
<th><%= k19 %></th>
<th><%= k20 %></th>
<th><%= k21 %></th>
<th><%= k22 %></th>
<th><%= k23 %></th>
<th><%= k24 %></th>
<th><%= k25 %></th>


</tr>
 <%
					}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>
</table>
				

<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>