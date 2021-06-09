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
public class Test_codebattle extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String content = request.getParameter("content");
        String option_1 = request.getParameter("option_1");
        String option_2 = request.getParameter("option_2");
        String option_3 = request.getParameter("option_3");
        String 	option_4 = request.getParameter("option_4");
        String correct_ans = request.getParameter("correct_ans");
        
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","");
            
            String sql = "INSERT INTO `question_detail`(`content`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_ans`) VALUES ('"+content+"','"+option_1+"','"+option_2+"','"+option_3+"','"+option_4+"','"+correct_ans+"')";
            
            Statement stmt = con.createStatement();

           // ps.setString(1,fname);
            //ps.setString(2,lname);
           // ps.setString(3,email);
          //  ps.setString(4,pass);
            //int i = ps.executeUpdate();
            boolean i = stmt.execute(sql);
            if(i = true) {
                      
                      out.println("</h1>Test Sent Sucessfully...!</h3>");
            }
           
        
        }
        catch(Exception se) {
           out.println("<h1>Exception : </h1>"+se);
        }
	
    }
    
}
    
