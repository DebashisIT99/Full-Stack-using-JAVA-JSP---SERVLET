package ServeletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class user_login
 */
@WebServlet("/login")
public class user_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oppo","root","Debashis99");
			
			String id=request.getParameter("email");
			String pass=request.getParameter("password");
			
			String sql="select email from rb where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("loggedInEmail", id);
				response.sendRedirect("afterlogin1.jsp");
			}
			else
			{
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				out.println("<h3 style='color:red; text-align:center;'>!!Email id or Password didn't match!!</h3>");
				RequestDispatcher rd= request.getRequestDispatcher("/login.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
