<%-- 
    Document   : welcomeuser
    Created on : Apr 17, 2015, 4:45:57 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css\bootstrap.min.css">
</head>

<body>
    <%
        String user = (String)session.getAttribute("user");
        %>
<div class="container">

<div class="jumbotron">
   <h1></h1><br><br><br>
   <p><b>&nbsp;<b></p><br>
  
</div>
 <ul class="nav nav-tabs">
    <li class="active"><a href="welcomeuser.jsp">Home</a></li>
    <li><a href="logout.jsp">LogOut</a></li>
	
  </ul>

<div class="row">
  
  <div class="col-md-12">
      <p> <h2>Welcome <%=user%></h2> </p>
<br/><br/>

<div class="row">
<%
 String display_path="http://localhost/book/";  
 
 	String dbUrl = "jdbc:mysql://localhost/libarary";
		String dbClass = "com.mysql.jdbc.Driver";
		String query = "Select * FROM book_record";
		String userName = "root", password = "";
		try {

		Class.forName(dbClass);
		Connection con = DriverManager.getConnection (dbUrl, userName, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
		%>
     
    
    
    
                <div class="col-sm-4"><img src="<%=display_path+rs.getString(6)%>" height="150" width="150"></div>

               <%	} 
			con.close();
                       
		} //end try

		catch(Exception e)
                {
			e.printStackTrace();
		}
%>
 



</div>
  </div>
  <div class="col-md-12">
  <br><br>
  <center>
   <a href="index.jsp">Home |</a>
  <a href="books1.jsp">View Books |</a>
  <a href="myorders.jsp">My Orders |</a>
  <a href="dstatus.jsp">Delivery Status |</a>
  <a href="logout.jsp">LogOut |</a>
  </center>
  </div>
  <div class="col-md-12">
  <br>
  <center>Copyright &copy 2015&nbsp;Singh's BookStore.</center>
  </div>
</div>

</div>
</body>
</html>