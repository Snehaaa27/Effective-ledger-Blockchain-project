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

@WebServlet("/PT_Adddetail_DB")
public class PT_Adddetail_DB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		String pid=(String)ses.getAttribute("pid");
		String dob=request.getParameter("dob");
		String gen=request.getParameter("gen");
		String hei=request.getParameter("hei");
		String wei=request.getParameter("wei");
		String msta=request.getParameter("msta");
		String bg=request.getParameter("bg");
		String dep=request.getParameter("dep");
		String msg=request.getParameter("msg");
		String selector1=request.getParameter("selector1");

		ResultSet rs = null;
		Statement st = null;
		try {
			String qry = "UPDATE 1_users SET dob='"+dob+"', gen='"+gen+"', heiww='"+hei+"', weiww='"+wei+"', msta='"+msta+"', bg='"+bg+"', dep='"+dep+"', msg='"+msg+"', medi='"+selector1+"' WHERE userid='"+pid+"'";
			int i = DB.getconnection().prepareStatement(qry).executeUpdate();
			if(i>0){
				response.sendRedirect("HOME_Hosp.jsp");
			}else{
				response.sendRedirect("PT_AddDetail.jsp?st=nt");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
