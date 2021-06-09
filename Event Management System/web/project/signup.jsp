<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*" %>
<%
  String Username=request.getParameter("Username");
  String Password=request.getParameter("Password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contactus","root","");
	Statement st=con.createStatement();
	PreparedStatement ps=con.prepareStatement("insert into login1(Username,Password) values(?,?)");
    ps.setString(1,Username);
    ps.setString(2,Password);
    
    int x=ps.executeUpdate();
    if(x>0){
    	out.println("Data Successfully done......");
    }
    else{
    	out.println(" Failed.....");
    }
}

catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>