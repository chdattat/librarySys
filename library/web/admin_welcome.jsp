<%-- 
    Document   : welcomeadmin
    Created on : Apr 17, 2015, 4:45:32 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
   <li class="dropdown">
      <a class="dropdown-toggle active" data-toggle="dropdown" href="#">Books Section <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="admin_addbooks.jsp">Add Books Details</a></li>
        <li><a href="admin_viewbooks.jsp">View Books Details</a></li>
        <li><a href="admin_update_book_details.jsp">Update Books Details</a></li>                        
      </ul>
    </li>
   
      <li class="dropdown">
        <li><a href="admin_issued_books.jsp">Books Status</a></li>
        <li><a href="admin_view_users.jsp">Registered Members</a></li>
	<li><a href="logout.jsp">LogOut</a></li>
	
  </ul>

<div class="row">
  <div class="col-md-5">
    <h2></h2>
    <img src="images/bk.jpg" width="420" height="600"/><br/>
  </div>

  <div class="col-md-7">
<p> <h2>Welcome Admin</h2> </p>
<br/><br/>
 <div class="row">
  <div class="col-sm-4"><img src="images/b1.gif"></div>
  <div class="col-sm-4"><img src="images/b2.gif"></div>
  </div>
<div class="row">
   <div class="col-sm-4"><img src="images/b1.gif"></div>
  </div>
  </div>
  <div class="col-md-12">
  <br><br>
  <center>
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