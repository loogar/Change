<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<head>
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
         
<div id="myCarousel" class="carousel slide" data-ride="carousel" >

  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <img src="Pictures/Home5.jpg" alt="slide1" height="100%">
    </div>

    <div class="item">
      <img src="Pictures/Home3.jpg" alt="slide2">
    </div>

    <div class="item">
      <img src="Pictures/Home5.jpg" alt="slide 3">
    </div>
  

  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
         <div class="card text-center">
  <div class="card-header">
    <h3>Search for comfort</h3>
  </div>
  <div class="card-body">
    <ul class="nav">
   
    
    <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Search" />
            
        </form>
    </li>
    <li id="options">
     <a href="booking.jsp" class="">Search</a>
        
    </li>
</ul>
       <script>
  $( function() {
    var availableTags = [
       "Australia",
      "Antartica",
      "U.S.A",
      "Amarica",
      "London",
      "England",
      "India",
      "U.A.E",
      "Italy",
      "Dubai",
      "Paris",
    "Brazil",
      "France",
    ];
    $( "#search_text" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
 
<script src="prefixfree-1.0.7.js" type="text/javascript"></script>
    
    </div>
  </div>
        <div class="container">
  <div class="row">
    <div class='col-md-offset-2 col-md-8 text-center'>
    <h2>Our Coustemer response</h2>
    </div>
  </div>
  <div class='row'>
    <div class='col-md-offset-2 col-md-8'>
      <div class="carousel slide" data-ride="carousel" id="quote-carousel">
       
        <ol class="carousel-indicators">
          <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
          <li data-target="#quote-carousel" data-slide-to="1"></li>
          <li data-target="#quote-carousel" data-slide-to="2"></li>
        </ol>
        
        <!-- Carousel Slides / Quotes -->
        <div class="carousel-inner">
        
          <!-- Quote 1 -->
          <div class="item active">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="Pictures/super4.jpg" style="width: 100px;height:100px;">
                  
                </div>
                <div class="col-sm-9">
                  <p>Much better option for people living in Forest.
                      <br>(P.s-Don't tell batman i'm here)</p>
                  <small>wonder women</small>
                </div>
              </div>
            </blockquote>
          </div>
          <!-- Quote 2 -->
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="Pictures/super5.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>I am rich i don't really care.
                      <br>Any of you know where wonder women is staying? </p>
                  <small>Batman</small>
                </div>
              </div>
            </blockquote>
          </div>
          
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="Pictures/super3.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>I hate Batman.Anyways,this is cool.But i mostly choose to stay in sun.I wonder why i dont get much offers for exchange</p>
                  <small>Super man</small>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
        
        
        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
        <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
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
        <li><a href="contactus.html">Contact us</a></li>
        
      </ul>
    </div>
  </div>
</div>
  
        </footer>
 
    
    </body>


</html>