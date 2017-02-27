<%-- 
    Document   : addbooks
    Created on : Apr 17, 2015, 4:33:49 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <script src="js/admin.js" type="text/javascript"></script>
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


<div class="row">
  <div class="col-md-5">
    <h2></h2>
    <img src="images/adbk.jpg" width="260" height="210"/>
  </div>

  <div class="col-md-7">
<p> <h2>Add Book Details</h2> </p>
Fill Your Details Here.....<br/><br/>
 

<!-- ADD Details of The BOOKS -->

<form class="form-horizontal" role="form" enctype="multipart/form-data" action="addbooks" method="post">
  <div class="form-group">
<label class="control-label col-sm-2" for="email">Category</label>
 <div class="col-sm-5"> 
 <select class="form-control" name="ss" id="ss">
        <option value="Agriculture">Agriculture</option>
    <option value="Architecture">Architecture</option>
    <option value="Art">Art</option>
    <option value="Biography & Memoir">Biography & Memoir</option>
    <option value="Business">Business</option>
    <option value="Children's Fiction">Children's Fiction</option>
    <option value="Children's Non-Fiction">Children's Non-Fiction</option>
    <option value="Cooking, Food & Wine">Cooking, Food & Wine</option>
    <option value="Crafts & Hobbies">Crafts & Hobbies</option>
    <option value="Family & Parenting">Family & Parenting</option>
    <option value="Fiction">Fiction</option>
    <option value="Fun & Games">Fun & Games</option>
    <option value="Gardening">Gardening</option>
    <option value="Health, Mind, & Body">Health, Mind, & Body</option>
    <option value="History">History</option>
    <option value="Home Reference/How-to">Home Reference/How-to</option>
    <option value="Humor">Humor</option>
    <option value="Medical">Medical</option>
    <option value="Music">Music</option>
    <option value="Performing Arts">Performing Arts</option>
    <option value="Philosophy">Philosophy</option>
    <option value="Pets">Pets</option>
    <option value="Photography">Photography</option>
    <option value="Reference">Reference</option>
    <option value="Religion">Religion</option>
    <option value="Self-Help">Self-Help</option>
    <option value="Social Science">Social Science</option>
    <option value="Sports & Recreation">Sports & Recreation</option>
    <option value="Transportation">Transportation</option>
    <option value="Travel">Travel</option>
      </select></div>
</div>	 
<div class="form-group">			
    <label class="control-label col-sm-2" for="email">Book Name</label>
	<div class="col-sm-5">
      <input type="text" class="form-control" id="book_name" name="book_name" placeholder="Enter Book Name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Book In Stock</label>
    <div class="col-sm-5">
        <input type="text" class="form-control" id="price" name="price" placeholder="Enter Number of Books">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Upload Image</label>
    <div class="col-sm-5">
      
          <input type="file" class="hide" id="advrts_img" name="advrts_img" onchange="img_prvw('advrts_img','advrts_img_prvw')">
          <img src="images/img_place.png" id="advrts_img_prvw" alt="" class="cursor margin_top10" style="width:100px;height:100px" onClick="document.getElementById('advrts_img').click();">
          </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-5">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
  </div>
  <div class="col-md-12">
  <br><br>
   </div>
  <div class="col-md-12">
  <br>
  <center>Copyright &copy 2015&nbsp;Singh's BookStore.</center>
  </div>
  </div>

</div>
</body>
</html>