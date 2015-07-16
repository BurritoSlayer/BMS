<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update lackey</title>
<link href="bootstrap.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script> 
<script>
 $("#firstname").val("${FirstName}");
</script>

</head>
<body>
	<img src="ship2.jpg"></img>
	<div class="container">
	<h1>Update lackey: </h1>
				<form role="form" method='post' action="updatePirate2">
				    <div class="form-group">
				      <label for="firstname">First Name </label>
				      <input type="text" class="form-control" name="firstname" id="firstname" value="${FirstName}">
				    </div>

				    <div class="form-group">
				      <label for="pwd">Last Name: </label>
				      <input type="text" class="form-control" name='lastname' id="lastname" value="${LastName}">
				    </div>
				    
				     <div class="form-group">
				      <label for="email">Original Ship: </label>
				      <input type="text" class="form-control" name="oship" id="oship" value="${OShip}">
				    </div>
				    
				     <div class="form-group">
				      <label for="email">Pirate Name: </label>
				      <input type="text" class="form-control" name="pname" id="pname" value="${PirateName}">
				    </div>
				 
					<h4> </h4>
				    <button type="submit" name='continue' class="btn btn-primary">Ahoy!</button>
				    &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="Login.jsp" name='cancel' class="btn btn-danger">Cancel</a>
				  </form>
			</div>
</body>
</html>