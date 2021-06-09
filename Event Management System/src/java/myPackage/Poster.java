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

public class Poster extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String email = request.getParameter("email");
        String poster = request.getParameter("poster");
        
        try {
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","");
            
            String sql = "INSERT INTO `posters`(`first_name`, `last_name`, `email`, `poster`) VALUES ('"+fname+"','"+lname+"','"+email+"','"+poster+"')";
            
            Statement stmt = con.createStatement();

           // ps.setString(1,fname);
            //ps.setString(2,lname);
           // ps.setString(3,email);
          //  ps.setString(4,pass);
            //int i = ps.executeUpdate();
            boolean i = stmt.execute(sql);
            if(i = true) {
                      out.println("<h1><b>User Name :<b></h1>"+fname+"<br>");
                      out.println("</h1>Poster Uploaded Sucessfully...!</h3>");
            }
           
        
        }
        catch(Exception se) {
           out.println("<h1>Exception : </h1>"+se);
        }
	
    }
    
}
