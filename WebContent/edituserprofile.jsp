<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="">
<head>
    <meta charset="UTF-8">
    <title>Edit profile</title>
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
<link rel="stylesheet" href="style.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-*.min.js"></script>
  
    
</head>
     <header > 
           
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" ></a>
               <a href="thechange.html"><img src="Pictures/Logo.PNG" class="img34"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    
      <span style="float: right">
    <div class="navbar-nav">
      
   
      
    <a href="thechange1.jsp"> <button type="button" class="btn btn-outline-success"style='margin-right:16px'>Home</button></a>
     
       <a  href="UserProfile.jsp"><button type="button" class="btn btn-outline-success">Logged in as:${fname}</button></a>
       <a href="LogoutServlet" ><button type="button" class="btn btn-outline-danger" >LogOut</button></a>
    </div>
          </span>
      
  </div>
</nav>
        </header>   
       <%
        String fname = (String)session.getAttribute("fname");
        %>
         
<body>

<div class="container">
    <h1>Edit Profile Details: Welcome :: ${fname}</h1>
    
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
       
            <script>
            $(function() {

  // We can attach the `fileselect` event to all file inputs on the page
  $(document).on('change', ':file', function() {
    var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
  });

  // We can watch for our custom `fileselect` event like this
  $(document).ready( function() {
      $(':file').on('fileselect', function(event, numFiles, label) {

          var input = $(this).parents('.input-group').find(':text'),
              log = numFiles > 1 ? numFiles + ' files selected' : label;

          if( input.length ) {
              input.val(log);
          } else {
              if( log ) alert(log);
          }

      });
  });
  
});
            
            </script>
        </div>
      </div>
      
      <!-- edit form column -->
       
      <div class="col-md-9 personal-info">
        <div id= "alertmessage" class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
        <strong>Your details are saved please logout and relogin</strong>
          </div>
        <h3>Stranded info :</h3>
        
        <form action="UpdateUserProfile" method="post" >
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <input class="form-control" value="${fname}" type="text" name= "fname" id="fname">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <input class="form-control" value="${lname}" type="text" name= "lname" id="lname">
            </div>
          </div>
         
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" value="${email}" type="email" name= "email" id="email">
            </div>
          </div>
     
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input class="form-control" value="${password}" type="password" name= "password" id="password">
            </div>
          </div>
          
           <div class="form-group">
            <label class="col-md-3 control-label">Address:</label>
            <div class="col-md-8">
              <input class="form-control" value="${address}" type="text" name= "address" id="address">
            </div>
          </div>
     </div>
            
         

      
      </div>
  </div>
</div>

 
         <div class="form-group"  >
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8" >
              <input type="submit" class="btn btn-primary" value="Save Changes" name= "submit" id="submit">
              <span></span>
              <input class="btn btn-default" value="Cancel" type="reset" name= "Cancel" id="Cancel">
            </div>
          </div>
        
      </div>
</form>
<hr>
    

       
        <footer style="width: auto">    
  
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
<script>
$("#alertmessage").hide();
$("#submit").click(function(){
	if($("#alertmessage").hide())
	$("#alertmessage").show();
});
</script>
</body>
</html>
