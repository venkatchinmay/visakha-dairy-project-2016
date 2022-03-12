<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
      <%@ page import= "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WITH HELP PRICE PROCUREMENT REPORTS GENERATION PANEL</title>
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
float u1 =0;
float u2 =0;
float u3 =0;
float u4 =0;
float u5 =0;
float u6 =0;
float u7 =0;
float u8 =0;
float u9 =0;
float u10 =0;
float u11 =0;
float u12 =0;
float u13 =0;
float u14 =0;
float u15 =0;
float u16 =0;
float u17 =0;
float u18 =0;
float u19 =0;
float u20 =0;
float u21 =0;
float u22 =0;
float u23 =0;
float u24 =0;
float u25 =0;
float u26 =0;
float u27 =0;
float u28 =0;
float u29 =0;
float u30 =0;
float u31 =0;
float u32 =0;
float u33 =0;
float u34 =0;
float u35 =0;
float u36 =0;
float u37 =0;
float u38 =0;
float u39 =0;
float u40 =0;
float u41 =0;

ArrayList a1 = new ArrayList();
ArrayList a2 = new ArrayList();
ArrayList a3 = new ArrayList();
ArrayList a4 = new ArrayList();
ArrayList a5 = new ArrayList();
ArrayList a6 = new ArrayList();
ArrayList a7 = new ArrayList();
ArrayList a8 = new ArrayList();
ArrayList a9 = new ArrayList();
ArrayList a10 = new ArrayList();
ArrayList a11 = new ArrayList();
ArrayList a12 = new ArrayList();
ArrayList a13 = new ArrayList();
ArrayList a14 = new ArrayList();
ArrayList a15 = new ArrayList();
ArrayList a16 = new ArrayList();
ArrayList a17 = new ArrayList();
ArrayList a18 = new ArrayList();
ArrayList a19 = new ArrayList();
ArrayList a20 = new ArrayList();

%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">COMPARISION REPORT OF WITH HELP PRICE TERMWISE AND EXPENDITURE(CENTER WISE AND BCC WISE)</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="5">WITH HELP PRICE TERM WISE</th>
<th colspan="6">WITH HELP PRICE EXPENDITURE</th>
<th rowspan="2">NET AMOUNT (TOTAL TERM AMOUNT - ANNUM TOTAL WHP EXPENDITURE AMOUNT)  </th>
</tr>
<tr bgcolor="yellow">
<th>TERM1</th>
<th>TERM2</th>
<th>TERM3</th>
<th>TERM4</th>
<th>TOTAL TERM AMOUNT</th>
<th>ANNUM WHP EXPENDITURE AMOUNT</th>
<th>ANNUM ERUVAKA</th>
<th>ANNUM PNP</th>
<th>ANNUM OTHERS</th>
<th>ANNUM OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>ANNUM TOTAL WHP EXPENDITURE AMOUNT</th>

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
			prest = con.prepareStatement("SELECT A.BCC,A.CENTERCODE,A.CENTERNAME FROM a_procuriment A WHERE A.BCC=?");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						 k1 = result.getString("BCC");
						  k2 = result.getString("CENTERCODE");
					      k3 = result.getString("CENTERNAME");
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					 
					 a1.add(k1);
					 a2.add(k2);
					 a3.add(k3);
		%>		
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
	<%
	try{		
	 		
			prest = con.prepareStatement("SELECT A.TER1_AMOUNT,B.TER2_AMOUNT,C.TER3_AMOUNT,D.TER4_AMOUNT,A.TER1_AMOUNT+B.TER2_AMOUNT+C.TER3_AMOUNT+D.TER4_AMOUNT TOTAL_TERMAMOUNT FROM withhelp_ter1 A,withhelp_ter2 B,withhelp_ter3 C,withhelp_ter4 D WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= ANY(SELECT CENTERNAME FROM withhelp_ter1  WHERE BCC=?)");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						

						
						 k4 = result.getString("TER1_AMOUNT");
						 k5 = result.getString("TER2_AMOUNT");
						 k6 = result.getString("TER3_AMOUNT");
						 k7 = result.getString("TER4_AMOUNT");
						 k8 = result.getString("TOTAL_TERMAMOUNT");
						 
						 a4.add(k4);
						 a5.add(k5);
						 a6.add(k6);
						 a7.add(k7);
						 a8.add(k8);
					 
					  %>
				  

 <%
					}
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	%>		
			
