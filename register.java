package ServeletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.user_details;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	public register() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user_id= request.getParameter("user_id");
		String password= request.getParameter("password");
		String acc_type= request.getParameter("acc_type");
		String first_name= request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String contact_no= request.getParameter("contact_no");
		String alt_contact_no= request.getParameter("alt_contact_no");
		String email= request.getParameter("email");
		String dob= request.getParameter("dob");
		String idproof= request.getParameter("idproof");
		String region=request.getParameter("region");
		String pcode=request.getParameter("pcode");
		String pan_no= request.getParameter("pan_no");
		String r_address= request.getParameter("r_address");
		String nationality= request.getParameter("nationality");

		user_details user=new user_details(user_id,password,acc_type,first_name,last_name,contact_no,alt_contact_no,email,dob,idproof,pan_no,r_address,nationality,pcode,region);
		userdatabase udb=new userdatabase();
		
		
			
				try {
					udb.insert(user);
					response.sendRedirect("home.jsp");
				} catch (ClassNotFoundException e) 
				{
					PrintWriter out=response.getWriter();
					response.setContentType("text/html");
					out.println("<h3 style='color:red; text-align:center;'>!!Email id or Password didn't match!!</h3>");
					RequestDispatcher rd= request.getRequestDispatcher("/login.jsp");
					rd.include(request, response);
					e.printStackTrace();
				}
			
			}
	
		
			
		
	}
