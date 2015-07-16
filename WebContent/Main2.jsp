<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="bootstrap.css" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="generator" content="Bootply" />
  <meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="shortcut icon" href="shipwheel.ico" />
<title>Yarrr Dashboard</title>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-image: url("woodbg.jpg");">
    <div class="container-fluid">
	  <div class="navbar-header" style="color: white;" style="background-image: url("woodbg.jpg");">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
		</button>
		Captain Woodenleg
	  </div>
	  <div class="navbar-collapse collapse">
		<ul class="nav navbar-nav navbar-right">
		  <li></li>
		</ul> 
	</div>
	</div>
  </nav>
  <div class="container">
    <h3>Captain Woodenleg</h3>
    <br>
    <div class="panel panel-default">
   	  <div class="panel-body">
   	  	<ul class="nav nav-tabs">
  			<li class="active"><a data-toggle="tab" href="#home">Pirates</a></li>
  			<li><a data-toggle="tab" href="#menu1">Plunder</a></li>
		</ul>
		
		<div class="tab-content">
		
		<form role="form" method='post' action="updatePirate">
    	
  		<div id="home" class="tab-pane fade in active">
  				  <h3>List o' Pirates: </h3>
    				<table>
    				 <tr>
    				 	<td><b>Scoundrel Names:</b></td>
    				 </tr>
    				 <tr>
    				 	<td>&nbsp;</td>
    				 </tr>	
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio1">${P1}</label>
						</div></td>
    				 </tr>	
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio2">${P2}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio3">${P3}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio4">${P4}</label>
						</div></td>
    				 </tr>
					 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio5">${P5}</label>
						</div></td>
    				 </tr>	
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio6">${P6}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio7">${P7}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio8">${P8}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio9">${P9}</label>
						</div></td>
    				 </tr>	
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio10">${P10}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio11">${P11}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio12">${P12}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio13">${P13}</label>
						</div></td>
    				 </tr>	
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio14">${P14}</label>
						</div></td>
    				 </tr>
    				 <tr>
    				 	<td><div class="radio">
 							 <label><input type="radio" name="optradio15">${P15}</label>
						</div></td>
    				 </tr>
    				</table>
    			<br>		
  	  			<button type="submit" name='continue' class="btn btn-primary">Update lackey</button>
  	  			
  			</form>
  			
  			<br>
  	  		<a href="addPirate.jsp" role="button" name='continue' class="btn btn-primary" >Add a lackey</a>
    		
		  <div id="menu1" class="tab-pane fade">
    				<h3>Current amount o' doubloons here: </h3>
    				<p>${Plunder}<p>
    				
    				<h3>Add ye plunder here: </h3>
    				
    		</div>
    	  </div>
    	 </div>
</body>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>