<%	
try{

		    prest = con.prepareStatement("SELECT A.A_AMOUNT+B.M_AMOUNT+C.JU_AMOUNT+D.JUL_AMOUNT+E.AU_AMOUNT+F.S_AMOUNT TOTALAMOUNTWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");


			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k9 = result.getString("TOTALAMOUNTWHP");
		 
		 
		 a9.add(k9);
		 %>			 
		   
		 
<%
}
%>
					
         
<%		 
		    prest = con.prepareStatement("SELECT A.A_ERUVAKA+B.M_ERUVAKA+C.JU_ERUVAKA+D.JUL_ERUVAKA+E.AU_ERUVAKA+F.S_ERUVAKA TOTALERUVAKAWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k10 = result.getString("TOTALERUVAKAWHP");
		 
		 
		 a10.add(k10);
		 %>			 
		   
		 
<%
}
%>

<%		 
		    prest = con.prepareStatement("SELECT A.A_PNP+B.M_PNP+C.JU_PNP+D.JUL_PNP+E.AU_PNP+F.S_PNP TOTALPNPWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);		
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k11 = result.getString("TOTALPNPWHP");
		 a11.add(k11); 
		 %>			 
		  
		 
<%
}
%>

<%		 
		    prest = con.prepareStatement("SELECT A.A_OTHER+B.M_OTHER+C.JU_OTHER+D.JUL_OTHER+E.AU_OTHER+F.S_OTHER TOTALOTHERWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);		
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k12 = result.getString("TOTALOTHERWHP");
		 a12.add(k12); 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT A.A_EXPAMOUNT+B.M_EXPAMOUNT+C.JU_EXPAMOUNT+D.JUL_EXPAMOUNT+E.AU_EXPAMOUNT+F.S_EXPAMOUNT TOTALEXPAMOUNTWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k13 = result.getString("TOTALEXPAMOUNTWHP");
		  
		 a13.add(k13); 
		 
		 %>			 
					  
					 
 <%
	}
		%>
<%		 
		    prest = con.prepareStatement("SELECT A.A_TOTALAMOUNT+B.M_TOTALAMOUNT+C.JU_TOTALAMOUNT+D.JUL_TOTALAMOUNT+E.AU_TOTALAMOUNT+F.S_TOTALAMOUNT TOTALTOTALAMOUNT FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k14 = result.getString("TOTALTOTALAMOUNT");
		 
		 a14.add(k14); 
		 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT G.O_AMOUNT+H.N_AMOUNT+I.D_AMOUNT+J.JAN_AMOUNT+K.F_AMOUNT+L.MAR_AMOUNT TOTALAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k15 = result.getString("TOTALAMOUNTWHP2");
		     
		     a15.add(k15);
					} 
		 %>	
		 <%		 
		    prest = con.prepareStatement("SELECT G.O_ERUVAKA+H.N_ERUVAKA+I.D_ERUVAKA+J.JAN_ERUVAKA+K.F_ERUVAKA+L.MAR_ERUVAKA TOTALERUVAKAWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k16 = result.getString("TOTALERUVAKAWHP2");
		 
		 
		 a16.add(k16);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_PNP+H.N_PNP+I.D_PNP+J.JAN_PNP+K.F_PNP+L.MAR_PNP TOTALPNPWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k17 = result.getString("TOTALPNPWHP2");
		 
		 
		 a17.add(k17);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_OTHER+H.N_OTHER+I.D_OTHER+J.JAN_OTHER+K.F_OTHER+L.MAR_OTHER TOTALOTHERWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k18 = result.getString("TOTALOTHERWHP2");
		 
		 
		 a18.add(k18);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_EXPAMOUNT+H.N_EXPAMOUNT+I.D_EXPAMOUNT+J.JAN_EXPAMOUNT+K.F_EXPAMOUNT+L.MAR_EXPAMOUNT TOTALEXPAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k19 = result.getString("TOTALEXPAMOUNTWHP2");
		 
		 
		 a19.add(k19);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_TOTALAMOUNT+H.N_TOTALAMOUNT+I.D_TOTALAMOUNT+J.JAN_TOTALAMOUNT+K.F_TOTALAMOUNT+L.MAR_TOTALAMOUNT TOTALTOTALAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?);");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k20 = result.getString("TOTALTOTALAMOUNTWHP2");
		 
		 
		 a20.add(k20);
		 %>			 
		   
		 
<%
}
%>

<% 								 
}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>		
	

