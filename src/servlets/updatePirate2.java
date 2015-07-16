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

import database.DBConn;

/**
 * Servlet implementation class asWiz1
 */
@WebServlet("/updatePirate2")
public class updatePirate2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = null;
			
			String firstname = request.getParameter("firstname");		
			String lastname = request.getParameter("lastname");
			String oship = request.getParameter("oship");
			String pname = request.getParameter("pname");
			
			DBConn db = new DBConn();
			
			try{
			  db.update("Update Pirate set Firstname='" + firstname + "', LastName='" + lastname + "', OriginalShip='" + oship + "', PirateName='" + pname + "' where ID='" + updatePirate.cPirate.getId() + "'");
			}
			catch(Exception e){
				System.out.println("error here " + e);
			}
			System.out.println("info entered into db");
			
			ArrayList<String> pirates = new ArrayList<String>();
			String plunder = new String();

			DBConn dbc = new DBConn();
			ResultSet rs;
			
			try {
				rs = dbc.query("Select PirateName From Pirate");
				while(rs.next()){
						pirates.add(rs.getString("PirateName"));
				}
				
				int h = 1;
				for(String s : pirates){
					request.setAttribute("P" + h, s);
					System.out.println("P" + h);
					h++;
				}
				
				rs = dbc.query("Select PlunderAmount from User"); 
				while(rs.next()){
						plunder = (rs.getString("PlunderAmount"));
				}
				
				request.setAttribute("Plunder", plunder);
			
			} catch (SQLException e) {
				System.out.println("SQL error selecting pirates/plunder" + e);
				e.printStackTrace();
			} catch (Exception e) {
				System.out.println(e);
			}
					
			requestDispatcher = request.getRequestDispatcher("Main.jsp");
			requestDispatcher.forward(request, response);
		
		
	}

}