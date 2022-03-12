package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BCCProcurimentDatabaseCheck
 */
public class BCCProcurimentDatabaseCheck extends HttpServlet {
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
		String x3=(String)s.getAttribute("cname1");
		String x2=(String)s.getAttribute("cname2");
		String x1=(String)s.getAttribute("cname3");
		String x4=(String)s.getAttribute("cname4");
		String x5=(String)s.getAttribute("cname5");
		String x6=(String)s.getAttribute("cname6");
		
		
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
	    
	    String k1 = "null";
	    String k2 = "null";
	    String k3 = "null";
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
			
			System.out.println(x5);
			prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
			prest.setString(1, x6);	
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
			
			
	
	    prest = con.prepareStatement("insert into bcc_procuriment values(?,?,?,?,?,?)");
	    
	   			prest.setString(1, x3);
	   			prest.setString(2, x2);
	   			prest.setString(3, x1);
	   			prest.setString(4, x4);
	   			prest.setString(5, x5);
	   			prest.setString(6, k2);
	   				   			
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
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

        RequestDispatcher rd3 = request.getRequestDispatcher("Error9.jsp");
        rd3.forward(request, response);
	
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	}

}
