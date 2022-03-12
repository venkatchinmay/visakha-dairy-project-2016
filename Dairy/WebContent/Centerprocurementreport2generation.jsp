<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CENTER PROCUREMENT REPORTS GENERATION PANEL</title>
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
<p style="color:black;font-family:calibri;font-weight:bold;">OCTOBER TO MARCH ANALYSIS</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">REPORT OF CENTER PROCUREMENT LIST IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">

<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="3">OCTOBER</th>
<th colspan="3">NOVEMBER</th>
<th colspan="3">DECEMBER</th>
<th colspan="3">JANUARY</th>
<th colspan="3">FEBRUARY</th>
<th colspan="3">MARCH</th>
</tr>

<tr bgcolor="yellow">
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
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
			prest = con.prepareStatement("SELECT G.BCC,G.CENTERCODE,G.CENTERNAME,G.O_BM_AVERAGE,G.O_CM_AVERAGE,G.O_TOTAL_AVERAGE,H.N_BM_AVERAGE,H.N_CM_AVERAGE,H.N_TOTAL_AVERAGE,I.D_BM_AVERAGE,I.D_CM_AVERAGE,I.D_TOTAL_AVERAGE,J.JAN_BM_AVERAGE,J.JAN_CM_AVERAGE,J.JAN_TOTAL_AVERAGE,K.F_BM_AVERAGE,K.F_CM_AVERAGE,K.F_TOTAL_AVERAGE,L.MAR_BM_AVERAGE,L.MAR_CM_AVERAGE,L.MAR_TOTAL_AVERAGE FROM o_procuriment G,n_procuriment H,d_procuriment I,jan_procuriment J,f_procuriment K,mar_procuriment L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						String k1 = result.getString("BCC");
						 String k2 = result.getString("CENTERCODE");
						 String k3 = result.getString("CENTERNAME");
						 String k4 = result.getString("O_BM_AVERAGE");
						 String k5 = result.getString("O_CM_AVERAGE");
						 String k6 = result.getString("O_TOTAL_AVERAGE");
						 String k7 = result.getString("N_BM_AVERAGE");
						 String k8 = result.getString("N_CM_AVERAGE");
						 String k9 = result.getString("N_TOTAL_AVERAGE");
						 String k10 = result.getString("D_BM_AVERAGE");
						 String k11 = result.getString("D_CM_AVERAGE");
						 String k12 = result.getString("D_TOTAL_AVERAGE");
						 String k13 = result.getString("D_BM_AVERAGE");
						 String k14 = result.getString("JAN_CM_AVERAGE");
						 String k15 = result.getString("JAN_TOTAL_AVERAGE");
						 String k16 = result.getString("F_BM_AVERAGE");
						 String k17 = result.getString("F_CM_AVERAGE");
						 String k18 = result.getString("F_TOTAL_AVERAGE");
						 String k19 = result.getString("MAR_BM_AVERAGE");
						 String k20 = result.getString("MAR_CM_AVERAGE");
						 String k21 = result.getString("MAR_TOTAL_AVERAGE");
					 
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