package dairy.project;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
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
 * Servlet implementation class CenterdataCheck
 */
public class CenterupdatedataCheck extends HttpServlet {
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
	        String  param2  =  request.getParameter("bankname");
	         String  param3  = request.getParameter("jointaccountnumber");
			String  param4 = request.getParameter("banklocation");
			String  param5 = request.getParameter("psname");
			String  param6  = request.getParameter("helper1");
			String  param7  =  request.getParameter("helper2");
	        String  param8 =  request.getParameter("helper3");
	        String  param9 =  request.getParameter("equipmentincenter");
	        
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
	        HttpSession s=request.getSession();
			s.setAttribute("cname1", p);
			s.setAttribute("cname2", param2);
			s.setAttribute("cname3", param3);
			s.setAttribute("cname4", param4);
			s.setAttribute("cname5", param5);
			s.setAttribute("cname6", param6);
			s.setAttribute("cname7", param7);
			s.setAttribute("cname8", param8);
			s.setAttribute("cname9", param9);
			
			
			
			System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			

					// RE DIRECTING THIS PAGE TO Centerentrycheck.jsp //		
					 RequestDispatcher rd2 = request.getRequestDispatcher("Centerupdatedentrycheck.jsp");
			          rd2.forward(request, response);
					}
					
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

}
}
