package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class SukhibhavaClaimDatabaseEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
// GET CONFORMED PARAMETERS FROM Aprilprocuriment1check.jsp //
		
		HttpSession s=request.getSession();
		String x1=(String)s.getAttribute("cname1");
		String x2=(String)s.getAttribute("cname2");
		String x3=(String)s.getAttribute("cname3");
		String x4=(String)s.getAttribute("cname4");
		String x5=(String)s.getAttribute("cname5");
		String x6=(String)s.getAttribute("cname6");
		String x7=(String)s.getAttribute("cname7");
		String x8=(String)s.getAttribute("cname8");
		String x9=(String)s.getAttribute("cname9");
		String x10=(String)s.getAttribute("cname10");
		
		
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	    Statement st = null;
	    String k1 = "null";
	    String k2 = "null";
	    String k3 = "null";
	    ArrayList a1 = new ArrayList();
		   ArrayList a2 = new ArrayList();
		   ArrayList a3 = new ArrayList();
		   ArrayList a5 = new ArrayList();
		   ArrayList a4 = new ArrayList();
	    int row = 0;
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			System.out.println(x5);
			
			st = con.createStatement();
			 result = st.executeQuery("select count(*) from sukhclaim_i ");
			 while (result.next()) {
				 row = result.getInt(1);
				 }
			 System.out.println(row);
			 System.out.println("row calculated");
			 
			 if(row == 0){
			
			//************************* entry empty table*************************//
			prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
			prest.setString(1, x10);	
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
							prest = con.prepareStatement("SELECT DATE_FORMAT(SYSDATE(), '%d/%m/%Y')SYSTEMDATE");
							
							result = prest.executeQuery();
								System.out.println("SYSTEMDATE");
						//********************************************************************************//
									while(result.next()) {
									  k3 = result.getString("SYSTEMDATE");

									}
									System.out.println(k1);
									System.out.println(k2);
									System.out.println(k3);
			 if(k2.equals(k3)){
				 
				 System.out.println("enter in to if loop");
	
	    		   prest = con.prepareStatement("insert into sukhclaim_i values(?,?,?,?,?,?,?,?,?,?)");
	   			prest.setString(1, x1);
	   			prest.setString(2, x2);
	   			prest.setString(3, x3);
	   			prest.setString(4, x4);
	   			prest.setString(5, x5);
	   			prest.setString(6, x6);
	   			prest.setString(7, x7);
	   			prest.setString(8, x8);
	   			prest.setString(9, x9);
	   			prest.setString(10, k2);
	   			
	   			
	   			prest.executeUpdate();
	   			System.out.println("data successfully entered");
	   			
	   			// set CENTER NAME TO NEXT SESSION //
	   			HttpSession s1=request.getSession();
	   			s1.setAttribute("cname3",x3);
	   			
	   			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
	   			
	   			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	   	          rd2.forward(request, response);
	   	          
	   	 } 
			 
			 else {
			

			            RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
	                    rd3.forward(request, response);
			    	   
				}
			
			 }//end of if row
			 
 else {
				 
				 prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
					prest.setString(1, x10);	
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
									prest = con.prepareStatement("SELECT DATE_FORMAT(SYSDATE(), '%d/%m/%Y')SYSTEMDATE");
									
									result = prest.executeQuery();
										System.out.println("SYSTEMDATE");
								//********************************************************************************//
											while(result.next()) {
											  k3 = result.getString("SYSTEMDATE");

											}
				 

				 prest = con.prepareStatement("select SUCL_DATE_OF_ENTRY FROM sukhclaim_i ");
				 result = prest.executeQuery();
					System.out.println(" Querie Successfully Executed");
					
					//****************
			
					
					while(result.next()) {
						System.out.println("helloworld");
					 String s1 = result.getString("SUCL_DATE_OF_ENTRY");
					 a3.add(s1);
					}
					
				
					//***********************************************************//
					
					 prest = con.prepareStatement("select CENTERNAME FROM sukhclaim_i ");
						
						result = prest.executeQuery();
						System.out.println(" ANNUM Querie Successfully Executed");
				
						
							while(result.next()) {
								System.out.println("helloworld");
							 String s1 = result.getString("CENTERNAME");
							 a1.add(s1);
							}
							
							 prest = con.prepareStatement("select SUCL_GENERALNUMBER FROM sukhclaim_i ");
								
								result = prest.executeQuery();
								System.out.println(" ANNUM Querie Successfully Executed");
						
								
									while(result.next()) {
										System.out.println("helloworld");
									 String s1 = result.getString("SUCL_GENERALNUMBER");
									 a2.add(s1);
									}	
							System.out.println(a2.size());
							
							String [] resulted1 = new String	[a1.size()];
							resulted1 = (String[]) a1.toArray(resulted1);
							String [] resulted2 = new String	[a2.size()];
							resulted2 = (String[]) a2.toArray(resulted2);
							String [] resulted3 = new String	[a3.size()];
							resulted3 = (String[]) a3.toArray(resulted3);
							
							for(int i=0;i<resulted1.length; i++){
								 
								String k = resulted1[i]+resulted2[i]+resulted3[i];
								
								System.out.println(k);
								 
								a4.add(k);
							}
							
							String l= x3+x5+k2;
							a5.add(l);
							
							System.out.println("output"+l);
							
							a4.retainAll(a5);
							
							System.out.println("output"+a4);
							
							System.out.println("h"+a4.size());
							
							if(a4.size()==0){ // checking centername and general number
								 
								System.out.println(k1);
								System.out.println(k2);
								System.out.println(k3);							
															
									 if(k2.equals(k3)){ // checking date of entry
					
					    		  
					
										 prest = con.prepareStatement("insert into sukhclaim_i values(?,?,?,?,?,?,?,?,?,?)");
								   			prest.setString(1, x1);
								   			prest.setString(2, x2);
								   			prest.setString(3, x3);
								   			prest.setString(4, x4);
								   			prest.setString(5, x5);
								   			prest.setString(6, x6);
								   			prest.setString(7, x7);
								   			prest.setString(8, x8);
								   			prest.setString(9, x9);
								   			prest.setString(10, k2);
					
					prest.executeUpdate();
					System.out.println("data successfully entered");
					
					// set CENTER NAME TO NEXT SESSION //
					HttpSession s1=request.getSession();
					s1.setAttribute("cname3",x3);
					
					// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
					
					 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
			          rd2.forward(request, response);
									 }//end checking date of entry
									 else {
											

								            RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
						                    rd3.forward(request, response);
								    	   
									}//end else1  
									 
					}// end checking general number and centername	AND DOE
							
							else{
								
								  RequestDispatcher rd10 = request.getRequestDispatcher("Error11.jsp");
				                    rd10.forward(request, response);
								
							}
							
			 }// end row else
			
			 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

        RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
        rd3.forward(request, response);
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

}//P

}// S
