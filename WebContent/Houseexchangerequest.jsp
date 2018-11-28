<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">  
    <meta charset="UTF-8">  
    <link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist\css\bootstrap.css"> <!--css file link in bootstrap folder-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
    <title>View Users</title>  
     <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet"> 
     <title>The Change</title>
    <link rel="shortcut icon" href="Pictures/favicon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script src="coustom.js"></script>
<link rel="stylesheet" href="style.css">
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>  

        

<style>  
    .login-panel {  
        margin-top: 150px;  
    }  
    .table {  
        margin-top: 50px;  
  
    }  
  
</style>  
  
<body>  
          <header > 
           
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" ></a>
               <a href="thechange.jsp"><img src="Pictures/Logo.PNG" class="img34"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    
      <span style="float: right">
    <div class="navbar-nav">
     
    <a href="how.html"> <button type="button" class="btn btn-outline-info" style='margin-right:16px'> How it works?</button></a>
    
    
      <a href="UserProfile.jsp" ><button type="button" class="btn btn-outline-danger" >Logged in as:${fname}</button></a>
       
      <a href="LogoutServlet" ><button type="button" class="btn btn-outline-danger" >LogOut</button></a>
      
      
      
      
    </div>
          </span>
      
  </div>
</nav>
        </header> 
 
   </header> 
        <form action="PendingRequestidsforowner" method="post">
       <input type="submit" value="PendingRequest" name="PendingRequest"  />
       
       </form>
       
       <h><a>Pending request id's are: ${BookingIDS}</a></h>

<center>
    <form action="Exchangerequesttoowner" method="post" >
   <h1 align="left">Request details: </h1>  
     
</center>
  
    
    
  <center>
<div class="outer"><!--this is used for responsive display in mobile and other devices-->  
  
   <input type="text"  name="bookingid" id = "bookingid" placeholder = "bookingid" required />
      <input type="submit" value="Search" name="Search"  />
       </form>
       
    <table class="table table-hover">
              <tr>  
  
            <th>Requestor</th>  
            <th>requested to </th>  
            <th>no.of.person</th>  
            <th>from date</th>  
            <th>to date</th> 
            <th>Action</th>  
            <th>status</th> 
            
            
        </tr>  
            
        
    
     
<!--here showing results in the table --> 

<!-- On cells (`td` or `th`) -->
<tr>
  <td>${RequestedFrom}</td>
  <td>${Requestedto}</td>
  <td>${noofperson}</td>
  <td>${fromdate}</td>
  <td>${todate}</td>
  <td><form action="Requestconfirmation" method="post" >
 <div class="form-group">
            <div class="col-md-8">
            <select id="status" class="selectpicker" name="status"  >
                     
        <option value="Accepted">Accepted</option>
     <option value=" Rejected">Rejected</option>
   
   <input type="submit" value="submit" name="submit"  />
    
                
        </select>
</div></td>
   
</tr>
  
  
  
    </table>  
    
       
</div>  
  </center>
  <form action="Requestconfirmation" method="post" >
 <div class="form-group">
            <div class="col-md-8">
            <select id="status" class="selectpicker" name="status"  >
                <option value="" selected></option>
                     
        <option value="Accepted">Acceptedandconfirmed</option>
     <option value=" Rejected">Rejected</option>
   
   <input type="submit" value="submit" name="submit"  />
    
                
        </select>
</div>
    <input type="submit" value="Confirm" name="confirm"  />
   
   </form>
  
  
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
        <li><a href="contactus.html">Contact us</a></li>
        
      </ul>
    </div>
  </div>
</div>
  
        </footer>
</body>  
  
</html>
