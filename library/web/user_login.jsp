<%-- 
    Document   : login
    Created on : Apr 17, 2015, 11:44:02 AM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css\bootstrap.min.css">
  <script type="text/javascript" src="js/user.js"></script>
  <script type="text/javascript" src="js/script_1.9.js"></script>
</head>

<body>
<div class="container">

<div class="jumbotron">
   <h1></h1><br><br><br>
   <p><b>&nbsp;<b></p><br>
  
</div>
<ul class="nav nav-tabs">
    <li class="active"><a href="visitor_home.jsp">Home |</a></li>
    <li>  <a href="visitors_books.jsp">Books Section |</a></li>
    <li>  <a href="user_reg.jsp">Register With Us |</a></li>
     <li> <a href="user_login.jsp">Log In |</a></li>
     <li>  <a href="admin_login.jsp">Admin |</a></li>
  
  </ul>

<div class="row">
  <div class="col-md-5">
    <h2></h2>
    <img src="images/ss.png" width="260" height="210"/>
  </div>

  <div class="col-md-7">
      <form>
      <p> <h2>Login Here</h2> </p>
Fill Your Details Here.....<br/><br/>
<table><tr><td>
User Name &nbsp;&nbsp;</td><td>
<input type="text" align="middle"  id="uname" placeholder="Enter User Name"><br/></td></tr><tr><td>
Password &nbsp;&nbsp;</td><td><input type="password" id="psswd" align="middle" placeholder="Enter Password"><br/></td></tr></table>
<input type="button" onclick="return login()" value="submit" name="sbmt" align="middle">
</form>
  </div>
  <div class="col-md-12">
  <br><br>
  <center>
      <a href="visitor_home.jsp">Home |</a>
      <a href="visitors_books.jsp">Books Section |</a>
      <a href="user_reg.jsp">Register With Us |</a>
      <a href="user_login.jsp">Log In |</a>
      <a href="admin_login.jsp">Admin |</a>
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