<% 
System.out.println("1"+a1.size());
System.out.println("2"+a2.size());
System.out.println("3"+a3.size());
System.out.println("4"+a4.size());
System.out.println("5"+a5.size());
System.out.println("6"+a6.size());
System.out.println("7"+a7.size());
System.out.println("8"+a8.size());
System.out.println("9"+a9.size());
System.out.println("10"+a10.size());
System.out.println("11"+a11.size());
System.out.println("12"+a12.size());
System.out.println("13"+a13.size());
System.out.println("14"+a14.size());
System.out.println("15"+a15.size());
System.out.println("16"+a16.size());
System.out.println("17"+a17.size());
System.out.println("18"+a18.size());
System.out.println("19"+a19.size());
System.out.println("20"+a20.size());


String [] resulted1 = new String	[a1.size()];
resulted1 = (String[]) a1.toArray(resulted1);
String [] resulted2 = new String	[a2.size()];
resulted2 = (String[]) a2.toArray(resulted2);
String [] resulted3 = new String	[a3.size()];
resulted3 = (String[]) a3.toArray(resulted3);
String [] resulted4 = new String	[a4.size()];
resulted4 = (String[]) a4.toArray(resulted4);
String [] resulted5 = new String	[a5.size()];
resulted5 = (String[]) a5.toArray(resulted5);
String [] resulted6 = new String	[a6.size()];
resulted6 = (String[]) a6.toArray(resulted6);
String [] resulted7 = new String	[a7.size()];
resulted7 = (String[]) a7.toArray(resulted7);
String [] resulted8 = new String	[a8.size()];
resulted8 = (String[]) a8.toArray(resulted8);
String [] resulted9 = new String	[a9.size()];
resulted9 = (String[]) a9.toArray(resulted9);
String [] resulted10 = new String	[a10.size()];
resulted10 = (String[]) a10.toArray(resulted10);
String [] resulted11 = new String	[a11.size()];
resulted11 = (String[]) a11.toArray(resulted11);
String [] resulted12 = new String	[a12.size()];
resulted12 = (String[]) a12.toArray(resulted12);
String [] resulted13 = new String	[a13.size()];
resulted13 = (String[]) a13.toArray(resulted13);
String [] resulted14 = new String	[a14.size()];
resulted14 = (String[]) a14.toArray(resulted14);
String [] resulted15 = new String	[a15.size()];
resulted15 = (String[]) a15.toArray(resulted15);
String [] resulted16 = new String	[a16.size()];
resulted16 = (String[]) a16.toArray(resulted16);
String [] resulted17 = new String	[a17.size()];
resulted17 = (String[]) a17.toArray(resulted12);
String [] resulted18 = new String	[a18.size()];
resulted18 = (String[]) a18.toArray(resulted13);
String [] resulted19 = new String	[a19.size()];
resulted19 = (String[]) a19.toArray(resulted14);
String [] resulted20 = new String	[a20.size()];
resulted20 = (String[]) a20.toArray(resulted15);




for (int i = 0; i< resulted1.length;i++ ){
	
	String t1 = resulted1[i];
	String t2 = resulted2[i];
	String t3 = resulted3[i];
	String t4 = resulted4[i];
	String t5 = resulted5[i];
	String t6 = resulted6[i];
	String t7 = resulted7[i];
	String t8 = resulted8[i];
	System.out.println("8"+t8);
	String t9 = resulted9[i];
	String t10 = resulted10[i];
	String t11 = resulted11[i];
	String t12 = resulted12[i];
	String t13 = resulted13[i];
	String t14 = resulted14[i];
	String t15 = resulted15[i];
	String t16 = resulted16[i];
	String t17 = resulted17[i];
	String t18 = resulted18[i];
	String t19 = resulted19[i];
	String t20 = resulted20[i];
	
	
	      u1= Float.parseFloat(t9);
	      u2 = Float.parseFloat(t10);
          u3 = Float.parseFloat(t11); 
	      u4 = Float.parseFloat(t12);
	      u5 = Float.parseFloat(t13); 
	      u6 = Float.parseFloat(t14);
	      u7= Float.parseFloat(t15);
	      u8 = Float.parseFloat(t16);
          u9 = Float.parseFloat(t17); 
	      u10 = Float.parseFloat(t18);
	      u11 = Float.parseFloat(t19); 
	      u12 = Float.parseFloat(t20);
	      u13 = u1+u7;
		   u14 = u2+u8;
		   u15 = u3+u9;
		   u16 = u4+u10;
		   u17 = u5+u11;
		   u18 = u6+u12;
		   
		   String t21 = String.valueOf(u13);
		   String t22 = String.valueOf(u14);
		   String t23= String.valueOf(u15);
		   String t24 = String.valueOf(u16);
		   String t25 = String.valueOf(u17);
		   String t26= String.valueOf(u18);
	
		   u19= Float.parseFloat(t8);
		   u20 = Float.parseFloat(t26);
		   u21= u19-u20;
		   
		   String t27= String.valueOf(u21);
	%>	
	
	<tr>
<th><%=t1 %></th>
<th><%=t2 %></th>
<th><%=t3 %></th>
<th><%=t4 %></th>
<th><%=t5 %></th>
<th><%=t6 %></th>
<th><%=t7 %></th>
<th><%=t8 %></th>
<th><%=t21 %></th>
<th><%=t22 %></th>
<th><%=t23 %></th>
<th><%=t24 %></th>
<th><%=t25 %></th>
<th><%=t26 %></th>
<th><%=t27 %></th>

</tr>
<%
}
%>

