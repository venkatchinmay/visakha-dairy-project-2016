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
public class CattleinsuranceDataBaseEntry extends HttpServlet {
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
		String x11=(String)s.getAttribute("cname11");
		String x12=(String)s.getAttribute("cname12");
		String x13=(String)s.getAttribute("cname13");
		
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
	    int row = 0;
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			System.out.println(x5);
			
			//************************* entry empty table*************************//
			st = con.createStatement();
			 result = st.executeQuery("select count(*) from cattle_i ");
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
						 
	
	    		   prest = con.prepareStatement("insert into cattle_i values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	   			prest.setString(1, x1);
	   			prest.setString(2, x2);
	   			prest.setString(3, x3);
	   			prest.setString(4, x4);
	   			prest.setString(5, x5);
	   			prest.setString(6, x6);
	   			prest.setString(7, x7);
	   			prest.setString(8, x8);
	   			prest.setString(9, x9);
	   			prest.setString(10, x10);
	   			prest.setString(11, x11);
	   			prest.setString(12, x12);
	   			prest.setString(13, k2);
	   			prest.executeUpdate();
	   			System.out.println("data successfully entered");
	   			
	   			// set CENTER NAME TO NEXT SESSION //
	   			HttpSession s1=request.getSession();
	   			s1.setAttribute("cname3",x3);
	   			
	   			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
	   			
	   			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	   	          rd2.forward(request, response);
	   	          
					 }//end if
					 
					 else {
							

				            RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
		                    rd3.forward(request, response);
				    	   
					}
	   	          
	   	 } // end of if row
			 
			 else {
			
			//*************************************************VERIFICATION OF CENTER NAME************************************************************************** 
			 prest = con.prepareStatement("select CI_DDNUMBER  FROM cattle_i ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("CI_DDNUMBER");
				 ar5.add(s1);
				}
				
				ArrayList ar6 = new ArrayList();
				ar6.add(x9);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()==1){
					System.out.println("GOING TO IF LOOP SUCCESSFULLY");
	    		    System.out.println("ifloop");
			    	   
	    		    RequestDispatcher rd21 = request.getRequestDispatcher("error5.jsp");
		 	          rd21.forward(request, response);
				}
			    	   
			    	   else {
			    		   
			    		   prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
							prest.setString(1, x13);	
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
			
			    		  
			
			prest = con.prepareStatement("insert into cattle_i values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prest.setString(1, x1);
			prest.setString(2, x2);
			prest.setString(3, x3);
			prest.setString(4, x4);
			prest.setString(5, x5);
			prest.setString(6, x6);
			prest.setString(7, x7);
			prest.setString(8, x8);
   			prest.setString(9, x9);
   			prest.setString(10, x10);
   			prest.setString(11, x11);
   			prest.setString(12, x12);
   			prest.setString(13, k2);
			
			prest.executeUpdate();
			System.out.println("data successfully entered");
			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x3);
			
			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	          rd2.forward(request, response);
							 }//if
							 else {
									

						            RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
				                    rd3.forward(request, response);
						    	   
							}//end else1   
				}// end else2
			 }// end of row else
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

        RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
        rd3.forward(request, response);
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

}//P

}// S
