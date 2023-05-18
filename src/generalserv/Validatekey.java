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

@WebServlet("/Validatekey1")
public class Validatekey extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		
		int id = (Integer)ses.getAttribute("did");
		String uid = (String)ses.getAttribute("uid");
		System.out.println(uid);
		String pri = request.getParameter("pkey");
		

		ResultSet rs = null;
		try {
			String qry = "SELECT * FROM 6_auth WHERE id='"+id+"'AND prikey='"+pri+"'";
			rs = DB.getconnection().createStatement().executeQuery(qry);
			if (rs.next()){
				ses.setAttribute("uid", uid);
				response.sendRedirect("DOC_UsersData1.jsp");
			}else {
				response.sendRedirect("DOC_UsersData.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
