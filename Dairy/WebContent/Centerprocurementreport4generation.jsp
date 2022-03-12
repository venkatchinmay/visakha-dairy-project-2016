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

String k35="0";
String k36="0";
String k37="0";
String k38="0";
String k39="0";
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
		    prest = con.prepareStatement("SELECT SUM(A_BM_AVERAGE)BM_AVG FROM a_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
						System.out.println("go to while loop");
		 k1 = result.getString("BM_AVG");
		 System.out.println("hello"+k1);
		 
		}
	 
		    prest = con.prepareStatement("SELECT SUM(A_CM_AVERAGE)CM_AVG FROM a_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
			
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
						k2 = result.getString("CM_AVG");
		 }
		
		    prest = con.prepareStatement("SELECT SUM(A_TOTAL_AVERAGE)TOTAL_AVG FROM a_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k3 = result.getString("TOTAL_AVG");
		
					}
		//********************************************************************************************************************//
		  String Y3 ="MAY";
		    prest = con.prepareStatement("SELECT SUM(M_BM_AVERAGE)BM_AVG FROM m_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k4 = result.getString("BM_AVG");
		 
		}
	 
		    prest = con.prepareStatement("SELECT SUM(M_CM_AVERAGE)CM_AVG FROM m_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k5 = result.getString("CM_AVG");
		 }
		
		    prest = con.prepareStatement("SELECT SUM(M_TOTAL_AVERAGE)TOTAL_AVG FROM m_procuriment WHERE BCC=? ");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k6 = result.getString("TOTAL_AVG");
		
					}
					//********************************************************************************************************************//
					  String Y4 ="JUNE";
					    prest = con.prepareStatement("SELECT SUM(JU_BM_AVERAGE)BM_AVG FROM ju_procuriment WHERE BCC=? ");
						prest.setString(1, Y1);	
						
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k7 = result.getString("BM_AVG");
					 
					}
				 
					    prest = con.prepareStatement("SELECT SUM(JU_CM_AVERAGE)CM_AVG FROM ju_procuriment  WHERE BCC=? ");
						prest.setString(1, Y1);	
						
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k8 = result.getString("CM_AVG");
					 }
					
					    prest = con.prepareStatement("SELECT SUM(JU_TOTAL_AVERAGE)TOTAL_AVG FROM ju_procuriment WHERE BCC=? ");
						prest.setString(1, Y1);	
						
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k9 = result.getString("TOTAL_AVG");
					
								}			
								//********************************************************************************************************************//
								  String Y5 ="JULY";
								    prest = con.prepareStatement("SELECT SUM(JUL_BM_AVERAGE)BM_AVG FROM jul_procuriment WHERE BCC=? ");
									prest.setString(1, Y1);	
									
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
								k10 = result.getString("BM_AVG");
								 
								}
							 
								    prest = con.prepareStatement("SELECT SUM(JUL_CM_AVERAGE)CM_AVG FROM jul_procuriment WHERE BCC=? ");
									prest.setString(1, Y1);	
									
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
								 k11 = result.getString("CM_AVG");
								 }
								
								    prest = con.prepareStatement("SELECT SUM(JUL_TOTAL_AVERAGE)TOTAL_AVG FROM jul_procuriment WHERE BCC=? ");
									prest.setString(1, Y1);	
									
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
												k12 = result.getString("TOTAL_AVG");
								
											}	
											//**********************************************************************//
											
								              String Y6 ="AUGUST";
										    prest = con.prepareStatement("SELECT SUM(AU_BM_AVERAGE)BM_AVG FROM au_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
											
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										k13 = result.getString("BM_AVG");
										 
										}
									 
										    prest = con.prepareStatement("SELECT SUM(AU_CM_AVERAGE)CM_AVG FROM au_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
											
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k14 = result.getString("CM_AVG");
										 }
										
										    prest = con.prepareStatement("SELECT SUM(AU_TOTAL_AVERAGE)TOTAL_AVG FROM au_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
											
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k15 = result.getString("TOTAL_AVG");
										
													}
										//********************************************************************************************************************//
										  String Y7 ="SEPTEMBER";
										    prest = con.prepareStatement("SELECT SUM(S_BM_AVERAGE)BM_AVG FROM s_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
											
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k16 = result.getString("BM_AVG");
										 
										}
									 
										    prest = con.prepareStatement("SELECT SUM(S_CM_AVERAGE)CM_AVG FROM s_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
												
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k17 = result.getString("CM_AVG");
										 }
										
										    prest = con.prepareStatement("SELECT SUM(S_TOTAL_AVERAGE)TOTAL_AVG FROM s_procuriment WHERE BCC=? ");
											prest.setString(1, Y1);	
												
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k18 = result.getString("TOTAL_AVG");
										
													}
													//********************************************************************************************************************//
													  String Y8 ="OCTOBER";
													    prest = con.prepareStatement("SELECT SUM(O_BM_AVERAGE)BM_AVG FROM o_procuriment  WHERE BCC=? ");
														prest.setString(1, Y1);	
														
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													 k19 = result.getString("BM_AVG");
													 
													}
												 
													    prest = con.prepareStatement("SELECT SUM(O_CM_AVERAGE)CM_AVG FROM o_procuriment WHERE BCC=? ");
														prest.setString(1, Y1);	
															
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													k20 = result.getString("CM_AVG");
													 }
													
													    prest = con.prepareStatement("SELECT SUM(O_TOTAL_AVERAGE)TOTAL_AVG FROM o_procuriment WHERE BCC=? ");
														prest.setString(1, Y1);	
														
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													 k21 = result.getString("TOTAL_AVG");
													
																}			
																//********************************************************************************************************************//
																  String Y9 ="NOVEMBER";
																    prest = con.prepareStatement("SELECT SUM(N_BM_AVERAGE)BM_AVG FROM n_procuriment  WHERE BCC=? ");
																	prest.setString(1, Y1);	
																	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k22 = result.getString("BM_AVG");
																 
																}
															 
																    prest = con.prepareStatement("SELECT SUM(N_CM_AVERAGE)CM_AVG FROM n_procuriment WHERE BCC=? ");
																	prest.setString(1, Y1);	
																	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k23 = result.getString("CM_AVG");
																 }
																
																    prest = con.prepareStatement("SELECT SUM(N_TOTAL_AVERAGE)TOTAL_AVG FROM n_procuriment WHERE BCC=? ");
																	prest.setString(1, Y1);	
																	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k24 = result.getString("TOTAL_AVG");
																}
																			//**********************************************************************//
																			
																              String Y10 ="DECEMBER";
																		    prest = con.prepareStatement("SELECT SUM(D_BM_AVERAGE)BM_AVG FROM d_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k25 = result.getString("BM_AVG");
																		 
																		}
																	 
																		    prest = con.prepareStatement("SELECT SUM(D_CM_AVERAGE)CM_AVG FROM d_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k26 = result.getString("CM_AVG");
																		 }
																		
																		    prest = con.prepareStatement("SELECT SUM(D_TOTAL_AVERAGE)TOTAL_AVG FROM d_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k27 = result.getString("TOTAL_AVG");
																		
																					}
																		//********************************************************************************************************************//
																		  String Y11 ="JANUARY";
																		    prest = con.prepareStatement("SELECT SUM(JAN_BM_AVERAGE)BM_AVG FROM jan_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k28 = result.getString("BM_AVG");
																		 
																		}
																	 
																		    prest = con.prepareStatement("SELECT SUM(JAN_CM_AVERAGE)CM_AVG FROM jan_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k29 = result.getString("CM_AVG");
																		 }
																		
																		    prest = con.prepareStatement("SELECT SUM(JAN_TOTAL_AVERAGE)TOTAL_AVG FROM jan_procuriment WHERE BCC=? ");
																			prest.setString(1, Y1);	
																				
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		k30 = result.getString("TOTAL_AVG");
																		
																					}
																					//********************************************************************************************************************//
																					  String Y12 ="FEBRUARY";
																					    prest = con.prepareStatement("SELECT SUM(F_BM_AVERAGE)BM_AVG FROM f_procuriment WHERE BCC=? ");
																						prest.setString(1, Y1);	
																							
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					 k31 = result.getString("BM_AVG");
																					 
																					}
																				 
																					    prest = con.prepareStatement("SELECT SUM(F_CM_AVERAGE)CM_AVG FROM f_procuriment WHERE BCC=? ");
																						prest.setString(1, Y1);	
																						
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					 k32 = result.getString("CM_AVG");
																					 }
																					
																					    prest = con.prepareStatement("SELECT SUM(F_TOTAL_AVERAGE)TOTAL_AVG FROM f_procuriment WHERE BCC=? ");
																						prest.setString(1, Y1);	
																						
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					k33 = result.getString("TOTAL_AVG");
																					
																								}			
																								//********************************************************************************************************************//
																								  String Y13 ="MARCH";
																							 
																								    prest = con.prepareStatement("SELECT SUM(MAR_BM_AVERAGE)BM_AVG FROM mar_procuriment WHERE BCC=? ");
																									prest.setString(1, Y1);	
																										
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								 k35 = result.getString("BM_AVG");
																								 }
																								
																								    prest = con.prepareStatement("SELECT SUM(MAR_CM_AVERAGE)CM_AVG FROM mar_procuriment WHERE BCC=? ");
																									prest.setString(1, Y1);	
											                                                 	
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
					//*******************************************************************************//
																											while(result.next()) { 
																								 k36 = result.getString("CM_AVG");
																								 
																								//********************************************************************************************************************//
																											}
																								    prest = con.prepareStatement("SELECT SUM(MAR_TOTAL_AVERAGE)TOTAL_AVG FROM mar_procuriment WHERE BCC= ? ");
																									prest.setString(1, Y1);	
																										
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								k37 = result.getString("TOTAL_AVG");
																								 
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
																											float u34 = Float.parseFloat(k35); 
																											float u35 = Float.parseFloat(k36);
																											float u36 = Float.parseFloat(k37);
																											
																											float u37 = u1+u4+u7+u10+u13+u16+u19+u22+u25+u28+u31+u34;
																											float u38 = u2+u5+u8+u11+u14+u17+u20+u23+u26+u29+u32+u35; 
																											float u39 = u3+u6+u9+u12+u15+u18+u21+u24+u27+u30+u33+u36;
																											
		%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">ALL MONTHS LIST</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">MONTH WISE AND ANNUM ANALYSIS REPORT OF CENTER PROCUREMENT IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>MONTH</th>
