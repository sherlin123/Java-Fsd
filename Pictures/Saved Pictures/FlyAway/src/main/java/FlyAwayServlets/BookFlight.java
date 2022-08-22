package FlyAwayServlets;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DBConnection.Features;
@WebServlet("/BookFlight")
public class BookFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    public BookFlight() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departure=request.getParameter("departure");		
		try {
			Features dao = new Features();
			List<String[]> flights=dao.getAvailableFlights(from, to, departure);			
			HttpSession session=request.getSession();
			session.setAttribute("flights", flights);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("SelectFlightBook.jsp");
	}
}