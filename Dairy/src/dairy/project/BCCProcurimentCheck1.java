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
public class BCCProcurimentCheck1 extends HttpServlet {
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
			String  param2 = request.getParameter("BMaverage");
			String  param3  = request.getParameter("CMaverage");
			String  param4  = request.getParameter("month");
			String  param5  = request.getParameter("dateofentry");
			
			
	        
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
				 
					
								 // CONVERT CM AVERAGE AND B.M AVERAGE TO FLOAT //
								 
								 float u1 = Float.parseFloat(param2); 
								 float u2 = Float.parseFloat(param3);
                                  
                                  float u3 = u1+u2;
                                  
                                  // CONVERT FLOAT VALUE TO STRING 
                                  
                                  String param7 = String.valueOf(u3);
                                  
                               // TRACK THESE PARAMETERS TO NEXT SESSION
                                  
								 HttpSession s=request.getSession();
									s.setAttribute("cname1", p); 
									s.setAttribute("cname2", param2); 
									s.setAttribute("cname3", param3); 
									s.setAttribute("cname4", param7); 
									s.setAttribute("cname5", param4); 
									s.setAttribute("cname6", param5); 
									
									
									// RE DIRECTING THIS PAGE TO AprilProcurement1check.jsp //		
									
									
								
									System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				
									 RequestDispatcher rd212 = request.getRequestDispatcher("BCCProcuriment1Check.jsp");
							          rd212.forward(request, response);		
								  
				    	  
					}
					
					
					
					
					
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
														
														RequestDispatcher rd1 = request.getRequestDispatcher("Error6.jsp");
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
