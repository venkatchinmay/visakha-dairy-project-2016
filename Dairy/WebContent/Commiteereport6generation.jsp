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
<link rel="stylesheet" type="text/css" href="entry.css"/>
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
String Y1=(String)s1.getAttribute("cname1");

                        String k1 = "0";
						 String k2 = "0";
						 String k3 = "0";
						 String k4= "0";
						 String k5= "0";
						 String k6 = "0";
						 String k7= "0";
						 String k8 = "0";
						 String k9 = "0";
						 String k10 = "0";
						 String k11 = "0";
						 String k12 = "0";
						 String k13 = "0";
						 String k14 = "0";
						 String k15 = "0";
						 String k16 = "0";
						 String k17 = "0";
						 String k18 = "0";
						 String k19 = "0";
						 String k20 = "0";
						 String k21= "0";;
						 String k22 = "0";
						 String k23 = "0";
						 String k24= "0";
						 String k25 = "0";
						 %>
<p style="color:black;font-family:calibri;font-weight:bold;">CENTER NAME : <%=Y1 %></p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">LIST OF COMMITEE IN CENTER</div><br/>

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
			prest = con.prepareStatement("SELECT * FROM commitee WHERE CENTERNAME=?");
			prest.setString(1, Y1);
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						 k1 = result.getString("BCC");
						  k2 = result.getString("CENTERCODE");
						  k3 = result.getString("CENTERNAME");
						  k4 = result.getString("MPI_MPAC");
						  k5 = result.getString("PRESIDENT_GROUPMEMBER");
						  k6 = result.getString("PRESIDENT_NAME");
						  k7 = result.getString("PRESIDENT_TERM");
						  k8 = result.getString("DIRECTORNAME_1");
						  k9 = result.getString("DIRECTORTERM_1");
						  k10 = result.getString("DIRECTORNAME_2");
						 k11 = result.getString("DIRECTORTERM_2");
						  k12 = result.getString("DIRECTORNAME_3");
						 k13 = result.getString("DIRECTORTERM_3");
						  k14 = result.getString("DIRECTORNAME_4");
						 k15 = result.getString("DIRECTORTERM_4");
						 k16 = result.getString("DIRECTORNAME_5");
						  k17 = result.getString("DIRECTORTERM_5");
						  k18 = result.getString("DIRECTORNAME_6");
						  k19 = result.getString("DIRECTORTERM_6");
						  k20 = result.getString("DIRECTORNAME_7");
						  k21 = result.getString("DIRECTORTERM_7");
						  k22 = result.getString("DIRECTORNAME_8");
						  k23 = result.getString("DIRECTORTERM_8");
						  k24 = result.getString("DIRECTORNAME_9");
						  k25 = result.getString("DIRECTORTERM_9");
					 
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					 
					 
					 
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					
					 
					 
					 
					 
					}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>


	

<table  border="1" cellpadding="2" cellspacing="4" align="center">
<tr>
<th colspan="3" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">CENTERDETAILS</th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">BULK COOLING CENTER </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k1 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">CENTER CODE </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k2 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">CENTER NAME </th>
<th  colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k3 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">MPI/MPAC </th>
<th   colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k4 %> </th>
</tr>
<tr>
<th colspan="3" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">COMMITEEDETAILS</th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">PRESIDENT/GROUPMEMBER </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k5 %> </th>
</tr>
<tr style="background-color:yellow">
<th style="text-transform: uppercase;color:black;font-family:times new roman;">MEMBER</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">NAME</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DATE OF ENDING TERM</th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">PRESIDENT/GROUPMEMBER</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k6 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k7 %> </th>
</tr>
<tr style="background-color:#00FF7F">
<th colspan="3" align="center" style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTORS</th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 1</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k8 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k9 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 2</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k10 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k11 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 3</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k12 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k13 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 4</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k14 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k15 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 5</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k16 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k17 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 6</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k18 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k19 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 7</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k20 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k21 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 8</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k22 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k23 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:black;font-family:times new roman;">DIRECTOR 9</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k24 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  k25 %> </th>
</tr>

</table>     


<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>