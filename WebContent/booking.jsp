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
                <option value="1" selected>1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
               
        </select>

  </div>
  <div class="col-xs-4" id="cool4">
    <label>Pets</label>
   <div class="form-check">
  <select class="selectpicker" id="Pets" name = "Pets">
                
                
                <option value="Allowed">Allowed</option>
  <option value="Not Allowed">Not Allowed</option>
                
        </select>
</div>
          </div>
     <div class="col-xs-4" id="cool4" >
    <label>Smoking</label>
  <select class="selectpicker" name="smoking">
     
  <option value="Allowed">Allowed</option>
  <option value="Not Allowed">Not Allowed</option>
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
 
     <div class="col-xs-4" id="cool">
    <label>From Date</label>
    <input class="form-control" type="date" placeholder="From" onfocus="(this.type='date')" onblur="(this.type='text')" name="fromdate">
          
  </div>
      <div class="col-xs-4" id="cool2">
    <label>To Date</label>
   <input class="form-control" type="date" placeholder="To" onfocus="(this.type='date')" onblur="(this.type='text')" name="todate">
          </div>
     
 </div>  
    <div class="col-xs-2" id="cool5" style="float: right; margin-top: 19px;">
    
    <a><button type="submit" class="btn btn-outline-success" style="float:left">Search</button></a>
    
        
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
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Cooking in ice</h4>
      <address>
Posted by <a href="">${Firstname}</a>.<br> 
Type:<p><a href="">${HouseType}</a></p>,<br>          
Box 564, Ice place<br>
Antartica
</address>
    <p class="card-text">Beautiful house with nothing....no smoking allowed,only penguines allowed as pets</p>
       <time datetime="2015-05-15 19:00">${HouseType}</time>
    <a href="Userprofileview.jsp" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
         
 <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type2.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Friendly ghost house,friendly dead family</h4>
      <address>
Posted by <a href="">Casper</a>.<br> 
Type:Haunted,<br>   
Box 666,Yiqiao, Xingzhong Vil., Minxiong Township, Chiayi County<br>
Taiwan
</address>
    <p class="card-text">Family just commited sucide,looking for a new place to haunt,No smoking,No pets.</p>
       <time datetime="2015-05-15 19:00">Aug 13</time>
    <a href="Userprofileview.jsp" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
           
                 
             <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type3.png" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Beautiful space station,Near mars</h4>
      <address>
Posted by <a href="">Neil Armstrong</a><br> 
Type:Space home,<br>   
Outer space<br>
Milky way galaxy.
</address>
    <p class="card-text">High end space station with mars view,No smoking allowed,No pets</p>
       <time datetime="2015-05-15 19:00">April 5</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
</div>
            <br>
           
            <div class="row" style=" margin-top: 11px;" id="myDIV4">
              <div class="col-sm-4" id="myDIV1">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type4.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:  rgb(204, 204, 178)">Old style cottage</h4>
      <address>
Posted by <a href="">Ted bundy</a>.<br>
Type:Space station,<br>
Box 564, Melbourn<br>
Australia
</address>
    <p class="card-text" >Cool place with old touch...Dont mind the smell,No smoking,Pets allowed</p>
       <time datetime="2015-05-15 19:00">june 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
         
 <div class="col-sm-4">
           <div class="card" style="width: 30rem;" id="myDIV1">
  <img class="card-img-top" src="Pictures/type5.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Beautiful house in middel of the city</h4>
      <address>
Posted by <a href="">That guy</a>.<br> 
Type:B&B,<br>
Box 564, Liverpool<br>
England
</address>
    <p class="card-text">This house is dope,many famous persons died here,No smoking,No pets</p>
       <time datetime="2015-05-15 19:00">Nov 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
           
                 
             <div class="col-sm-4" >
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type6.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Beautiful 3BHK Apartment</h4>
      <address>
Posted by <a href="">This guy</a><br> 
Type:Apartment,<br>
Box 564,manus<br>
Brazil
</address>
    <p class="card-text">Best 3BHk Apartment,Might collapse in 2months so hurry up</p>
       <time datetime="2015-05-15 19:00">july 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
</div>
          <br>  
              <div class="row" id="myDIV3" style=" margin-top: 11px;">
              <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type7.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Rich mans home</h4>
      <address>
Posted by <a href="">William Henry Gates III </a>.<br>
Type:Villa,<br>
Box 564, Dubai<br>
 United Arab Emirates
</address>
    <p class="card-text">I am rich only contact if your rich.No smoking,Pets allowed,Yes i have a pool</p>
       <time datetime="2015-05-15 19:00">october 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
         
 <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type8.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Loft with craft</h4>
      <address>
Posted by <a href="">Leonardo di ser Piero da Vinci </a>.<br>
Type:Loft,<br>
Box 564,Rome<br>
Italy
</address>
    <p class="card-text">Coverd by beautiful arts,No smoking,No Pets</p>
       <time datetime="2015-05-15 19:00">September 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
           
                 
             <div class="col-sm-4">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type9.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">House in the tree</h4>
      <address>
Posted by <a href="">Nelson Rolihlahla Mandela </a><br> 
Type:Tree house,<br>
Box 564, Windhoek<br>
Africa
</address>
    <p class="card-text">House built on tree to peep on neighbours while they are doing it,No pets,No smoking</p>
       <time datetime="2015-05-15 19:00">Feb 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
</div>
            <br>
               <div class="row" id="myDIV2" style="margin-top: 11px;" >
              <div class="col-sm-4" id="myDIV1">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type10.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Boat house in Arabic sea</h4>
      <address>
Posted by <a href="">Rose DeWitt Bukater</a>.<br> 
Type:Boat house,<br>
Box 129, kerala<br>
India
</address>
    <p class="card-text">Beautiful boat house in kerala,No signs of tsunami yet,No smokig,Only fish allowed as pets</p>
       <time datetime="2015-05-15 19:00">December 26</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
         
 <div class="col-sm-4" id="myDIV1">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type11.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">Cool Moving house</h4>
      <address>
Posted by <a href="">Barry allen</a>.<br>
Type:Mobile house,<br>
Box 564, Central city<br>
U.S.A
</address>
    <p class="card-text">Moving house,you are not allowed to movie it,No pets,Smoking allowed on sundays</p>
       <time datetime="2015-05-15 19:00">jan 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
           
                 
             <div class="col-sm-4" id="myDIV1">
           <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="Pictures/type12.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title" style="color:rgb(204, 204, 178)">New and Best way of living</h4>
      <address>
Posted by <a href="">Homeless Guy</a><br>
Type:Other,<br>
Box 564,EveryWhere<br>
Anywhere
</address>
    <p class="card-text">This is not just home,This is a way of living.Do you have the guts to do it,Everything is allowed</p>
       <time datetime="2015-05-15 19:00">April 15</time>
    <a href="#" class="btn btn-primary" style="float: right">View</a>
               </div>
  </div>
</div>
</div>
        </div>
      </div>
     <br>
   
    
   
    <hr class="style18">
    <footer>    
  
    <div class="copyright">
  <div class="container">
    <div class="col-md-6">
      <p>� 2017 - All Rights with THE CHANGE</p>
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