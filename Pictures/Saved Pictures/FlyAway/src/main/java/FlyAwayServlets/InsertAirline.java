package FlyAwayServlets;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DBConnection.Features;
@WebServlet("/InsertAirline")
public class InsertAirline extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public InsertAirline() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departure=request.getParameter("departure");
		String time=request.getParameter("time");
		String price=request.getParameter("price");		
		HashMap<String,String> flights=new HashMap<>();
		flights.put("fname", fname);
		flights.put("from", from);
		flights.put("to", to);
		flights.put("date", departure);
		flights.put("time", time);
		flights.put("price", price);		
		try {
			Features dao=new Features();
			HttpSession session=request.getSession();
			if(dao.insertFlight(flights)) {				
				session.setAttribute("message", "Flight Added Successfully");
			}
			else {
				session.setAttribute("message", "Invalid Details");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("error");
			e.printStackTrace();
		}
		response.sendRedirect("AdminHome.jsp");		
	}
}