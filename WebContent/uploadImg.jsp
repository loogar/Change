<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload page</title>
    
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
<link rel="stylesheet" href="img.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

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
      
   
      
      <button type="button" class="btn btn-outline-success" src="thechange.html">Home</button>
         <button type="button" class="btn btn-outline-danger" src="thechange.html">Logout</button>
    </div>
          </span>
      
  </div>
</nav>
        </header>   
    
<body>
    <div class="outer-div">
	<form action="UploadImageServlet" method="post" enctype="multipart/form-data" name="form1" id="form1">
		<center>
			
            
            <table class="table table-dark" style="width: 50%">
  <thead>
    <tr>
     
    </tr>
  </thead>
  <tbody>
    
       <tr>
   
      <td align="center"><b>Profile image upload</b></td>
    </tr>
    <tr>
      <td>
						<div class="input-group">
                <label class="input-group-btn">
                    <span class="btn btn-danger">
                 	<tr>
					<td>
						Upload your profile pic : <input name="file" type="file" id="file" >
					</td>
				</tr>
					</td>
    </tr>
    <tr>
      <tr>
				
				</tr>
 
  </tbody>
</table>
            <hr>
              <table class="table table-dark"  style="width: 50%">
  <thead >
    <tr>
     
    </tr>
  </thead>
  <tbody>
    <tr>
   
      
       <tr>
   
      <td align="center"><b>Home images upload</b></td>
    </tr>
    <tr>
      <td>
					<div class="input-group">
                <label class="input-group-btn">
                    	<tr>
					<td>
						Upload apartment Images : <input name="file" type="file" id="file" multiple >
					</td>
				</tr>
            </div>
					</td>
    </tr>
    <tr>
      <tr>
					<td align="center">
						<input type="submit" name="Submit" value="Submit" style="color: red">
                      
					</td>
				</tr>
 
  </tbody>
</table>
       

		</center>
	</form>
        </div>
    <br>
    
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
</body>
</html>