<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JOINT ACCOUNT AND PROFIT DETAILS RECEIPTS GENERATION PANEL</title>
</head>
<body>
<div id=”header” align="center"><img src="logo.jpg"alt="source"/>
<p style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">VISAKHA DAIRY REPORTS GENERATING PANEL</p>
<p style="color:black;font-family:TimesNewRoman;font-style:italic;font-weight:bold;">TIME AND DATE OF GENERATING RECEIPT</p>
<p  id= "demo" style="color:black;font-family:calibri;font-style:italic;"> 
<b><script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script></b></p>
</div>
<hr>
<% 
String Y1=request.getParameter("month");


%>

<p style="color:black;font-family:calibri;font-weight:bold;">MONTH : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">REPORT OF JOINT ACCOUNT AND PROFIT DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTER CODE</th>
<th>CENTER NAME</th>
<th>JOINT ACCOUNT BALANCE</th>
<th>FD AMOUNT</th>
<th>TOTAL AMOUNT</th>
<th>MONTH PROFIT GROSS</th>
<th>GROSS PROFIT PERCENTAGE</th>
<th>WET PROFIT</th>
<th>WET PROFIT PERCENTAGE</th>
<th>MONTH</th>

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
			prest = con.prepareStatement("SELECT * FROM center_profitdetails WHERE  MONTHPRO = ? ORDER BY BCC");
			prest.setString(1, Y1);	
			
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					 String k1 = result.getString("BCC");
					 String k2 = result.getString("CENTERCODE");
					 String k3 = result.getString("CENTERNAME");
					 String k4 = result.getString("JOINTACCOUNTBALANCE");
					 String k5 = result.getString("FDAMOUNT");
					 String k6 = result.getString("TOTAL");
					 String k7 = result.getString("MONTHPROFITGROSS");
					 String k8 = result.getString("PROFITEXPENDITURE");
					 String k9 = result.getString("WETPROFIT");
					 String k10 = result.getString("WETPROFITEXPENDITURE");
					 String k11 = result.getString("MONTHPRO");
					 
					 
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
</tr>

 <%
					}
		%>
		
			<% 
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>
	
</table>
<br/>	
<hr>	
<p style="color:black;font-family:calibri;font-weight:bold;">MONTH : <%=Y1 %></p>


<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">AGGREGATE TOTALS OF JOINT ACCOUNT AND PROFIT DETAILS</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">

<th>TOTAL JOINT ACCOUNT BALANCE </th>
<th>TOTAL FD AMOUNT </th>
<th>TOTAL OF JOINT ACCOUNT BALANCE + FD AMOUNT</th>
</tr>
<tr>
		
<%	
try{

		    prest = con.prepareStatement("SELECT SUM(JOINTACCOUNTBALANCE)TOTALJOINTACCOUNTBALANCE FROM center_profitdetails WHERE  MONTHPRO = ? ORDER BY BCC");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
						
		 String h = result.getString("TOTALJOINTACCOUNTBALANCE");
		 
		
					%>
					
         <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(FDAMOUNT)TOTALFDAMOUNT FROM center_profitdetails WHERE  MONTHPRO = ? ORDER BY BCC");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTALFDAMOUNT");
		 
		
					%>
					
              <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(TOTAL)TOTALAMOUNT FROM center_profitdetails WHERE  MONTHPRO = ? ORDER BY BCC");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTALAMOUNT");
		
		
					%>
					
                      <th><%= h %></th>

<%
					}
		%>
	</tr>		
		<% 
					 
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