</table><br/>	
<%
try{
prest = con.prepareStatement("SELECT SUM(A.TER1_AMOUNT)+SUM(B.TER2_AMOUNT)+SUM(C.TER3_AMOUNT)+SUM(D.TER4_AMOUNT) TOTALTERMAMOUNTINBCC FROM withhelp_ter1 A,withhelp_ter2 B,withhelp_ter3 C,withhelp_ter4 D  WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= ANY(SELECT CENTERNAME FROM withhelp_ter1 WHERE BCC=?)");

prest.setString(1, Y1);	
result = prest.executeQuery();
	System.out.println("Querie Successfully Executed");
//********************************************************************************//
		while(result.next()) {
			
			 k21 = result.getString("TOTALTERMAMOUNTINBCC");
			
		}
		prest = con.prepareStatement("SELECT SUM(A.A_AMOUNT)+ SUM(B.M_AMOUNT)+SUM(C.JU_AMOUNT)+SUM(D.JUL_AMOUNT)+SUM(E.AU_AMOUNT)+SUM(F.S_AMOUNT) TOTALAMOUNTWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k22 = result.getString("TOTALAMOUNTWHPINBCC");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(A.A_ERUVAKA)+ SUM(B.M_ERUVAKA)+SUM(C.JU_ERUVAKA)+SUM(D.JUL_ERUVAKA)+SUM(E.AU_ERUVAKA)+SUM(F.S_ERUVAKA) TOTALERUVAKAWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k23 = result.getString("TOTALERUVAKAWHPINBCC");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(A.A_PNP)+ SUM(B.M_PNP)+SUM(C.JU_PNP)+SUM(D.JUL_PNP)+SUM(E.AU_PNP)+SUM(F.S_PNP) TOTALPNPWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k24 = result.getString("TOTALPNPWHPINBCC");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(A.A_OTHER)+ SUM(B.M_OTHER)+SUM(C.JU_OTHER)+SUM(D.JUL_OTHER)+SUM(E.AU_OTHER)+SUM(F.S_OTHER) TOTALOTHERWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k25 = result.getString("TOTALOTHERWHPINBCC");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(A.A_EXPAMOUNT)+ SUM(B.M_EXPAMOUNT)+SUM(C.JU_EXPAMOUNT)+SUM(D.JUL_EXPAMOUNT)+SUM(E.AU_EXPAMOUNT)+SUM(F.S_EXPAMOUNT) TOTALEXPAMOUNTWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k26 = result.getString("TOTALEXPAMOUNTWHPINBCC");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(A.A_TOTALAMOUNT)+SUM(B.M_TOTALAMOUNT)+SUM(C.JU_TOTALAMOUNT)+SUM(D.JUL_TOTALAMOUNT)+SUM(E.AU_TOTALAMOUNT)+SUM(F.S_TOTALAMOUNT)TOTALTOTALAMOUNTWHPINBCC FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k27 = result.getString("TOTALTOTALAMOUNTWHPINBCC");
		System.out.println("hello"+k1);
		}
		
		prest = con.prepareStatement("SELECT SUM(G.O_AMOUNT)+SUM(H.N_AMOUNT)+SUM(I.D_AMOUNT)+SUM(J.JAN_AMOUNT)+SUM(K.F_AMOUNT)+SUM(L.MAR_AMOUNT) TOTALAMOUNTWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k28 = result.getString("TOTALAMOUNTWHPINBCC2");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(G.O_ERUVAKA)+SUM(H.N_ERUVAKA)+SUM(I.D_ERUVAKA)+SUM(J.JAN_ERUVAKA)+SUM(K.F_ERUVAKA)+SUM(L.MAR_ERUVAKA) TOTALERUVAKAWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k29 = result.getString("TOTALERUVAKAWHPINBCC2");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(G.O_PNP)+SUM(H.N_PNP)+SUM(I.D_PNP)+SUM(J.JAN_PNP)+SUM(K.F_PNP)+SUM(L.MAR_PNP) TOTALPNPWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k30 = result.getString("TOTALPNPWHPINBCC2");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(G.O_OTHER)+SUM(H.N_OTHER)+SUM(I.D_OTHER)+SUM(J.JAN_OTHER)+SUM(K.F_OTHER)+SUM(L.MAR_OTHER) TOTALOTHERWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k31 = result.getString("TOTALOTHERWHPINBCC2");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(G.O_EXPAMOUNT)+SUM(H.N_EXPAMOUNT)+SUM(I.D_EXPAMOUNT)+SUM(J.JAN_EXPAMOUNT)+SUM(K.F_EXPAMOUNT)+SUM(L.MAR_EXPAMOUNT) TOTALEXPAMOUNTWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k32 = result.getString("TOTALEXPAMOUNTWHPINBCC2");
		System.out.println("hello"+k1);
		}
		prest = con.prepareStatement("SELECT SUM(G.O_TOTALAMOUNT)+SUM(H.N_TOTALAMOUNT)+SUM(I.D_TOTALAMOUNT)+SUM(J.JAN_TOTALAMOUNT)+SUM(K.F_TOTALAMOUNT)+SUM(L.MAR_TOTALAMOUNT) TOTALTOTALAMOUNTWHPINBCC2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
		prest.setString(1, Y1);	
		result = prest.executeQuery();
		System.out.println("Querie Successfully Executed");
		while(result.next()) { 
		System.out.println("go to while loop");
		k33 = result.getString("TOTALTOTALAMOUNTWHPINBCC2");
		System.out.println("hello"+k1);
		}
		
		  u22= Float.parseFloat(k21);
	      u23 = Float.parseFloat(k22);
          u24 = Float.parseFloat(k23); 
	      u25 = Float.parseFloat(k24);
	      u26 = Float.parseFloat(k25); 
	      u27 = Float.parseFloat(k26);
	      u28 = Float.parseFloat(k27);
	      u29 = Float.parseFloat(k28);
          u30 = Float.parseFloat(k29); 
	      u31 = Float.parseFloat(k30);
	      u32 = Float.parseFloat(k31); 
	      u33 = Float.parseFloat(k32);
	      u34 = Float.parseFloat(k33);
	      
	      
	       u35 = u23+u29;
		   u36 = u24+u30;
		   u37 = u25+u31;
		   u38 = u26+u32;
		   u39 = u27+u33;
		   u40 = u28+u34;
		   u41=   u22-u40;
	      
	      
	      
	      
}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

%>
<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">YEAR WISE</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;"> COMPARISION REPORT OF WITH HELP PRICE TERMWISE AND EXPENDITURE IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">ANNUM</th>
<th rowspan="2">TOTAL WHP TERM AMOUNT IN BCC</th>
<th colspan="6">TOTAL WHP EXPENDITURE AMOUNT IN BCC</th>
<th rowspan="2">NET AMOUNT (TOTAL TERM AMOUNT - TOTAL OF TOTAL WHP EXPENDITURE AMOUNT IN BCC)  </th>
</tr>
<tr bgcolor="yellow">
<th>TOTAL WHP AMOUNT IN BCC </th>
<th>TOTAL ERUVAKA AMOUNT IN BCC </th>
<th>TOTAL PNP AMOUNT IN BCC</th>
<th>TOTAL OTHERS AMOUNT IN BCC</th>
<th>TOTAL OTHER EXPENDITURE AMOUNT IN BCC (ERUVAKA + PNP + OTHERS) </th>
<th>TOTAL OF TOTAL WHP EXPENDITURE AMOUNT IN BCC</th>
</tr>
<tr>
<th>YEAR WISE</th>
<th><%=u22 %> </th>
<th><%=u35 %></th>
<th><%=u36 %> </th>
<th><%=u37 %> </th>
<th><%=u38 %></th>
<th><%=u39 %> </th>
<th><%=u40 %></th>
<th><%=u41 %> </th>
</tr>

</table><br/>


<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>