<th>TOTAL AVERAGE B.M VALUE OF ALL CENTERS </th>
<th>TOTAL AVERAGE C.M VALUE OF ALL CENTERS </th>
<th>TOTAL AVERAGE TOTAL VALUE OF ALL CENTERS </th>
</tr>
<tr>
<th><%=Y2 %></th>
<th><%=k1 %></th>
<th><%=k2 %></th>
<th><%=k3 %></th>
</tr>
<tr>
<th><%=Y3 %></th>
<th><%=k4 %></th>
<th><%=k5 %></th>
<th><%=k6 %></th>
</tr>
<tr>
<th><%=Y4 %></th>
<th><%=k7 %></th>
<th><%=k8 %></th>
<th><%=k9 %></th>
</tr>
<tr>
<th><%=Y5 %></th>
<th><%=k10 %></th>
<th><%=k11 %></th>
<th><%=k12 %></th>
</tr>
<tr>
<th><%=Y6 %></th>
<th><%=k13 %></th>
<th><%=k14 %></th>
<th><%=k15 %></th>
</tr>
<tr>
<th><%=Y7 %></th>
<th><%=k16 %></th>
<th><%=k17 %></th>
<th><%=k18 %></th>
</tr>
<tr>
<th><%=Y8 %></th>
<th><%=k19 %></th>
<th><%=k20 %></th>
<th><%=k21 %></th>
</tr>
<tr>
<th><%=Y9 %></th>
<th><%=k22 %></th>
<th><%=k23 %></th>
<th><%=k24 %></th>
</tr>
<tr>
<th><%=Y10 %></th>
<th><%=k25 %></th>
<th><%=k26 %></th>
<th><%=k27 %></th>
</tr>
<tr>
<th><%=Y11 %></th>
<th><%=k28 %></th>
<th><%=k29 %></th>
<th><%=k30 %></th>
</tr>
<tr>
<th><%=Y12 %></th>
<th><%=k31 %></th>
<th><%=k32 %></th>
<th><%=k33 %></th>
</tr>
<tr>
<th><%=Y13 %></th>
<th><%=k35 %></th>
<th><%=k36 %></th>
<th><%=k37 %></th>
</tr>
</table><br/>
<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">YEAR WISE</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;"> ANNUM ANALYSIS REPORT OF CENTER PROCUREMENT IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>ANNUM</th>
<th>TOTAL AVERAGE B.M VALUE OF ALL CENTERS </th>
<th>TOTAL AVERAGE C.M VALUE OF ALL CENTERS </th>
<th>TOTAL AVERAGE TOTAL VALUE OF ALL CENTERS </th>
</tr>
<tr>
<th>YEAR WISE</th>
<th><%=u37 %> </th>
<th><%=u38 %></th>
<th><%=u39 %> </th>
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