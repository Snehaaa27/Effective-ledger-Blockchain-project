package generalserv;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DB;

@WebServlet("/Validatekey2")
public class Validatekey2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		
		String id = (String)ses.getAttribute("uid");
		String pri = request.getParameter("pkey");
		
		ResultSet rs = null;
		try {
			String qry = "SELECT * FROM 6_auth WHERE id='"+id+"' AND prikey='"+pri+"'";
			rs = DB.getconnection().createStatement().executeQuery(qry);
			if (rs.next()){
				response.sendRedirect("PT_UsersData1.jsp");
			}else {
				response.sendRedirect("PT_UsersData.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
