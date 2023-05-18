package authentication;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import resources.randint;
import utility.DB;

@WebServlet("/DocRegister")
public class DocRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dep = request.getParameter("dep");
		String dname = request.getParameter("dname");
		String e = request.getParameter("demail");
		String pa = request.getParameter("dpass");
		String ph = request.getParameter("ph");
		String ad = request.getParameter("ad");
		String ro = request.getParameter("role");
		Random r = new Random();
		int id = r.nextInt(100000);
		
		HttpSession ses = request.getSession();
		System.out.println(dep+" - "+e+" - "+ph+" - "+ad+" - "+ro);
		
		try {
			String qry = "INSERT INTO 3_doctors (id,dept,name,email,pass,phone,address,hid,hname)"
							+ "VALUES('"+id+"','"+dep+"','"+dname+"','"+e+"','"+pa+"','"+ph+"','"+ad+"','"+(String)ses.getAttribute("hid")+"','"+(String)ses.getAttribute("hname")+"')";
			int i = DB.getconnection().prepareStatement(qry).executeUpdate();
			if(i>0) {
				System.out.println("Register Success !");
				RequestDispatcher rd = request.getRequestDispatcher("HO_Doctors.jsp?st=s");
				rd.forward(request, response);
			}else {
				System.out.println("Register Failed !");
				RequestDispatcher rd = request.getRequestDispatcher("HO_AddDoc.jsp?st=f");
				rd.include(request, response);
			}
		}catch(Exception e1) {
			e1.printStackTrace();
		}
		
		try {
			String q = "INSERT INTO 6_auth (id,pubkey,prikey) VALUES ('"+id+"','"+randint.getAlphaNumericString(10)+"','"+randint.getAlphaNumericString(10)+"')";
			int i = DB.getconnection().prepareStatement(q).executeUpdate();
		}catch(Exception e2) {
			e2.printStackTrace();
		}
	}

}
