package myPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.sql.SQLException;
import javax.sql.*;

public class adminLogin extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","");
            
            String sql = "SELECT * FROM admin";
            
            Statement stmt = con.createStatement();
           
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next())
            {
            String receivedEmail = rs.getString("email");
            String receivedPass = rs.getString("pass");
            
            if(email.equals(receivedEmail) && pass.equals(receivedPass))
            {
                String sql2="SELECT * FROM admin WHERE email='"+receivedEmail+"'";
                Statement stmt2 = con.createStatement();
                ResultSet rs2 = stmt2.executeQuery(sql2);
       
                String fname = rs.getString("admin_name");
                response.sendRedirect("/Event_Management_System/admin_profile.jsp?name="+fname);  
                out.println("<h1>Login Sucessfull</h1>");
            
            }
            else
            {
                out.println("<h1>Invalid ID or Password...!</h1>");
                out.println("<h1>receivedEmail from User = "+email+"/h1>");
                out.println("<h1>receivedPass from User = "+pass+"/h1>");
                out.println("<h1>receivedEmail from db = "+receivedEmail+"/h1>");
                out.println("<h1>receivedPass from db = "+receivedPass+"/h1>");
            }
            }
             
         
         stmt.close();
         con.close();
        
        }
        catch(Exception se) {
           out.println("<h1>Exception : </h1>"+se);
           
        }
	
    }
    
}

