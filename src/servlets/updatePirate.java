package servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Pirate;
import database.DBConn;

/**
 * Servlet implementation class asWiz1
 */
@WebServlet("/updatePirate")
public class updatePirate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Pirate cPirate = new Pirate();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = null;
		DBConn dbc = new DBConn();
		ResultSet rs;
		
		String pid = "0";
		
		for(int i = 1; i <= 100; i++){
			String x = Integer.toString(i);
			if(request.getParameter("optradio" + x) != null){
				pid = x;
			}
		}
		
		String fname = "";
		String lname = "";
		String oship = "";
		String pname = "";
		
		cPirate.setId(pid);
		cPirate.setFirstname(fname);
		cPirate.setLastname(lname);
		cPirate.setOship(oship);
		cPirate.setPiratename(pname);
		
		try{
			rs = dbc.query("Select * from Pirate where ID='" + pid + "'");
			while(rs.next()){
				fname = rs.getString("FirstName");
				lname = rs.getString("LastName");
				oship = rs.getString("OriginalShip");
				pname = rs.getString("PirateName");
			}
			
			request.setAttribute("FirstName", fname);
			request.setAttribute("LastName", lname);
			request.setAttribute("OShip", oship);
			request.setAttribute("PirateName", pname);
			
		} catch(Exception e){
			System.out.println("update pirate wizard error " + e);
		}
		
		requestDispatcher = request.getRequestDispatcher("UpdatePirate.jsp");
		requestDispatcher.forward(request, response);
	}
}