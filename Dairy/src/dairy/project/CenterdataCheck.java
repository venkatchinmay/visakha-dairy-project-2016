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
public class CenterdataCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// GETTING PARAMETERS FROM HTML //
		
		 String  param1  = request.getParameter("bulkcoolingcenter");
			String  param2 = request.getParameter("centercode");
			String  param3 = request.getParameter("centername");
			String  param4  = request.getParameter("mpimpac");
			String  param5  =  request.getParameter("lfno");
	        String  param6  =  request.getParameter("bankname");
	         String  param7  = request.getParameter("jointaccountnumber");
			String  param8 = request.getParameter("banklocation");
			String  param9 = request.getParameter("psname");
			String  param10  = request.getParameter("helper1");
			String  param11  =  request.getParameter("helper2");
	        String  param12 =  request.getParameter("helper3");
	        String  param13 =  request.getParameter("equipmentincenter");
	        
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
				
				
				
				
	        // TRACK THESE PARAMETERS TO NEXT SESSION
	        
	        HttpSession s=request.getSession();
			s.setAttribute("cname1", param1);
			s.setAttribute("cname2", param2);
			s.setAttribute("cname3", param3);
			s.setAttribute("cname4", param4);
			s.setAttribute("cname5", param5);
			s.setAttribute("cname6", param6);
			s.setAttribute("cname7", param7);
			s.setAttribute("cname8", param8);
			s.setAttribute("cname9", param9);
			s.setAttribute("cname10", param10);
			s.setAttribute("cname11", param11);
			s.setAttribute("cname12", param12);
			s.setAttribute("cname13", param13);
			
			
			System.out.println("hero%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			
			
	          
				    	   
				    	   
				    	
					
					
					// RE DIRECTING THIS PAGE TO Centerentrycheck.jsp //		
					 RequestDispatcher rd2 = request.getRequestDispatcher("Centerentrycheck.jsp");
			          rd2.forward(request, response);
					   
		   }catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	}

}
}
