<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add lackey</title>
<link href="bootstrap.css" rel="stylesheet">
</head>
<body>
	<img src="ship2.jpg"></img>
	<div class="container">
	<h1>Add lackey: </h1>
				<form role="form" method='post' action="addPirate">
				    <div class="form-group">
				      <label for="firstname">First Name: </label>
				      <input type="text" class="form-control" name="firstname" id="firstname" placeholder="Enter scoundrel's first name">
				    </div>

				    <div class="form-group">
				      <label for="pwd">Last Name: </label>
				      <input type="text" class="form-control" name='lastname' id="lastname" placeholder="Enter scoundrel's last name">
				    </div>
				    
				     <div class="form-group">
				      <label for="email">Original Ship: </label>
				      <input type="text" class="form-control" name="oship" id="oship" placeholder="Enter name of plundered ship">
				    </div>
				    
				     <div class="form-group">
				      <label for="email">Pirate Name: </label>
				      <input type="text" class="form-control" name="pname" id="pname" placeholder="Give thee poor soul a proper name">
				    </div>
				 
					<h4> </h4>
				    <button type="submit" name='continue' class="btn btn-primary">Ahoy!</button>
				    &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="Login.jsp" name='cancel' class="btn btn-danger">Cancel</a>
				  </form>
			</div>
</body>
</html>