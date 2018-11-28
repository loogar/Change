<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet"> 
    <title>Search,Find and Satisfy</title>
    <link rel="shortcut icon" href="Pictures/favicon.png" type="image/png">
    <meta charset="UTF-8">
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" href="style.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-*.min.js"></script>
  
</head>
<body>
      <header> 
            
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
       <a href="UserProfile.jsp"><button type="button" class="btn btn-outline-success">User Profile</button></a>
      <a href="UserLogin.jsp"><button type="button" class="btn btn-outline-success">Logged in as:${fname}</button></a>
      <a hidden href="UserLogin.jsp"><button type="button" class="btn btn-outline-success">Logged in as:${userid}</button></a>
      <a href="LogoutServlet" ><button type="button" class="btn btn-outline-danger" >LogOut</button></a>
      
        </div>
          </span>
      
  </div>
</nav>
        </header>   
    <div id="map" style="width:100%;height:400px;">
        
<script src="https://maps.googleapis.com/maps/api/js?AIzaSyDRrCefDMPdipm1etOGfexpc4ny4EMjVmQ&callback=myMap"></script>
    
  </div>
  <Form action="SearchHouse" method="post">
    <h1>Precise your search</h1>
    <hr>

 <div class="outer-div" id="myDIV">
      
    
     <div class="col-xs-4" id="cool">
         
    <label>Where do you want to go?</label>
    <input class="form-control" type="text" placeholder="countries & cities" name="city" id= "city">
          
  </div>
     <div class="col-xs-4" id="cool3">
          <label>Bedrooms</label>
<select id="bedrooms" class="selectpicker" name="bedrooms" >
                <option value="Any" selected>1</option>
                <option value="1 bedroom">2</option>
                <option value="2 bedroom">3</option>
                <option value="3 bedroom">4</option>
               
        </select>

  </div>
  <div class="col-xs-4" id="cool4">
    <label>Pets</label>
   <div class="form-check">
  <select class="selectpicker" id="Pets" name="pets">
                
                <option value="Any">None</option>
                <option value="Yes">Allowed</option>
  <option value="No">Not Allowed</option>
                
        </select>
</div>
          </div>
     <div class="col-xs-4" id="cool4" name="smoking">
    <label>Smoking</label>
  <select class="selectpicker">
      <option value="Any">None</option>
  <option value="Yes">Allowed</option>
  <option value="No">Not Allowed</option>
         </select>
 </div>
      <div class="col-xs-2" id="cool3">
          <label>House Type</label>
 <select class="selectpicker" multiple title="choose from these" name="housetype">
     
      <option value="any">Any</option>
        <option value="Igloo"> Igloo</option>
     <option value=" House">Haunted House</option>
     <option value="Space Station">Space Station</option>
   <option value="Apartment"> Apartment</option>
   <option value="Loft">Loft</option>
    <option value="Condo">Condo</option>
     <option value="Cottage"> Cottage</option>
     <option value="Villa"> Villa</option>
     <option value="Boat Home"> Boat Home</option>
          <option value="Mobile Home">Mobile Home</option>
          <option value="Tree House">  Tree House</option>
      <option value="other">  Other</option>
      <option value="None" selected>None</option>
        </select>

 </div>  
     
 </div>  
    <div class="col-xs-2" id="cool5" style="float: right; margin-top: 19px;">
    <input type="submit" value="search" name="search"  />
    <a><button type="submit" class="btn btn-outline-success" style="float:left">Submit</button></a>
        <p>Clear all filters <a href=''><span class="glyphicon glyphicon-remove"></span></a></p>
     </div>
     </Form>
    
         <script>
{
    if ( el.value === "Hide Some" )
        el.value = "Show more";
    else
        el.value = "Hide Some";            
}
           function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
         
         </script>

         
     </div>

     <div id="" style="margin-left: 1px; margin-top: 13px;">
       <input type="button" class="button1" value="Hide Some" onclick="return change(this),myFunction();" />
    </div>
    <hr>
   
   
<br>
    <div style="margin-right: 1px; float: right; margin-top: -30px;">
       <input type="button" class="button1" value="Hide Some" onclick="return change(this),myFunctions(),myFunctions1(),myFunctions2();" />
         </div>
        
       <script>
    
        function myFunctions() {
    var x = document.getElementById("myDIV2");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
         function myFunctions1() {
    var x = document.getElementById("myDIV3");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
            function myFunctions2() {
    var x = document.getElementById("myDIV4");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
         </script>
    <br>
   <div class="album text-muted">
        <div class="container">

          <div class="row" >
              <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type1.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:  indigo">${HouseType}</h4>
      <address>
Posted by <a href="">${Firstname}</a>.<br> 
<strong><span aria-hidden="true" class="glyphicon glyphicon-text-size"></span>&nbsp;Type:&nbsp;</strong>${HouseTypeh}<br>   
<strong><span aria-hidden="true" class="glyphicon glyphicon-home"></span>&nbsp;Address:&nbsp;</strong>${address},${addressline1},${addressline2}<br>
<br>
          <strong><span aria-hidden="true" class="glyphicon glyphicon-globe"></span>&nbsp;City:&nbsp;</strong>${Cityh}<br>
</address>
    <p class="card-text">${Firstname}</p>
       <time datetime="2015-05-15 19:00">January 16</time>
    <a href="Userprofileview.jsp" class="btn btn-primary" style="float: right" src="macready.html">View</a>
               </div>
  </div>
</div>
     <br>
   
    
   
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