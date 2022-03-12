<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException"%>
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
<p style="color:black;font-family:calibri;font-weight:bold;">APRIL TO SEPTEMBER ANALYSIS</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">REPORT OF CENTER PROCUREMENT LIST IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="6">APRIL</th>
<th colspan="6">MAY</th>
<th colspan="6">JUNE</th>
<th colspan="6">JULY</th>
<th colspan="6">AUGUST</th>
<th colspan="6">SEPTEMBER</th>
</tr>

<tr bgcolor="yellow">
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
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
			
			prest = con.prepareStatement("SELECT G.BCC,G.CENTERCODE,G.CENTERNAME,G.O_AMOUNT,G.O_ERUVAKA,G.O_PNP,G.O_OTHER,G.O_EXPAMOUNT,G.O_TOTALAMOUNT,H.N_AMOUNT,H.N_ERUVAKA,H.N_PNP,H.N_OTHER,H.N_EXPAMOUNT,H.N_TOTALAMOUNT,I.D_AMOUNT,I.D_ERUVAKA,I.D_PNP,I.D_OTHER,I.D_EXPAMOUNT,I.D_TOTALAMOUNT,J.JAN_AMOUNT,J.JAN_ERUVAKA,J.JAN_PNP,J.JAN_OTHER,J.JAN_EXPAMOUNT,J.JAN_TOTALAMOUNT,K.F_AMOUNT,K.F_ERUVAKA,K.F_PNP,K.F_OTHER,K.F_EXPAMOUNT,K.F_TOTALAMOUNT,L.MAR_AMOUNT,L.MAR_ERUVAKA,L.MAR_PNP,L.MAR_OTHER,L.MAR_EXPAMOUNT,L.MAR_TOTALAMOUNT FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						
						 String k1 = result.getString("BCC");
						 String k2 = result.getString("CENTERCODE");
						 String k3 = result.getString("CENTERNAME");
						 String k4 = result.getString("O_AMOUNT");
						 String k5 = result.getString("O_ERUVAKA");
						 String k6 = result.getString("O_PNP");
						 String k7 = result.getString("O_OTHER");
						 String k8 = result.getString("O_EXPAMOUNT");
						 String k9 = result.getString("O_TOTALAMOUNT");
						 String k10 = result.getString("N_AMOUNT");
						 String k11 = result.getString("N_ERUVAKA");
						 String k12 = result.getString("N_PNP");
						 String k13 = result.getString("N_OTHER");
						 String k14 = result.getString("N_EXPAMOUNT");
						 String k15 = result.getString("N_TOTALAMOUNT");
						 String k16 = result.getString("D_AMOUNT");
						 String k17 = result.getString("D_ERUVAKA");
						 String k18 = result.getString("D_PNP");
						 String k19 = result.getString("D_OTHER");
						 String k20 = result.getString("D_EXPAMOUNT");
						 String k21 = result.getString("D_TOTALAMOUNT");
						 String k22 = result.getString("JAN_AMOUNT");
						 String k23= result.getString("JAN_ERUVAKA");
						 String k24 = result.getString("JAN_PNP");
						 String k25 = result.getString("JAN_OTHER");
						 String k26= result.getString("JAN_EXPAMOUNT");
						 String k27 = result.getString("JAN_TOTALAMOUNT");
						 String k28 = result.getString("F_AMOUNT");
						 String k29 = result.getString("F_ERUVAKA");
						 String k30 = result.getString("F_PNP");
						 String k31 = result.getString("F_OTHER");
						 String k32 = result.getString("F_EXPAMOUNT");
						 String k33 = result.getString("F_TOTALAMOUNT");
						 String k34 = result.getString("MAR_AMOUNT");
						 String k35 = result.getString("MAR_ERUVAKA");
						 String k36 = result.getString("MAR_PNP");
						 String k37 = result.getString("MAR_OTHER");
						 String k38 = result.getString("MAR_EXPAMOUNT");
						 String k39 = result.getString("MAR_TOTALAMOUNT");
						 
					 
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
<th><%= k26 %></th>
<th><%= k27 %></th>
<th><%= k28 %></th>
<th><%= k29 %></th>
<th><%= k30 %></th>
<th><%= k31 %></th>
<th><%= k32 %></th>
<th><%= k33 %></th>
<th><%= k34 %></th>
<th><%= k35 %></th>
<th><%= k36 %></th>
<th><%= k37 %></th>
<th><%= k38 %></th>
<th><%= k39 %></th>
</tr>					  

 <%
					}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>

</table>				

<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>