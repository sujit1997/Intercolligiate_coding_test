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

public class ParticipentPoster extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","");
            
            String sql = "SELECT * FROM `register_codebattle";
            
            Statement stmt = con.createStatement();
           
            ResultSet rs = stmt.executeQuery(sql);
            
             out.println("Participents Name\tCourse\tEmail\tInstitute");
             
            while(rs.next())
            {
          //  String fname = rs.getString("first_name");
            String lname = rs.getString("last_name");
            String course = rs.getString("course");
            String email = rs.getString("email ");
            String institute_name = rs.getString("institute_name");
            int r = rs.getRow();
            String fname="Pankaj";
            out.println(fname+lname+"\t"+course+"\t"+email+"\t"+institute_name);
           response.sendRedirect("/Event_Management_System/participant_codebattle.jsp?fname="+fname);
            out.println(fname+lname+"\t"+course+"\t"+email+"\t"+institute_name);
            }
             
         
         stmt.close();
         con.close();
        
        }
        catch(Exception se) {
           out.println("<h1>Exception : </h1>"+se);
           
        }
	
    }
    
}

