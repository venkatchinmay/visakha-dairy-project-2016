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
String Y1=(String)s1.getAttribute("cname1");
String k1="0";
String k2="0";
String k3="0";
String k4="0";
String k5="0";
String k6="0";
String k7="0";
String k8="0";
String k9="0";
String k10="0";
String k11="0";
String k12="0";
String k13="0";
String k14="0";
String k15="0";
String k16="0";
String k17="0";
String k18="0";
String k19="0";
String k20="0";
String k21="0";
String k22="0";
String k23="0";
String k24="0";
String k25="0";
String k26="0";
String k27="0";
String k28="0";
String k29="0";
String k30="0";
String k31="0";
String k32="0";
String k33="0";
String k34="0";
String k35="0";
String k36="0";
String k37="0";
String k38="0";
String k39="0";
String k40="0";
String k41="0";
String k42="0";
String k43="0";
String k44="0";
String k45="0";
String k46="0";
String k47="0";
String k48="0";
String k49="0";
String k50="0";
String k51="0";
String k52="0";
String k53="0";
String k54="0";
String k55="0";
String k56="0";
String k57="0";
String k58="0";
String k59="0";
String k60="0";
String k61="0";
String k62="0";
String k63="0";
String k64="0";
String k65="0";
String k66="0";
String k67="0";
String k68="0";
String k69="0";
String k70="0";
String k71="0";
String k72="0";
%>

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
			
			//**********************************************************************//
					
