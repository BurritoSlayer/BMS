package database;
import java.sql.*;
public class DBConn {

	static private String connString =  "jdbc:jtds:sqlserver://PC30071:1433/PirateBooty;instance=MSSQLServer";
	static private String userName = "ngt";
	static private String password = "m5w14X55";
	static private ResultSet rs;
	static private Connection conn;
	
	public DBConn()
	{
		
	}
	
	static void loadDriver(){
		try{
			Class.forName("net.sourceforge.jtds.jdbc.Driver");
		}catch (Exception e){
			System.out.println(String.format("Error: %s", e.getMessage()));
		}
	}
	
	public void update(String s) throws SQLException
	{
		loadDriver();
		conn = DriverManager.getConnection(connString, userName, password);
		try
		{
			PreparedStatement ps = conn.prepareStatement(s, Statement.RETURN_GENERATED_KEYS);
			ps.executeUpdate();
		}
		catch (SQLException ex)
		{
			System.out.println("DBConn.update: " + ex.getMessage());
		}
	}
	
	public ResultSet query(String s) throws SQLException
	{
		loadDriver();
		conn = DriverManager.getConnection(connString, userName, password);
		try
		{
			PreparedStatement ps = conn.prepareStatement(s, Statement.RETURN_GENERATED_KEYS);
			rs = ps.executeQuery();
			return rs;
		}
		catch (SQLException ex)
		{
			System.out.println("DBConn.query: " + ex.getMessage());
			return rs;
		}
	}
	
	static void closeConn()
	{
		try {
			conn.close();
		} catch (SQLException ex) {		
			System.out.println("DBConn.closeConn: " + ex.getMessage());
		}
	}
}
