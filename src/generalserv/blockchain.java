package generalserv;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.xml.bind.DatatypeConverter;

import resources.AES;
import utility.DB;

@WebServlet("/blockchain")
public class blockchain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession ses = request.getSession();
		
		String uid = (String)ses.getAttribute("pid");
		
		int did = (Integer)ses.getAttribute("did");
		
		final String secretKey = "54gyYvvzuhfdtwq$edswt09";
		
		String scfile = request.getParameter("fileData");
		
		System.out.println(request.getParameter("fileData"));
		
		String fpath = "D:\\BC_PROJECT\\BC_Project\\WebContent\\PatData\\"+uid+".txt";
		String fpathe = "D:\\BC_PROJECT\\BC_Project\\WebContent\\PatData\\"+uid+"e.txt";
		 
		 FileWriter fw=new FileWriter(fpath);
		 FileWriter fwe=new FileWriter(fpathe);
		 
		 String scenc = AES.encrypt(scfile, secretKey);
		 
		    fw.write(scfile + did);
		    fwe.write(scenc);
		    fw.close();
		    fwe.close();
		    
		    java.util.Date now = new java.util.Date();
			String date=now.toString();
			String DATE_FORMAT = "dd-MM-yyyy";
			SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
			String strDateNew = sdf.format(now) ;

		
		String pre = "00000000000000000000000000000000000";
			// data
			    try{ 
						Connection con = DB.getconnection();
				        
				        Statement st = con.createStatement();
				        ResultSet rs = st.executeQuery("select * from 5_blockchain where uid='"+uid+"' and prehash ='"+ pre +"'");//check the block is first
				        
				        if(rs.next())
				        {
				        	Statement st1 = con.createStatement();
					        ResultSet rs1 = st1.executeQuery("select * from 5_blockchain where uid='"+uid+"' order by counts desc limit 1");//get the last block index
					        
					        if(rs1.next())
					        {
					        	String B = rs1.getString("counts");
					        	Statement st2 = con.createStatement();
						        ResultSet rs2 = st2.executeQuery("select * from 5_blockchain where uid='"+uid+"' and counts='"+ B +"'");//get the last data block hash
						       
						        if(rs2.next())
						        {
						        
						        	String previoushash = rs2.getString("nexthash");
						        	
						        	String tohash = previoushash + scenc; 
						        	
						        	//hashing
						        	 MessageDigest md = MessageDigest.getInstance("SHA-256");
			       					 byte[] digest = md.digest(tohash.getBytes(StandardCharsets.UTF_8));
			        				String sha256 = DatatypeConverter.printHexBinary(digest).toLowerCase();
			        				
			        				int B2 = Integer.parseInt(B);
			        				int B3 = B2+1;
						        	
						        	PreparedStatement ps = con.prepareStatement("insert into 5_blockchain (uid,prehash,nexthash,counts,dt,data,loc) "
						        			+ "values ('"+uid+"','"+previoushash+"','"+sha256+"','"+ B3+"','"+strDateNew+"','"+scenc+"','"+fpath+"')");
						        	int i = ps.executeUpdate();
						        	if(i>0) {
						        		response.sendRedirect("HOME_Doc.jsp");
						        	}else {
						        		response.sendRedirect("DOC_AddReport.jsp");
						        	}
						        		
						        }
						       
						       
					        }
				        
				        }
				        else 
				        {
				        	String tohash = pre + scenc;
				        	
				        	MessageDigest md = MessageDigest.getInstance("SHA-256");
							byte[] digest = md.digest(tohash.getBytes(StandardCharsets.UTF_8));
							String sha256 = DatatypeConverter.printHexBinary(digest).toLowerCase();
				        	PreparedStatement ps = con.prepareStatement("insert into 5_blockchain (uid,prehash,data,nexthash,counts,dt,loc) "
				        			+ "values ('"+uid+"','"+ pre +"','"+scenc+"','"+sha256+ "','1','"+strDateNew+"','"+fpath+"')");
				        	
				        	int i = ps.executeUpdate();
				        	if(i>0) {
				        		response.sendRedirect("HOME_Doc.jsp");
				        	}else {
				        		response.sendRedirect("DOC_AddReport.jsp");
				        	}
							
				        }
										  				
					}
					catch (Exception e2) {e2.printStackTrace();}  	
			    
		}
}
