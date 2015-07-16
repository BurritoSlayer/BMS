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
 * Servlet implementation class backTeacherHome
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = null;
		
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
			
			rs = dbc.query("Select * From Captain Where ID='1'"); 
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

