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
public class BCCProcurimentDeleteCheck1  extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GETTING PARAMETERS FROM HTML //
		
		
			String  param1 = request.getParameter("bulkcoolingcenter");
			String  param2 = request.getParameter("dateofentry");
			
			
			
			
	        
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
		    String k2 = "null";
		   
		    
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
				 
				 prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
					prest.setString(1, param2);	
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
									  k2 = result.getString("DATEOFENTRY");

									}		
					 
					 //*************************************************************
					
					 
				 
				 prest = con.prepareStatement("select BCC FROM center_details ");
				 result = prest.executeQuery();
					System.out.println(" Querie Successfully Executed");
					
					//****************
			
					ArrayList ar5 = new ArrayList();
					while(result.next()) {
						System.out.println("helloworld");
					 String s1 = result.getString("BCC");
					 ar5.add(s1);
					}
					
					ArrayList ar6 = new ArrayList();
					ar6.add(p);
			
					ar5.retainAll(ar6);
					
					System.out.println(ar5.size());
					
					if(ar5.size()!=0){
						System.out.println("GOING TO IF LOOP SUCCESSFULLY");
		    		    System.out.println("ifloop");
								 
					
                               // TRACK THESE PARAMETERS TO NEXT SESSION
                                  
								 HttpSession s=request.getSession();
									s.setAttribute("cname1", p); 
									s.setAttribute("cname2", k2); 
					
				System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				
					 RequestDispatcher rd212 = request.getRequestDispatcher("BccProcurementDeleteEntryCheck.jsp");
							 rd212.forward(request, response);		
								  
				    	   }// IF END
				    	   
					
					
					
					
					
					// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED
									          
									          prest = con.prepareStatement("select BCC FROM center_details ");
												
												result = prest.executeQuery();
												System.out.println(" ANNUM Querie Successfully Executed");
										
												ArrayList ar = new ArrayList();
													while(result.next()) {
														System.out.println("helloworld");
													 String s1 = result.getString("BCC");
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
			} catch (NullPointerException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

		        RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
		        rd3.forward(request, response);
			
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	               }

	}// POST

}// SERV
