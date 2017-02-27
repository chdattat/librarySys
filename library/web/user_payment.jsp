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
      <div id="left">
          <%
    String  id = request.getParameter("a");
%>          
<h1>Pay Your Bill Here</h1><br />
<form action="Payment_Details" method="post">
<table>
<tr><td>
        <input type="hidden" name="id" value="<%=id%>">
<p class="card-options">
<label class="span-3" for="debit_card_select">Select debit card</label> </td><td>
<select class="required" id="debit_card_select" name="debit_card_select" style="width: 195px;">
<option value="" selected="selected">Select Debit Card Type</option>
<option value="debitcard_VISA_1" >Visa Debit Cards (All Banks)</option><option value="debitcard_MAST_1" >MasterCard Debit Cards (All Banks)</option><option value="debitcard_SMAE_1" >State Bank Maestro Cards</option><option value="debitcard_MAES_1" >Other Maestro Cards</option><option value="debitcard_CITD_1" >CITI Debit Card</option><option value="debitcard_RUPAY_1" >Rupay Debit Card</option>										</select>
</p>
</td></tr>	
<tr><td>
<label class='span-3'>Card Number</label></td><td>
<input type='text' id='dcard_number' name='dcard_number' class='required creditcard debitcard text' maxlength='25'  autocomplete='off'  >
</td></tr>
<tr><td>
<label class='span-3'>Name on Card</label></td><td>
<input type='text' id='dname_on_card' name='dname_on_card' class='text req'  maxlength='50' autocomplete='off'>											
</td></tr>
<tr><td>
<label class="span-3 cvvExp">CVV Number</label>
</td><td><input type="password" name="dcvv_number"class="required validccvv digits password" maxlength="3" id="dcvv_number" pattern="[0-9]*" autocomplete="off">
</td></tr>
<tr><td>
<p class="dropdowns">
<label class="span-3 cvvExp">Expiry Date</label>
</td><td>
<select id="dexpiry_date_month" name="dexpiry_date_month">
<option value="" selected="selected">Month</option>
<option value="01">Jan (1)</option>
<option value="02">Feb (2)</option>
<option value="03">Mar (3)</option>
<option value="04">Apr (4)</option>
<option value="05">May (5)</option>
<option value="06">Jun (6)</option>
<option value="07">Jul (7)</option>
<option value="08">Aug (8)</option>
<option value="09">Sep (9)</option>
<option value="10">Oct (10)</option>
<option value="11">Nov (11)</option>
<option value="12">Dec (12)</option>
</select> 
<select id="dexpiry_date_year" name="dexpiry_date_year">
<option value="" selected="selected">Year</option>
<option value="2015">2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
<option value="2019">2019</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
<option value="2026">2026</option>
<option value="2027">2027</option>
<option value="2028">2028</option>
<option value="2029">2029</option>
<option value="2030">2030</option>
<option value="2031">2031</option>
</select>
</td></tr>
<tr><td><span style="clear: both"></span><input type="submit" name="pay_button" value="Pay Now" onclick="form_params();" class=""  id="pay_button"> 
</td></tr>
</table><br>
		</form>
	</div>
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

			
	