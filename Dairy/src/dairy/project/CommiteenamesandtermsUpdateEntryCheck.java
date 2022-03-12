package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AprilProcurementCheck1
 */
public class CommiteenamesandtermsUpdateEntryCheck  extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GETTING PARAMETERS FROM HTML //
		
		
		String  param1 = request.getParameter("centername");
		String  param2 = request.getParameter("class");
		String  param3 = request.getParameter("class1");
		String  param4  = request.getParameter("presidentname");
		String  param51  = request.getParameter("presidentendterm");
		String  param6  = request.getParameter("directorname1");
		String  param71  = request.getParameter("directornameendterm1");
		String  param8  = request.getParameter("directorname2");
		String  param91  = request.getParameter("directornameendterm2");
		String  param10  = request.getParameter("directorname3");
		String  param111  = request.getParameter("directornameendterm3");
		String  param12  = request.getParameter("directorname4");
		String  param131  = request.getParameter("directornameendterm4");
		String  param14  = request.getParameter("directorname5");
		String  param151  = request.getParameter("directornameendterm5");
		String  param16  = request.getParameter("directorname6");
		String  param171  = request.getParameter("directornameendterm6");
		String  param18  = request.getParameter("directorname7");
		String  param191 = request.getParameter("directornameendterm7");
		String  param20  = request.getParameter("directorname8");
		String  param211  = request.getParameter("directornameendterm8");
		String  param22 = request.getParameter("directorname9");
		String  param231 = request.getParameter("directornameendterm9");
			
			
	        
	        //************************************** DATA BASE CENTER NAME CHECK********************************//
	        

			// ESTABLISHING CONNECTION TO THE DATABASE //
			
			String driver = "com.mysql.jdbc.Driver";
		    String url    = "jdbc:mysql://localhost/visakhadairy";
		    String username = "root";
		    String password = "root";
	//******************************************************************************************************//
		    Connection con = null;
		    PreparedStatement prest = null;
		    ResultSet result = null;
		    String k1 = "null";
		    String  param5 = "null";
		    String  param7 = "null";
		    String  param9 = "null";
		    String  param11 = "null";
		    String  param13 = "null";
		    String  param15 = "null";
		    String  param17 = "null";
		    String  param19 = "null";
		    String  param21 = "null";
		    String  param23 = "null";
		    
	//****************STEP:2 DRIVER INSTALLED******************************************//
		   try{
		    
				Class.forName(driver);
	//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
				con = DriverManager.getConnection(url,username,password);
				System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
				//**************************************************************
				
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param51);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
									//********************************************************************************//
				while(result.next()) {
				param5 = result.getString("DATEOFENTRY");
				}
				//***********************************************************************************************
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param71);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
									//********************************************************************************//
				while(result.next()) {
				param7 = result.getString("DATEOFENTRY");
				}	
				//***********************************************************
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param91);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param9 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param111);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param11 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param131);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param13 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param151);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param15 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param171);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param17 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param191);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param19 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param211);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param21 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, param231);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
							//********************************************************************************//
				while(result.next()) {
				k1 = result.getString("DATEOFENTRY");

				}
				prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
				prest.setString(1, k1);	
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
				//********************************************************************************//
				while(result.next()) {
				param23 = result.getString("DATEOFENTRY");
				}	
				//********************************************************************************//
				
				//********************************** CENTER NAME CHECK *****************************//
				
				 String p = param1.toUpperCase();
				 
				 System.out.println(p);
				 
				 //********************************************************************************
				 
				 prest = con.prepareStatement("select CENTERNAME FROM center_details ");
				 result = prest.executeQuery();
					System.out.println(" Querie Successfully Executed");
					
					//****************
			
					ArrayList ar5 = new ArrayList();
					while(result.next()) {
						System.out.println("helloworld");
					 String s1 = result.getString("CENTERNAME");
					 ar5.add(s1);
					}
					
					ArrayList ar6 = new ArrayList();
					ar6.add(p);
			
					ar5.retainAll(ar6);
					
					System.out.println(ar5.size());
					
					if(ar5.size()==1){
						System.out.println("GOING TO IF LOOP SUCCESSFULLY");
		    		    System.out.println("ifloop");
				    	      
				    	 
				    		   
				    		   System.out.println("ENTER IF LOOP");
				    		   
				    		   // GATHER BCC CENTER CODE  VALUES FOR PARTICULAR DATA BASE//
				    		   
				    		   prest = con.prepareStatement("select BCC,CENTERCODE FROM center_details WHERE CENTERNAME=? ");
				    		   prest.setString(1, p);
								 result = prest.executeQuery();
								 
								 while(result.next()) {
									 
									 System.out.println("ENTER IF WHILE"); 
									 
								 String param24 = result.getString("BCC");
								 String param25 = result.getString("CENTERCODE");
								 
								 
                                  
                               // TRACK THESE PARAMETERS TO NEXT SESSION
                                  
								 HttpSession s=request.getSession();
									s.setAttribute("cname1", param24); 
									s.setAttribute("cname2", param25); 
									s.setAttribute("cname3", p); 
									s.setAttribute("cname4", param2); 
									s.setAttribute("cname5", param3); 
									s.setAttribute("cname6", param4); 
									s.setAttribute("cname7", param5);  
									s.setAttribute("cname8", param6); 
									s.setAttribute("cname9", param7); 
									s.setAttribute("cname10", param8); 
									s.setAttribute("cname11", param9); 
									s.setAttribute("cname12", param10); 
									s.setAttribute("cname13", param11); 
									s.setAttribute("cname14", param12);
									s.setAttribute("cname15", param13); 
									s.setAttribute("cname16", param14); 
									s.setAttribute("cname17", param15); 
									s.setAttribute("cname18", param16); 
									s.setAttribute("cname19", param17); 
									s.setAttribute("cname20", param18); 
									s.setAttribute("cname21", param19);
									s.setAttribute("cname22", param20); 
									s.setAttribute("cname23", param21); 
									s.setAttribute("cname24", param22); 
									s.setAttribute("cname25", param23);
									
									
									// RE DIRECTING THIS PAGE TO AprilProcurement1check.jsp //		
									
									
								 }	// WHILE END
									System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				
									 RequestDispatcher rd212 = request.getRequestDispatcher("CommiteenamesandtermsUpdateEntryCheck.jsp");
							          rd212.forward(request, response);		
								  
				    	   }// IF END
				    	   
					
					
					
					
					
					// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED
									          
									          prest = con.prepareStatement("select CENTERNAME FROM center_details ");
												
												result = prest.executeQuery();
												System.out.println(" ANNUM Querie Successfully Executed");
										
												ArrayList ar = new ArrayList();
													while(result.next()) {
														System.out.println("helloworld");
													 String s1 = result.getString("CENTERNAME");
													 ar.add(s1);
													}
													System.out.println(ar.size());
													ArrayList ar1 = new ArrayList();
													ar1.add(p);
											
													ar.retainAll(ar1);
													
													System.out.println(ar.size());
													
													if(ar.size()==0){
														
														RequestDispatcher rd1 = request.getRequestDispatcher("Error3.jsp");
												          rd1.forward(request, response);
													}
									        
									     
								 
				    	   
					
				 }catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	               }

	}// POST

}// SERV
