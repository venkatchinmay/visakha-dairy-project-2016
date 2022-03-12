package dairy.project;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class LoginMaintanence
 */
public class DeletingloginDatabaseentry extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  param1  = request.getParameter("username");
		String  param2 = request.getParameter("password");
		
		
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

//********************EXECUTE QUERY**********************************************************//
			

			prest = con.prepareStatement("SELECT * from delete_login_details WHERE USERNAME = ?");
			//***********************************************************************//
			System.out.println(param1);
			prest.setString(1, param1);
			result = prest.executeQuery();
			
			
			while(result.next()) {
			 String s1 = result.getString("USERNAME");
			 String s2 = result.getString("PASSWORDS");
			
			 
			
			 System.out.println("Username"+s1);
			 System.out.println("password"+s2);
			
			
			
			         if (param1.equals(s1)&&param2.equals(s2)){
			        	 RequestDispatcher rd1 = request.getRequestDispatcher("Directingpage11.html");
				          rd1.forward(request, response);
			        	 
                   }
			         else
			         {
			        	 PrintWriter out = response.getWriter();
					      out.print("<html><body><div style='background-color:#FFC0CB;color:#FF0000;position:relative;left:0px;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;'> YOUR ENTERED PASSWORD IS WRONG PLEASE CHECK YOUR PASSWORD YOU HAVE ENTERED </div></body></html>");
						       RequestDispatcher rd1 = request.getRequestDispatcher("Deleteloginpage.html");
						          rd1.include(request, response);
			         }
			}	
			
			//*********************************************************************************//
			
		
		
		System.out.println("hello");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				prest.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		 
	}

	}

