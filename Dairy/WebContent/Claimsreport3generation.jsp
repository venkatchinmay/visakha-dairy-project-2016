<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CLAIMS RECEIPTS GENERATION PANEL</title>
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
		    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
						System.out.println("go to while loop");
		 k1 = result.getString("TOTAL_BUFFALOS");
		 System.out.println("hello"+k1);
		 
		}
	 
		    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
						k2 = result.getString("TOTAL_COWS");
		 }
		
		    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k3 = result.getString("TOTAL_AMOUNT");
		
					}
		//********************************************************************************************************************//
		  String Y3 ="MAY";
		    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y3);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k4 = result.getString("TOTAL_BUFFALOS");
		 
		}
	 
		    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y3);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k5 = result.getString("TOTAL_COWS");
		 }
		
		    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y3);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k6 = result.getString("TOTAL_AMOUNT");
		
					}
					//********************************************************************************************************************//
					  String Y4 ="JUNE";
					    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
						prest.setString(1, Y1);	
						prest.setString(2, Y4);	
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k7 = result.getString("TOTAL_BUFFALOS");
					 
					}
				 
					    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
						prest.setString(1, Y1);	
						prest.setString(2, Y4);	
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k8 = result.getString("TOTAL_COWS");
					 }
					
					    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
						prest.setString(1, Y1);	
						prest.setString(2, Y4);	
						result = prest.executeQuery();
							System.out.println("Querie Successfully Executed");
					//********************************************************************************//
								while(result.next()) { 
					 k9 = result.getString("TOTAL_AMOUNT");
					
								}			
								//********************************************************************************************************************//
								  String Y5 ="JULY";
								    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
									prest.setString(1, Y1);	
									prest.setString(2, Y5);	
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
								k10 = result.getString("TOTAL_BUFFALOS");
								 
								}
							 
								    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
									prest.setString(1, Y1);	
									prest.setString(2, Y5);	
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
								 k11 = result.getString("TOTAL_COWS");
								 }
								
								    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
									prest.setString(1, Y1);	
									prest.setString(2, Y5);	
									result = prest.executeQuery();
										System.out.println("Querie Successfully Executed");
								//********************************************************************************//
											while(result.next()) { 
												k12 = result.getString("TOTAL_AMOUNT");
								
											}	
											//**********************************************************************//
											
								              String Y6 ="AUGUST";
										    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y6);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										k13 = result.getString("TOTAL_BUFFALOS");
										 
										}
									 
										    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y6);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k14 = result.getString("TOTAL_COWS");
										 }
										
										    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y6);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k15 = result.getString("TOTAL_AMOUNT");
										
													}
										//********************************************************************************************************************//
										  String Y7 ="SEPTEMBER";
										    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y7);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k16 = result.getString("TOTAL_BUFFALOS");
										 
										}
									 
										    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y7);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k17 = result.getString("TOTAL_COWS");
										 }
										
										    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
											prest.setString(1, Y1);	
											prest.setString(2, Y7);	
											result = prest.executeQuery();
												System.out.println("Querie Successfully Executed");
										//********************************************************************************//
													while(result.next()) { 
										 k18 = result.getString("TOTAL_AMOUNT");
										
													}
													//********************************************************************************************************************//
													  String Y8 ="OCTOBER";
													    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
														prest.setString(1, Y1);	
														prest.setString(2, Y8);	
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													 k19 = result.getString("TOTAL_BUFFALOS");
													 
													}
												 
													    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
														prest.setString(1, Y1);	
														prest.setString(2, Y8);	
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													k20 = result.getString("TOTAL_COWS");
													 }
													
													    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
														prest.setString(1, Y1);	
														prest.setString(2, Y8);	
														result = prest.executeQuery();
															System.out.println("Querie Successfully Executed");
													//********************************************************************************//
																while(result.next()) { 
													 k21 = result.getString("TOTAL_AMOUNT");
													
																}			
																//********************************************************************************************************************//
																  String Y9 ="NOVEMBER";
																    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																	prest.setString(1, Y1);	
																	prest.setString(2, Y9);	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k22 = result.getString("TOTAL_BUFFALOS");
																 
																}
															 
																    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																	prest.setString(1, Y1);	
																	prest.setString(2, Y9);	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k23 = result.getString("TOTAL_COWS");
																 }
																
																    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																	prest.setString(1, Y1);	
																	prest.setString(2, Y9);	
																	result = prest.executeQuery();
																		System.out.println("Querie Successfully Executed");
																//********************************************************************************//
																			while(result.next()) { 
																 k24 = result.getString("TOTAL_AMOUNT");
																}
																			//**********************************************************************//
																			
																              String Y10 ="DECEMBER";
																		    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y10);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k25 = result.getString("TOTAL_BUFFALOS");
																		 
																		}
																	 
																		    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y10);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k26 = result.getString("TOTAL_COWS");
																		 }
																		
																		    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y10);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k27 = result.getString("TOTAL_AMOUNT");
																		
																					}
																		//********************************************************************************************************************//
																		  String Y11 ="JANUARY";
																		    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y11);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k28 = result.getString("TOTAL_BUFFALOS");
																		 
																		}
																	 
																		    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y11);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		 k29 = result.getString("TOTAL_COWS");
																		 }
																		
																		    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																			prest.setString(1, Y1);	
																			prest.setString(2, Y11);	
																			result = prest.executeQuery();
																				System.out.println("Querie Successfully Executed");
																		//********************************************************************************//
																					while(result.next()) { 
																		k30 = result.getString("TOTAL_AMOUNT");
																		
																					}
																					//********************************************************************************************************************//
																					  String Y12 ="FEBRUARY";
																					    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																						prest.setString(1, Y1);	
																						prest.setString(2, Y12);	
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					 k31 = result.getString("TOTAL_BUFFALOS");
																					 
																					}
																				 
																					    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																						prest.setString(1, Y1);	
																						prest.setString(2, Y12);	
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					 k32 = result.getString("TOTAL_COWS");
																					 }
																					
																					    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																						prest.setString(1, Y1);	
																						prest.setString(2, Y12);	
																						result = prest.executeQuery();
																							System.out.println("Querie Successfully Executed");
																					//********************************************************************************//
																								while(result.next()) { 
																					k33 = result.getString("TOTAL_AMOUNT");
																					
																								}			
																								//********************************************************************************************************************//
																								  String Y13 ="MARCH";
																								    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																									prest.setString(1, Y1);	
																									prest.setString(2, Y13);	
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								k34 = result.getString("TOTAL_BUFFALOS");
																								 
																								}
																							 
																								    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																									prest.setString(1, Y1);	
																									prest.setString(2, Y13);	
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								 k35 = result.getString("TOTAL_COWS");
																								 }
																								
																								    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC=? AND CL_ENTRYMONTH=? ORDER BY BCC");
																									prest.setString(1, Y1);	
											                                                 prest.setString(2, Y13);	
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
					//*******************************************************************************//
																											while(result.next()) { 
																								 k36 = result.getString("TOTAL_AMOUNT");
																								 
																								//********************************************************************************************************************//
																								  
																								    prest = con.prepareStatement("SELECT SUM(CL_BUFFALOS)TOTAL_BUFFALOS FROM claim_i WHERE BCC= ? ORDER BY BCC");
																									prest.setString(1, Y1);	
																										
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								k37 = result.getString("TOTAL_BUFFALOS");
																								 
																								}
																							 
																								    prest = con.prepareStatement("SELECT SUM(CL_COWS)TOTAL_COWS FROM claim_i WHERE BCC= ?  ORDER BY BCC");
																									prest.setString(1, Y1);	
																										
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
																								//********************************************************************************//
																											while(result.next()) { 
																								 k38 = result.getString("TOTAL_COWS");
																								 }
																								
																								    prest = con.prepareStatement("SELECT SUM(CI_AMOUNT)TOTAL_AMOUNT FROM claim_i WHERE BCC= ? ORDER BY BCC");
																									prest.setString(1, Y1);	
											                                                 	
																									result = prest.executeQuery();
																										System.out.println("Querie Successfully Executed");
					//*******************************************************************************//
																											while(result.next()) { 
																								 k39 = result.getString("TOTAL_AMOUNT");
																								 
																											}																					}
																								
		%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">ALL MONTHS LIST</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">MONTHLY LIST OF CLAIMS DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>MONTH</th>
<th>TOTAL NUMBER OF BUFFALOS </th>
<th>TOTAL NUMBER OF COWS </th>
<th>TOTAL AMOUNT</th>
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
<th><%=k34 %></th>
<th><%=k35 %></th>
<th><%=k36 %></th>
</tr>
</table><br/>
<hr>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">YEAR WISE</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">ANNUM LIST OF CLAIMS DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>ANNUM</th>
<th>TOTAL NUMBER OF BUFFALOS </th>
<th>TOTAL NUMBER OF COWS </th>
<th>TOTAL AMOUNT</th>
</tr>
<tr>
<th>YEAR WISE</th>
<th><%=k37 %></th>
<th><%=k38 %></th>
<th><%=k39 %></th>
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