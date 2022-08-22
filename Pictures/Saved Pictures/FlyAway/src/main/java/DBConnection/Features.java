package DBConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import Project.StringCode;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
public class Features {
	public Connection con = null;
	public Statement st = null;
	public Features() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3305/flyaway", "root", "Sherlin@18");
		System.out.println("connection established with database");
		st = con.createStatement();
	}
public List<String[]> getAvailableFlights(String f, String t, String d) {		
		List<String[]> flights=new ArrayList<>();
		String query="SELECT * FROM flyaway.flights where fromf='"+f+"' and tof='"+t+"' and datef='"+d+"'";
		try {
			ResultSet rs=st.executeQuery(query);		
			if(rs.next()) {
				String[] flight=new String[3];
				flight[0]=rs.getString("fname");
				flight[1]=rs.getString("timef");
				flight[2]=rs.getString("price");
				flights.add(flight);
				return flights;
			}						
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return null;
	}
	public HashMap<String, String> checkUser(String email, String password) {		
		HashMap<String,String> user=null;
		String query="select * from user where email='"+email+"' and password='"+password+"'";
		try {
			ResultSet rs=st.executeQuery(query);
			if(rs.next()) {
				user=new HashMap<>();
				user.put("name", rs.getString("name"));
				user.put("email",rs.getString("email"));
				user.put("phno",rs.getString("phno"));
				user.put("adno",rs.getString("adno"));
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public boolean insertUser(HashMap<String, String> user) {
		String query="INSERT INTO user (email, password, name, phno, adno) values('"+user.get("email")+"','"+user.get("password")+"','"+user.get("name")+"','"+user.get("phno")+"','"+user.get("adno")+"')";                   		
		try {
			st.execute(query);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean checkAdmin(String email, String password) {
		try {
			ResultSet rs = st
					.executeQuery("select * from admin where email='" + email + "' and password='" + password + "'");
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean changeAdminPassword(String email, String password) {
		try {
			ResultSet rs = st.executeQuery("select * from admin where email='" + email + "'");
			if (!rs.next()) {
				return false;
			}
			st.execute("update admin set password='" + password + "' where email='" + email + "'");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean insertFlight(HashMap<String, String> flight) throws SQLException {	
		String query1 = "INSERT INTO flights (id,fname, fromf, tof, datef, timef, price) VALUES" + " ('"
				+ StringCode.fixSqlFieldValue(flight.get("id")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("fname")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("from")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("to")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("date")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("time")) + "'," + " '"
				+ StringCode.fixSqlFieldValue(flight.get("price")) + "')";	
		System.out.println(flight.get("date"));
		System.out.println(flight.get("time"));		
		try {			
			st.execute(query1);
			return true;
		} catch (SQLException e) {
			System.out.print("error");
			e.printStackTrace();
		}
		return false;
	}
	public List<String[]> searchFlights(String Id, String travellers) {
		List<String[]> flightselect = new ArrayList<>();
		String query = "SELECT * FROM flyaway.flights where Id='" + Id + "' ";
		try {
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				String[] flight = new String[5];
				flight[0] = rs.getString("ID");
				flight[1] = rs.getString("fname");
				flight[2] = rs.getString("timef");
				flight[4] = rs.getString("price");
				int t1 = Integer.parseInt(flight[4]);
				int t2 = Integer.parseInt(travellers);
				int r = t1 * t2;
				String s = String.valueOf(r);
				flight[3] = travellers;
				flight[4] = s;
				flightselect.add(flight);
				return flightselect;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}