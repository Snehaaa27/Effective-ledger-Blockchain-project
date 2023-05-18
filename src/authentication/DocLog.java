package authentication;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DB;

@WebServlet("/DocLog")
public class DocLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String n=request.getParameter("em");
		String p=request.getParameter("pw");
		System.out.println(n+"   "+p);
		HttpSession session = request.getSession();
		
		if(n.equalsIgnoreCase("admin")&&p.equalsIgnoreCase("admin")) {
			session.setAttribute("Role", 1);
			session.setAttribute("uid", 1);
			response.sendRedirect("HOME_Admin.jsp");
		}else {
		
			try {
				String sel="select * from 3_doctors where email=? and pass=?";
				PreparedStatement ps = DB.getconnection().prepareStatement(sel);
				ps.setString(1, n);
				ps.setString(2, p);
				ResultSet rs = ps.executeQuery();	
				
				if (rs.next()) {
					session.setAttribute("did", rs.getInt(1));
					session.setAttribute("uid", 00);
					int role = 3;
					session.setAttribute("Role", role);
					response.sendRedirect("HOME_Doc.jsp");
				} else {
					out.print("<head><body><script>alert('Sorry username or password error')</script></body></html>");
					response.sendRedirect("index.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
}


