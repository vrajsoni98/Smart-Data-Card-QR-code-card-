

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet 
{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/sdc","root","");
			Statement st=con.createStatement();	
			PrintWriter out=response.getWriter();
			String name=request.getParameter("name");
			int age=Integer.parseInt(request.getParameter("age"));
			double mobile=Double.parseDouble(request.getParameter("mobile"));
			String aid=request.getParameter("aid");
			String apass=request.getParameter("apwd");
			
			out.println("Successfully Submited");
			
			st.addBatch("insert into admindetail values('"+name+"',"+age+","+mobile+",'"+aid+"','"+apass+"')");
			st.addBatch("insert into admin values('"+aid+"','"+apass+"')");
			out.println("Successfully");
			st.executeBatch();
			st.close();
			con.close();
			
			out.println("Successfully Submited.....");
		
			}
			catch(Exception e)
			{
				System.out.println("DATA ERROR"+e.getMessage());
			}
		
	}

}
