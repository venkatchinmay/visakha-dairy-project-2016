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
public class CattleinsuranceCheck1 extends HttpServlet {
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
			String  param2 = request.getParameter("buffalos");
			String  param3  = request.getParameter("cows");
			String  param4= request.getParameter("totalpremium");
			String  param5 = request.getParameter("bankname");
			String  param6  = request.getParameter("banklocation");
			String  param7= request.getParameter("ddnumber");
			String  param8 = request.getParameter("ddamount");
			String  param9  = request.getParameter("dddate");
			String  param10  = request.getParameter("ddmonth");
			String  param11  = request.getParameter("dateofentry");
			
			System.out.println(param5);
			
			
			
	        
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
		   
		    
	//****************STEP:2 DRIVER INSTALLED******************************************//
		   try{
		    
				Class.forName(driver);
	//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
				con = DriverManager.getConnection(url,username,password);
				System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
				
				
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
									 
								 String param12 = result.getString("BCC");
								 String param13 = result.getString("CENTERCODE");
								 
								 
                               // TRACK THESE PARAMETERS TO NEXT SESSION
                                  
								 HttpSession s=request.getSession();
									s.setAttribute("cname1", param12); 
									s.setAttribute("cname2", param13); 
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
									
									// RE DIRECTING THIS PAGE TO AprilProcurement1check.jsp //		
									
									
								 }	// WHILE END
									System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				
									 RequestDispatcher rd212 = request.getRequestDispatcher("Cattleinsurance1check.jsp");
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