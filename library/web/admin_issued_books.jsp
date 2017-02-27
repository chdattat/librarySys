<%-- 
    Document   : welcomeadmin
    Created on : Apr 17, 2015, 4:45:32 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css\bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">

<div class="jumbotron">
   <h1></h1><br><br><br>
   <p><b>&nbsp;<b></p><br>
  
</div>
 <ul class="nav nav-tabs">
     <li class="active"><a href="admin_welcome.jsp">Home</a></li>
	<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Books Section <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="admin_addbooks.jsp">Add Books Details</a></li>
        <li><a href="admin_viewbooks.jsp">View Books Details</a></li>
        <li><a href="admin_update_book_details.jsp">Update Books Details</a></li>                        
      </ul>
    </li>
   
        <li><a href="admin_issued_books.jsp">Books Status</a></li>
        <li><a href="admin_view_users.jsp">Registered Members</a></li>
	<li><a href="logout.jsp">LogOut</a></li>
	
  </ul>

<br>
<div class="row">
    <div class="col-sm-1">Book ID</div>
    <div class="col-sm-2">Book Category</div>
    <div class="col-sm-2">Book Name</div>
    <div class="col-sm-1">Total Books</div>
    <div class="col-sm-2">Book Issued</div>
    <div class="col-sm-2">Available BOOKS</div>
    <div class="col-sm-2">Image</div>
   
  </div>
 <%
     String ID="",Category="",Book_Name="",Total_Books="",Book_Issued="";
     int Available=0;
 String display_path="http://localhost/book/";  
 
 	String dbUrl = "jdbc:mysql://localhost/libarary";
		String dbClass = "com.mysql.jdbc.Driver";
		String query = "Select * FROM book_record";
		String userName = "root", password = "";
		try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection (dbUrl, userName, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
                ID=rs.getString(1);
                Category=rs.getString(2);
                Book_Name=rs.getString(3);
                Total_Books=rs.getString(4);
                Book_Issued=rs.getString(5);
         Available = Integer.parseInt((Total_Books).toString())-Integer.parseInt((Book_Issued).toString());       
		%>
    <div class="row">
    <div class="col-sm-1"><%=ID%></div>
    <div class="col-sm-2"><%=Category%></div>
    <div class="col-sm-2"><%=Book_Name%></div>
    <div class="col-sm-1"><%=Total_Books%></div>
    <div class="col-sm-2"><%=Book_Issued%></div>
    <div class="col-sm-2"><%=Available%></div>
    <div class="col-sm-2"><img src="<%=display_path+rs.getString(6)%>" height="100px" width="100px"></div>
  </div>
              
                
                <%	
                ID="";
                Category="";
                Book_Name="";
                Total_Books="";
                Book_Issued="";
                Available=0;
                } 
			con.close();
                       
		} //end try

		catch(Exception e)
                {
			e.printStackTrace();
		}
%>
    
  
  
  <div class="col-md-12">
  <br><br>
  </div>
  <div class="col-md-12">
  <br>
  <center>Copyright &copy 2015&nbsp;Singh's BookStore.</center>
  </div>
</div>

</body>
</html>