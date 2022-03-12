package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AprilProcurimentDatabaseEntry
 */
public class LOGINTEST1 extends HttpServlet {
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
		String x1=(String)s.getAttribute("PASSWORD");
		
		System.out.println(x1);
		
		if(null!= x1){
			 RequestDispatcher rd1 = request.getRequestDispatcher("Directingpage1.html");
	          rd1.forward(request, response);
		}
		else{
			RequestDispatcher rd1 = request.getRequestDispatcher("loginpage.html");
	          rd1.forward(request, response);
		}
		
	}
}