

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/forlogin")
public class Login extends HttpServlet 
{
	String id;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String button=request.getParameter("sub");
		if(button.equals("SIGNIN"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("AddAdmin.jsp");
			rd.forward(request,response);
		}
		else
		{
		try
		{
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/sdc","root","");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from admin");
			
			
			HttpSession hs=request.getSession();//used to read existing session
			hs.setAttribute("allowme","yes");
			
			
			String adminid=request.getParameter("tus");
			String adminpwd=request.getParameter("tpa");
			int flag=0;
			
			while(rs.next())
			{
				id=rs.getString("aid");
				String pwd=rs.getString("apwd");
				if(adminid.equals(id) && adminpwd.equals(pwd))
				{
					flag=1;
				}
			}
			
			rs.close();
			st.close();
			con.close();
			
			if(flag==1)
			{
				HttpSession hs1=request.getSession(false);
				String n=(String)hs1.getAttribute("cid");
				
				
				
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					
					Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/sdc","root","");
					Statement st1=con1.createStatement();
					
					InetAddress IP= InetAddress.getLocalHost();
					String i,d;
					Date d1=new Date();
					
					i=IP.getHostAddress();
					d=d1.toString();
					
					st1.executeUpdate("insert into "+n+" values('"+adminid+"','"+i+"','"+d+"')");
					
					st1.close();
					con1.close();
					}
				catch(Exception e)
				{
					System.out.println("\n DATABASE ERROR:" +e.getMessage());
				}
				
				n=n+".jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher("/"+n);
				rd.forward(request,response);
			}
			else
			{
				out.println("<p><h1>Enter Admin Id and Password Correctly</h1></p>");
				RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
				rd.include(request,response);
			}

		}
		catch(Exception e)
		{
			
		}
	}
	}
}
