<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="">
<head>
       <title> That guy</title>
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
    <script src="coustom.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" href="profile.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-*.min.js"></script>
  
    
</head>
<body>
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
     <a href="LogoutServlet" ><button type="button" class="btn btn-outline-danger" >LogOut</button></a>
    </div>
          </span>
      
  </div>
</nav>
        </header>   
  <div class="outer-div" >

    <div class="row" id="pic">
     <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="${Apt1}" alt="Card image cap" style="width:250"; height="200">
  <div class="card-body">
      <center>
  <a href=""> <strong style="color: indianred">Logged in as:${fname} </strong></a>
    <br>
<div >
<br>
      <a href="testbook.jsp" ><button type="button" class="btn btn-outline-danger" >Request sent</button></a>
      
      <a href="Houseexchangerequest.jsp" ><button type="button" class="btn btn-outline-danger" >Request received</button></a>
      
</div>

      </center>
     
               </div>
  </div>
   
    </div>
   
    <div class="container" id="cont">
 
<div id="exTab1">	
<ul  class="nav nav-pills">
			<li class="active">
                <a  href="#1a" data-toggle="tab"><strong style="color: indianred">Profile</strong></a>
			</li>
    <li><a href="#2a" data-toggle="tab" class="active"><strong style="color: indianred">Home</strong></a>
    
    </li>
    <li>
      
    
			</li>
			
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
                  <center>
                  <h2>
                       ${fname}'s Profile
                      </h2>  
               
                      
                     <u><a href="edituserprofile.jsp"><p class="edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"> </span>edit</p></a></u>
                      <hr>
                 
                  <hr>
                  </center>
                  <h2>
                    Personal Info:
                      </h2> 
                  <br>
          <div class="row" >
              
              <br>
                  <div class="col-sm-6">
                     
                      <address>
                          <strong><span aria-hidden="true" class="glyphicon glyphicon-user"></span>&nbsp;First Name:&nbsp;</strong>${fname}<br>   
<strong><span aria-hidden="true" class="glyphicon glyphicon-user"></span>&nbsp;Last Name:&nbsp;</strong> ${lname}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-home"></span>&nbsp;Address:&nbsp;</strong>${Addressln1}, ${city}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-envelope"></span>&nbsp;E-mail:&nbsp;</strong>${email}<br>
</address>
            
              </div>
              <div class="col-sm-6">
               

</div>
</div>
<hr>
               
                  <hr>
				</div>
				<div class="tab-pane" id="2a">
                   <u><a href="EditapartmentDetails.jsp"><p class="edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"> </span>edit</p></a></u>
      <address>
 <br>
                
<strong><span aria-hidden="true" class="glyphicon glyphicon-text-size"></span>&nbsp;Type:&nbsp;</strong>${houseType}<br>   
<strong><span aria-hidden="true" class="glyphicon glyphicon-home"></span>&nbsp;Address:&nbsp;</strong>${addressln1}${addressln2}${address}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-globe"></span>&nbsp;City:&nbsp;</strong>${city}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-inbox"></span>&nbsp;Bedroom:&nbsp;</strong>${bedroom}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-tint"></span>&nbsp;Bathrooms:&nbsp;</strong>${bathroom}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span>&nbsp;Date availabe from:&nbsp;</strong>&nbsp;${todate}&nbsp;<strong>till</strong>&nbsp;${fromdate}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-fire"></span>&nbsp;Smoking:&nbsp;</strong>${Smoking}<br>
<strong><span aria-hidden="true" class="glyphicon glyphicon-knight"></span>&nbsp;Pets:&nbsp;</strong>${pets}<br>
</address>
                   
       
                  <div class="row">
  <div class="column">
    <img src="${Apt1}" alt="Livng room" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="${Apt2}" alt="kitchen" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="${Apt3}" alt="Study" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="${Apt4}" alt="Bathroom" style="width:100%" onclick="myFunction(this);">
  </div>
</div>


<div class="cont">
  <span onclick="this.parentElement.style.display='none'" class="closebtn" style="color: red">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

         
				</div>
				<div class="tab-pane" id="3a">
                    <h2 class="card-title" style="color: indigo">Request you Recived:</h2>
                    <hr>
                     <table class="table table-dark">
    <thead>
      <tr>
        <th>Owner Name</th>
        <th>From date</th>
        <th>To date</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      
     <tr>
     
        <td><a href="thechange.jsp">${Requestedto}</a> </td>
        <td>${fromdate}</td>
        <td>${todate}</td>
         <td><button type="button" class="btn btn-outline-success"style='margin-right:16px'>Accept</button>
         <button type="button" class="btn btn-outline-danger"style='margin-right:16px'>Decline</button></td>
      </tr>
      <tr>
        <td><a href="thechange.jsp">raja</a></td>
        <td>12/2/2018</td>
        <td>19/4/2018</td>
         <td><button type="button" class="btn btn-outline-success"style='margin-right:16px'>Accept</button>
         <button type="button" class="btn btn-outline-danger"style='margin-right:16px'>Decline</button></td>
      </tr>
    </tbody>
  </table>
 
         
				</div>
				<div class="tab-pane" id="4a">
                    <h2 class="card-title" style="color: indigo">Houses you requested:</h2>
                    <hr>
                      <table class="table table-dark">
    <thead>
      <tr>
        <th>Owner Name</th>
        <th>Requested From </th>
        <th>Requested To </th>
        <th>Status</th>
        <th>View</th>
      </tr>
    </thead>
    <tbody>
      
     <tr>
        <td>Vivek</td>
        <td>12/2/2019</td>
        <td>19/4/2019</td>
         <td>Accepted</td>
         <td><button type="button" class="btn btn-outline-success"style='margin-right:16px'>See the house</button>
         </td>
      </tr>
      <tr>
        <td>Raja</td>
        <td>12/2/2018</td>
        <td>19/4/2018</td>
         <td>Declined</td>
         <td><button type="button" class="btn btn-outline-success"style='margin-right:16px'>See the house</button>
         </td>
      </tr>
    </tbody>
  </table>
                    
                  
				</div>
      
			</div>
  </div>
        
      </div>
      
</div>
      
			</div>
  </div>
        
      </div>
      
</div>

      
			</div>
  </div>
        
      </div>
      
</div>

<script>
function myFunction(imgs) {
    var expandImg = document.getElementById("expandedImg");
    var imgText = document.getElementById("imgtext");
    expandImg.src = imgs.src;
    imgText.innerHTML = imgs.alt;
    expandImg.parentElement.style.display = "block";
}
</script>

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