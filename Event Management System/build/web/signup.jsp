<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TECHNOCASE | SIGN UP</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="login_style.css">
</head>

<body>
    <div class="login-dark">
        <form method="post" action="NewUser">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group"><input class="form-control" type="first_name" name="first_name" placeholder="first name"></div>
            <div class="form-group"><input class="form-control" type="last_name" name="last_name" placeholder="last name"></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" value="NewUser">Sign Up</button></div>
            <a href="login.html" class="btn btn-primary btn-block">Log In</a>
        </form>
            
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>

<%@page import="java.sql.*,java.util.*" %>
<%
  String Username=request.getParameter("Username");
  String Password=request.getParameter("Password");

try{
	//Class.forName("com.mysql.jdbc.Driver");
	//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contactus","root","");
	//Statement st=con.createStatement();
	//PreparedStatement ps=con.prepareStatement("insert into login1(Username,Password) values(?,?)");
  //  ps.setString(1,Username);
  //  ps.setString(2,Password);
    
   // int x=ps.executeUpdate();
    //if(x>0){
    //	out.println("Data Successfully done......");
    //}
   // else{
   // 	out.println(" Failed.....");
   // }
}

catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>