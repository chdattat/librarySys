<%-- 
    Document   : creg
    Created on : Apr 17, 2015, 11:42:35 AM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css\bootstrap.min.css">
  <script src="js/user.js" type="text/javascript"></script>
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
    <img src="images/rg.jpg" width="400" height="400"/>
  </div>

  <div class="col-md-7">
      <form method="post" action="registration">
<p> <h2>Register Yourself For Membership</h2> </p>
Fill Your Details Here.....<br/><br/>
<table>
<tr><td>Name</td><td><input type="text" id="fname" name="fname" placeholder="Enter Name"></td></tr>
<tr><td>Sex</td><td><select name="ss" id="ss" onchange="document.getElementById('sexr').value=this.value;"><option value="Select Gender">Select Gender</option><option value="Male">Male</option><option value="Female">Female</option></select>
                       <input type="hidden"     id="sexr"   name="sexr" value="Select Gender"></td></tr>
<tr><td>D.O.B.</td><td><input type="text"       id="dob"    name="dob" placeholder="dd/mm/yyyy"></td></tr>
<tr><td>Address</td><td><textarea               id="addrss" name="addrss" rows="6" cols="18"></textarea></td></tr>
<tr><td>User Name</td><td><input type="text"    id="uname"  name="uname" placeholder="Enter User Name"></td></tr>
<tr><td>Password</td><td><input type="password" id="psswd"  name="psswd" placeholder="Enter Password"></td></tr>
<tr><td>E-Mail:</td><td><input type="email"     id="email"  name="email" placeholder="Enter E-mail Id"></td></tr>
<tr><td>Mob. No.</td><td><input type="text"     id="Mobno"  name="Mobno" placeholder="Enter Mob. No."></td></tr>
<tr><td  align="center"><input type="submit" value="Submit and PayNow" onclick="return reg_valid()"></td><td align="center"><input type="reset" value="Reset"></td></tr></table>
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