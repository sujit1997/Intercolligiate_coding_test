<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("fname");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ems";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <style>
           div.transbox {
  margin: 30px;
  background-color: #3b3939;
  border: 1px solid black;
  opacity: 0.7;
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: white;
  text-align: center;

} label{color: white;}

    </style>

</head>
<body style="background-image: url('header.jpeg'); background-size: cover;">
    <div
class="content"
style="background-image: url('header.jpeg'); background-size: cover">

<div class="background">
<div class="transbox">
  <p>Code-Battle Exam</p><br>
  <form  method="post" action="LogIn">
  
      <div>
        <h2 align="center"><font><strong></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Question</b></td>
<td><b>option A</b></td>
<td><b>option B</b></td>
<td><b>option C</b></td>
<td><b>option D</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM question_detail";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("content") %></td>
<td><%=resultSet.getString("option_1") %></td>
<td><%=resultSet.getString("option_2") %></td>
<td><%=resultSet.getString("option_3") %></td>
<td><%=resultSet.getString("option_4") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </div>

  
  
  
  
  
  
  
  
  
  
   <button class="btn btn-primary btn-block" type="submit" value="Test_codebattle">Submit</button>
    </form>
</div>
</div>
</div>
</body>
</html>