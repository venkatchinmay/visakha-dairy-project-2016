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
 * Servlet implementation class AprilProcurimentDatabaseEntry
 */
public class Centerreceipt6maintanence extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
// GET CONFORMED PARAMETERS FROM Aprilprocuriment1check.jsp //
		
		String  param1 = request.getParameter("bankname");
		String  param2 = request.getParameter("banklocation");
		
		String x1 = param1.toUpperCase();
		String x2 = param2.toUpperCase();
		
		System.out.println("PA"+x1);
		System.out.println("PA"+x2);
		
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	   ResultSet result = null;
	   ArrayList a1 = new ArrayList();
	   ArrayList a2 = new ArrayList();
	   ArrayList a3 = new ArrayList();
	   ArrayList a4 = new ArrayList();
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			/****************************************************************/
			
			 prest = con.prepareStatement("select BANKNAME FROM center_details ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				//****************
		
				
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("BANKNAME");
				 a1.add(s1);
				}
				
			
				//***********************************************************//
				
				 prest = con.prepareStatement("select BANKLOCATION FROM center_details ");
					
					result = prest.executeQuery();
					System.out.println(" ANNUM Querie Successfully Executed");
			
					
						while(result.next()) {
							System.out.println("helloworld");
						 String s1 = result.getString("BANKLOCATION");
						 a2.add(s1);
						}
						System.out.println(a2.size());
						
						String [] resulted1 = new String	[a1.size()];
						resulted1 = (String[]) a1.toArray(resulted1);
						String [] resulted2 = new String	[a2.size()];
						resulted2 = (String[]) a2.toArray(resulted2);
						
						for(int i=0;i<resulted1.length; i++){
							 
							String k = resulted1[i]+resulted2[i];
							
							System.out.println(k);
							 
							a3.add(k);
						}
						
						String l= x1+x2;
						a4.add(l);
						
						a3.retainAll(a4);
						
						System.out.println("h"+a3.size());
						
						if(a3.size()!=0){
							
							HttpSession s2=request.getSession();
							s2.setAttribute("cname1", x1);
							s2.setAttribute("cname2", x2);

							RequestDispatcher rd1 = request.getRequestDispatcher("Centerreport6generation.jsp");
					          rd1.forward(request, response);
									
						}	
						else {
							RequestDispatcher rd1 = request.getRequestDispatcher("Error13.jsp");
					          rd1.forward(request, response);
						}
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		RequestDispatcher rd1 = request.getRequestDispatcher("Error10.jsp");
        rd1.forward(request, response);
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

}//P

}// S