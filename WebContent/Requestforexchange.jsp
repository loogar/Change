<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Booking</title>
    <meta charset="UTF-8">
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <meta name="Author" content=""/>
	 <link rel="shortcut icon" href="Pictures/favicon.png" type="image/png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" href="conform.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-*.min.js"></script>
    </head>

     <header> 
            
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" ></a>
               <a href="thechange1.jsp"><img src="Pictures/Logo.PNG" class="img34"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    
      <span style="float: right">
    <div class="navbar-nav">
      
    <a href="thechange1.jsp"> <button type="button" class="btn btn-outline-success"style='margin-right:16px'>Home</button></a>
     <a href="LogoutServlet"> <button type="button" class="btn btn-outline-danger" src="thechange.html">LogOut</button></a>
    </div>
          </span>
      
  </div>
</nav>
        </header>
   
    <body>


    <div class="main">
    
        
            <br>
        <div class="container" style="margin-top:-90px;">
             <h2>Booking home:</h2>
  <div class="row">
    <div class="col">
      <form action="Requestforexchange" method="post" >
    <strong>Requested from:</strong> 
    <input hidden type="text" name="Requested from"  class="form-control" value="${fname}" aria-label="Small" aria-describedby="inputGroup-sizing-sm" id="RequestedFrom" name="RequestedFrom" required>
        <strong> Requested to: </strong>
        <input hidden type="text" name="Requested to" class="form-control" value="${firstname}" aria-label="Small" aria-describedby="inputGroup-sizing-sm" id="Requestedto" name="Requestedto" required>
      <strong> Phone : </strong>
      <input type="text" name="Phone" class="form-control"  aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="your phone number" id="RequesterPhonenumber" name="RequesterPhonenumber" required>
      <strong> Email:</strong> 
      <input type="text" name="Email" class="form-control"  aria-label="Small" aria-describedby="inputGroup-sizing-sm"  placeholder="email" id="Requestoremail" name="Requestoremail" required>
        <strong> No.of.People : </strong>
        <input type="text" name="No.of.People" class="form-control"  aria-label="Small" aria-describedby="inputGroup-sizing-sm"  placeholder="No.of. people accomodating" id="noofperson" name="noofperson" required>
          <strong>  No.of children: </strong>
          <input type="text" name="No.of children" class="form-control"   aria-label="Small" aria-describedby="inputGroup-sizing-sm" id="noofchildren" name="noofchildren" placeholder="No.of. children accomodatinf">
             <strong>  From date:</strong> 
             <input type="date" name="From date" class="form-control"  aria-label="Small" aria-describedby="inputGroup-sizing-sm" id="fromdate" name="fromdate" required>
       <strong>To date:</strong>
       <input type="date" name="To date" class="form-control" aria-label="Small"   aria-describedby="inputGroup-sizing-sm" id="todate" name="todate" required>
       <input type="submit" value="submit" name="submit"  /> 
    </div>      
   
     </form>
    </div>
   
    </div>
 
             
</div>
        
    </div>
    
    <hr class="style18">
    <footer>    
  
    <div class="copyright">
  <div class="container">
    <div class="col-md-6">
      <p>© 2017 - All Rights with THE CHANGE</p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_ul">
        
        <li><a href="#">About us</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Faq's</a></li>
        <li><a href="#">Contact us</a></li>
        
      </ul>
    </div>
  </div>
</div>
  
        </footer>
    </body>
    
</html>