String Y2 ="APRIL";
prest = con.prepareStatement("SELECT SUM(A_AMOUNT)AMOUNT FROM a_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k1 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(A_ERUVAKA)ERUVAKA FROM a_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k2 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(A_PNP)PNP FROM a_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k3 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(A_OTHER)OTHERS FROM a_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k4 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(A_EXPAMOUNT)EXPAMOUNT FROM a_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k5 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(A_TOTALAMOUNT)TOTALAMOUNT FROM a_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k6 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	


String Y3 ="MAY";
prest = con.prepareStatement("SELECT SUM(M_AMOUNT)AMOUNT FROM m_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k7 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(M_ERUVAKA)ERUVAKA FROM m_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k8 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(M_PNP)PNP FROM m_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k9 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(M_OTHER)OTHERS FROM m_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k10 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(M_EXPAMOUNT)EXPAMOUNT FROM m_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k11 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(M_TOTALAMOUNT)TOTALAMOUNT FROM m_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k12 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y4 ="JUNE";
prest = con.prepareStatement("SELECT SUM(JU_AMOUNT)AMOUNT FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k13 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(JU_ERUVAKA)ERUVAKA FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k14 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JU_PNP)PNP FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k15 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JU_OTHER)OTHERS FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k16 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JU_EXPAMOUNT)EXPAMOUNT FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k17 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JU_TOTALAMOUNT)TOTALAMOUNT FROM ju_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k18 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y5 ="JULY";
prest = con.prepareStatement("SELECT SUM(JUL_AMOUNT)AMOUNT FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k19 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(JUL_ERUVAKA)ERUVAKA FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k20 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JUL_PNP)PNP FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k21 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JUL_OTHER)OTHERS FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k22 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JUL_EXPAMOUNT)EXPAMOUNT FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k23 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JUL_TOTALAMOUNT)TOTALAMOUNT FROM jul_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k24 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y6 ="AUGUST";
prest = con.prepareStatement("SELECT SUM(AU_AMOUNT)AMOUNT FROM au_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k25 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(AU_ERUVAKA)ERUVAKA FROM au_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k26 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(AU_PNP)PNP FROM au_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k27 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(AU_OTHER)OTHERS FROM au_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k28 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(AU_EXPAMOUNT)EXPAMOUNT FROM au_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k29 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(AU_TOTALAMOUNT)TOTALAMOUNT FROM au_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k30 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y7 ="SEPTEMBER";
prest = con.prepareStatement("SELECT SUM(S_AMOUNT)AMOUNT FROM s_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k31 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(S_ERUVAKA)ERUVAKA FROM s_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k32 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(S_PNP)PNP FROM s_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k33 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(S_OTHER)OTHERS FROM s_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k34 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(S_EXPAMOUNT)EXPAMOUNT FROM s_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k35 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(S_TOTALAMOUNT)TOTALAMOUNT FROM s_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k36 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y8 ="OCTOBER";
prest = con.prepareStatement("SELECT SUM(O_AMOUNT)AMOUNT FROM o_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k37 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(O_ERUVAKA)ERUVAKA FROM o_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k38 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(O_PNP)PNP FROM o_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k39 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(O_OTHER)OTHERS FROM o_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k40 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(O_EXPAMOUNT)EXPAMOUNT FROM o_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k41 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(O_TOTALAMOUNT)TOTALAMOUNT FROM o_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k42 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y9 ="NOVEMBER";
prest = con.prepareStatement("SELECT SUM(N_AMOUNT)AMOUNT FROM n_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k43 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(N_ERUVAKA)ERUVAKA FROM n_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k44 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(N_PNP)PNP FROM n_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k45 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(N_OTHER)OTHERS FROM n_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k46 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(N_EXPAMOUNT)EXPAMOUNT FROM n_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k47 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(N_TOTALAMOUNT)TOTALAMOUNT FROM n_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k48 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y10 ="DECEMBER";
prest = con.prepareStatement("SELECT SUM(D_AMOUNT)AMOUNT FROM d_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k49 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(D_ERUVAKA)ERUVAKA FROM d_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k50 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(D_PNP)PNP FROM d_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k51 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(D_OTHER)OTHERS FROM d_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k52 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(D_EXPAMOUNT)EXPAMOUNT FROM d_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k53 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(D_TOTALAMOUNT)TOTALAMOUNT FROM d_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k54 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y11 ="JANUARY";
prest = con.prepareStatement("SELECT SUM(JAN_AMOUNT)AMOUNT FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k55 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(JAN_ERUVAKA)ERUVAKA FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k56 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JAN_PNP)PNP FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k57 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JAN_OTHER)OTHERS FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k58 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JAN_EXPAMOUNT)EXPAMOUNT FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k59 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(JAN_TOTALAMOUNT)TOTALAMOUNT FROM jan_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k60 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y12 ="FEBRUARY";
prest = con.prepareStatement("SELECT SUM(F_AMOUNT)AMOUNT FROM f_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k61 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(F_ERUVAKA)ERUVAKA FROM f_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k62 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(F_PNP)PNP FROM f_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k63 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(F_OTHER)OTHERS FROM f_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k64 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(F_EXPAMOUNT)EXPAMOUNT FROM f_withhelppriseexp  WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k65 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(F_TOTALAMOUNT)TOTALAMOUNT FROM f_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k66 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	

String Y13 ="MARCH";
prest = con.prepareStatement("SELECT SUM(MAR_AMOUNT)AMOUNT FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k67 = result.getString("AMOUNT");
System.out.println("hello"+k1);
}

prest = con.prepareStatement("SELECT SUM(MAR_ERUVAKA)ERUVAKA FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k68 = result.getString("ERUVAKA");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(MAR_PNP)PNP FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k69 = result.getString("PNP");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(MAR_OTHER)OTHERS FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k70 = result.getString("OTHERS");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(MAR_EXPAMOUNT)EXPAMOUNT FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k71 = result.getString("EXPAMOUNT");
System.out.println("hello"+k1);
}	

prest = con.prepareStatement("SELECT SUM(MAR_TOTALAMOUNT)TOTALAMOUNT FROM mar_withhelppriseexp WHERE BCC=? ");
prest.setString(1, Y1);	
result = prest.executeQuery();
System.out.println("Querie Successfully Executed");
while(result.next()) { 
System.out.println("go to while loop");
k72 = result.getString("TOTALAMOUNT");
System.out.println("hello"+k1);
}	
float u1 = Float.parseFloat(k1); 
float u2 = Float.parseFloat(k2);
float u3 = Float.parseFloat(k3); 
float u4 = Float.parseFloat(k4);
float u5 = Float.parseFloat(k5); 
float u6 = Float.parseFloat(k6);
float u7 = Float.parseFloat(k7); 
float u8 = Float.parseFloat(k8);
float u9 = Float.parseFloat(k9); 
float u10 = Float.parseFloat(k10);
float u11 = Float.parseFloat(k11); 
float u12 = Float.parseFloat(k12);
float u13 = Float.parseFloat(k13); 
float u14 = Float.parseFloat(k14);
float u15 = Float.parseFloat(k15); 
float u16 = Float.parseFloat(k16);
float u17 = Float.parseFloat(k17); 
float u18 = Float.parseFloat(k18); 
float u19 = Float.parseFloat(k19);
float u20 = Float.parseFloat(k20); 
float u21 = Float.parseFloat(k21);
float u22 = Float.parseFloat(k22);
float u23 = Float.parseFloat(k23);
float u24 = Float.parseFloat(k24); 
float u25 = Float.parseFloat(k25);
float u26 = Float.parseFloat(k26); 
float u27 = Float.parseFloat(k27);
float u28 = Float.parseFloat(k28); 
float u29 = Float.parseFloat(k29);
float u30 = Float.parseFloat(k30); 
float u31 = Float.parseFloat(k31);
float u32 = Float.parseFloat(k32); 
float u33 = Float.parseFloat(k33);
float u34 = Float.parseFloat(k34); 
float u35 = Float.parseFloat(k35);
float u36 = Float.parseFloat(k36);
float u37 = Float.parseFloat(k37); 
float u38 = Float.parseFloat(k38);
float u39 = Float.parseFloat(k39); 
float u40 = Float.parseFloat(k40);
float u41 = Float.parseFloat(k41); 
float u42 = Float.parseFloat(k42);
float u43 = Float.parseFloat(k43); 
float u44 = Float.parseFloat(k44);
float u45 = Float.parseFloat(k45); 
float u46 = Float.parseFloat(k46);
float u47 = Float.parseFloat(k47); 
float u48 = Float.parseFloat(k48);
float u49 = Float.parseFloat(k49); 
float u50 = Float.parseFloat(k50);
float u51 = Float.parseFloat(k51); 
float u52 = Float.parseFloat(k52);
float u53 = Float.parseFloat(k53); 
float u54 = Float.parseFloat(k54); 
float u55 = Float.parseFloat(k55);
float u56 = Float.parseFloat(k56); 
float u57 = Float.parseFloat(k57);
float u58 = Float.parseFloat(k58);
float u59 = Float.parseFloat(k59);
float u60 = Float.parseFloat(k60); 
float u61 = Float.parseFloat(k61);
float u62 = Float.parseFloat(k62); 
float u63 = Float.parseFloat(k63);
float u64 = Float.parseFloat(k64); 
float u65 = Float.parseFloat(k65);
float u66 = Float.parseFloat(k66); 
float u67 = Float.parseFloat(k67);
float u68 = Float.parseFloat(k68); 
float u69 = Float.parseFloat(k69);
float u70 = Float.parseFloat(k70); 
float u71 = Float.parseFloat(k71);
float u72 = Float.parseFloat(k72);
float u73= u1+u7+u13+u19+u25+u31+u37+u43+u49+u55+u61+u67;
float u74= u2+u8+u14+u20+u26+u32+u38+u44+u50+u56+u62+u68;
float u75= u3+u9+u15+u21+u27+u33+u39+u45+u51+u57+u63+u69;
float u76= u4+u10+u16+u22+u28+u34+u40+u46+u52+u58+u64+u70;
float u77= u5+u11+u17+u23+u29+u35+u41+u47+u53+u59+u65+u71;
float u78= u6+u12+u18+u24+u30+u36+u42+u48+u54+u60+u66+u72;
																											
		%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">ALL MONTHS LIST</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">MONTH WISE AND ANNUM ANALYSIS REPORT OF WITH HELP PRICE EXPENDITURE IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>MONTH</th>
<th>TOTAL WHP EXPENDITURE OF ALL CENTERS</th>
<th>TOTAL ERUVAKA OF ALL CENTERS </th>
<th>TOTAL PNP OF ALL CENTERS </th>
<th>TOTAL OTHERS OF ALL CENTERS </th>
<th>TOTAL OTHER EXPENDITURE (ERUVAKA + PNP + OTHERS) OF ALL CENTERS </th>
<th>TOTAL OF TOTAL WHP EXPENDITURE OF ALL CENTERS </th>
</tr>
<tr>
<th><%=Y2 %></th>
<th><%=k1 %></th>
<th><%=k2 %></th>
<th><%=k3 %></th>
<th><%=k4 %></th>
<th><%=k5 %></th>
<th><%=k6 %></th>
</tr>
<tr>
<th><%=Y3 %></th>
<th><%=k7 %></th>
<th><%=k8 %></th>
<th><%=k9 %></th>
<th><%=k10 %></th>
<th><%=k11 %></th>
<th><%=k12 %></th>
</tr>
<tr>
<th><%=Y4 %></th>
<th><%=k13 %></th>
<th><%=k14 %></th>
<th><%=k15 %></th>
<th><%=k16 %></th>
<th><%=k17 %></th>
<th><%=k18 %></th>
</tr>
<tr>
<th><%=Y5 %></th>
<th><%=k19 %></th>
<th><%=k20 %></th>
<th><%=k21 %></th>
<th><%=k22 %></th>
<th><%=k23 %></th>
<th><%=k24 %></th>
</tr>
<tr>
<th><%=Y6 %></th>
<th><%=k25 %></th>
<th><%=k26 %></th>
<th><%=k27 %></th>
<th><%=k28 %></th>
<th><%=k29 %></th>
<th><%=k30 %></th>
</tr>
<tr>
<th><%=Y7 %></th>
<th><%=k31 %></th>
<th><%=k32 %></th>
<th><%=k33 %></th>
<th><%=k34 %></th>
<th><%=k35 %></th>
<th><%=k36 %></th>
</tr>
<tr>
<th><%=Y8 %></th>
<th><%=k37 %></th>
<th><%=k38 %></th>
<th><%=k39 %></th>
<th><%=k40 %></th>
<th><%=k41 %></th>
<th><%=k42 %></th>
</tr>
<tr>
<th><%=Y9 %></th>
<th><%=k43 %></th>
<th><%=k44 %></th>
<th><%=k45 %></th>
<th><%=k46 %></th>
<th><%=k47 %></th>
<th><%=k48 %></th>
</tr>
<tr>
<th><%=Y10 %></th>
<th><%=k49 %></th>
<th><%=k50 %></th>
<th><%=k51 %></th>
<th><%=k52 %></th>
<th><%=k53 %></th>
<th><%=k54 %></th>
</tr>
<tr>
<th><%=Y11 %></th>
<th><%=k55 %></th>
<th><%=k56%></th>
<th><%=k57 %></th>
<th><%=k58 %></th>
<th><%=k59 %></th>
<th><%=k60 %></th>
</tr>
<tr>
<th><%=Y12 %></th>
<th><%=k61 %></th>
<th><%=k62 %></th>
<th><%=k63 %></th>
<th><%=k64 %></th>
<th><%=k65 %></th>
<th><%=k66 %></th>
</tr>
<tr>
<th><%=Y13 %></th>
<th><%=k67 %></th>
<th><%=k68 %></th>
<th><%=k69 %></th>
<th><%=k70 %></th>
<th><%=k71 %></th>
<th><%=k72 %></th>
</tr>
</table><br/>
<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">YEAR WISE</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;"> ANNUM ANALYSIS REPORT OF WITH HELP PRICE EXPENDITURE IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>ANNUM</th>
<th>TOTAL WHP EXPENDITURE </th>
<th>TOTAL ERUVAKA </th>
<th>TOTAL PNP </th>
<th>TOTAL OTHERS</th>
<th>TOTAL OTHER EXPENDITURE (ERUVAKA + PNP + OTHERS) </th>
<th>TOTAL OF TOTAL WHP EXPENDITURE </th>
</tr>
<tr>
<th>YEAR WISE</th>
<th><%=u73 %> </th>
<th><%=u74 %></th>
<th><%=u75 %> </th>
<th><%=u76 %> </th>
<th><%=u77 %></th>
<th><%=u78 %> </th>
</tr>

</table><br/>
		<% 																									
																																																			
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>




<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>