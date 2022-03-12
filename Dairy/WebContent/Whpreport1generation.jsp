<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WITH HELP PRICE REPORTS GENERATION PANEL</title>
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
<p style="color:black;font-family:calibri;font-weight:bold;">DATES LIST</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">DATES OF TERMS ENTRY</div><br/>

<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>TERM</th>
<th>TERM1DATE</th>
<th>TERM2DATE</th>
<th>TERM3DATE</th>
<th>TERM4DATE</th>
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
	    
	    String k1 = "0";
	    String k2 = "0";
	    String k3 = "0";
	    String k4 = "0";
	    String k13 = "0";
	    String k14 = "0";
	    String k15 = "0";
	    String k16 = "0";
	    String k17 = "0";
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			////////////////////////////////////////////////////
			prest = con.prepareStatement("SELECT TER1_DATEOFTERMENTRY FROM withhelp_ter1 WHERE BCC=?");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						
					 k1 = result.getString("TER1_DATEOFTERMENTRY");
						
					}		
			prest = con.prepareStatement("SELECT TER2_DATEOFTERMENTRY FROM withhelp_ter2 WHERE BCC=?");

					prest.setString(1, Y1);	
					result = prest.executeQuery();
						System.out.println("Querie Successfully Executed");
				//********************************************************************************//
			while(result.next()) {
								
				 k2 = result.getString("TER2_DATEOFTERMENTRY");
								
							}	
			prest = con.prepareStatement("SELECT TER3_DATEOFTERMENTRY FROM withhelp_ter3 WHERE BCC=?");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						
						 k3 = result.getString("TER3_DATEOFTERMENTRY");
						
					}	
					prest = con.prepareStatement("SELECT TER4_DATEOFTERMENTRY FROM withhelp_ter4 WHERE BCC=?");

					prest.setString(1, Y1);	
					result = prest.executeQuery();
						System.out.println("Querie Successfully Executed");
				//********************************************************************************//
							while(result.next()) {
								
								 k4 = result.getString("TER4_DATEOFTERMENTRY");
								
							}
				%><tr>
							<th>DATE</th>
							<th><%=k1 %></th>
							<th><%=k2 %></th>
							<th><%=k3 %></th>
							<th><%=k4 %></th>
							</tr>		
							</table><br/><br/>
							
							
	<%						
	   }catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}					 
	%>

	
	

<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">TERM WISE ANALYSIS</p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">REPORT OF WITH HELP PRICE TERMS CENTER WISE LIST IN BCC</div><br/>
		 
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTERCODE</th>
<th>CENTERNAME</th>
<th>1 ST TERM</th>
<th>2 ND TERM</th>
<th>3 RD TERM</th>
<th>4 TH TERM</th>
<th>TOTAL TERM AMOUNT</th>
</tr>
				 
	<%		try{		
	 		
			prest = con.prepareStatement("SELECT A.BCC,A.CENTERCODE,A.CENTERNAME,A.TER1_AMOUNT,B.TER2_AMOUNT,C.TER3_AMOUNT,D.TER4_AMOUNT,A.TER1_AMOUNT+B.TER2_AMOUNT+C.TER3_AMOUNT+D.TER4_AMOUNT TOTAL_TERMAMOUNT FROM withhelp_ter1 A,withhelp_ter2 B,withhelp_ter3 C,withhelp_ter4 D WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= ANY(SELECT CENTERNAME FROM withhelp_ter1  WHERE BCC=?)");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						

						String k5 = result.getString("BCC");
						String k6 = result.getString("CENTERCODE");
						String k7 = result.getString("CENTERNAME");
						String k8 = result.getString("TER1_AMOUNT");
						String k9 = result.getString("TER2_AMOUNT");
						String k10 = result.getString("TER3_AMOUNT");
						String k11 = result.getString("TER4_AMOUNT");
						String k12 = result.getString("TOTAL_TERMAMOUNT");
					 
					  %>
<tr>
<th><%= k5 %></th>
<th><%= k6 %></th>
<th><%= k7 %></th>
<th><%= k8 %></th>
<th><%= k9 %></th>
<th><%= k10 %></th>
<th><%= k11 %></th>
<th><%= k12 %></th>
</tr>					  

 <%
					}
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	%>		
</table><br/>		
<%
try{
prest = con.prepareStatement("SELECT SUM(TER1_AMOUNT)TERM1AMOUNT FROM withhelp_ter1 WHERE BCC=?");

prest.setString(1, Y1);	
result = prest.executeQuery();
	System.out.println("Querie Successfully Executed");
//********************************************************************************//
		while(result.next()) {
			
		 k13 = result.getString("TERM1AMOUNT");
			
		}		
prest = con.prepareStatement("SELECT SUM(TER2_AMOUNT)TERM2AMOUNT FROM withhelp_ter2 WHERE BCC=?");

		prest.setString(1, Y1);	
		result = prest.executeQuery();
			System.out.println("Querie Successfully Executed");
	//********************************************************************************//
while(result.next()) {
					
	 k14 = result.getString("TERM2AMOUNT");
					
				}	
prest = con.prepareStatement("SELECT SUM(TER3_AMOUNT)TERM3AMOUNT FROM withhelp_ter3 WHERE BCC=?");

prest.setString(1, Y1);	
result = prest.executeQuery();
	System.out.println("Querie Successfully Executed");
//********************************************************************************//
		while(result.next()) {
			
			 k15 = result.getString("TERM3AMOUNT");
			
		}	
		prest = con.prepareStatement("SELECT SUM(TER4_AMOUNT)TERM4AMOUNT FROM withhelp_ter4 WHERE BCC=?");

		prest.setString(1, Y1);	
		result = prest.executeQuery();
			System.out.println("Querie Successfully Executed");
	//********************************************************************************//
				while(result.next()) {
					
					 k16 = result.getString("TERM4AMOUNT");
					
				}	
				prest = con.prepareStatement("SELECT SUM(A.TER1_AMOUNT)+SUM(B.TER2_AMOUNT)+SUM(C.TER3_AMOUNT)+SUM(D.TER4_AMOUNT) TOTALTERMAMOUNTINBCC FROM withhelp_ter1 A,withhelp_ter2 B,withhelp_ter3 C,withhelp_ter4 D  WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= ANY(SELECT CENTERNAME FROM withhelp_ter1 WHERE BCC=?)");
				
                prest.setString(1, Y1);	
				result = prest.executeQuery();
					System.out.println("Querie Successfully Executed");
			//********************************************************************************//
						while(result.next()) {
							
							 k17 = result.getString("TOTALTERMAMOUNTINBCC");
							
						}
}catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}	
						


%>	
<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">YEAR WISE ANALYSIS</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">TERM WISE AND ANNUM ANALYSIS REPORT OF WITH HELP PRICE TERM WISE IN BCC</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>ANNUM</th>
<th>TOTAL 1 ST TERM</th>
<th>TOTAL 2 ND TERM</th>
<th>TOTAL 3 RD TERM</th>
<th>TOTAL 4 TH TERM</th>
<th>TOTAL OF TOTAL TERM AMOUNT</th>
</tr>
<tr>
<th>YEAR</th>
<th><%= k13%></th>
<th><%= k14%></th>
<th><%= k15%></th>
<th><%= k16%></th>
<th><%= k17%></th>
</tr>
</table><br/>	

<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>