<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="allComp/css/indexStyle.css">
<title> Edit Property </title>
</head>
<body>
	<section style="height: 750px;">
    <div class="row">
    
  <!-- Left Side bar -->
        <div class="col-2 text-bg-dark" style="background-color: red; width: 280px; height: 750px;">
            <a href="#" class="d-flex align-items-center text-white text-decoration-none" style="padding-left:40px;">
                <p style="font-size: 20px;  margin-top: 20px;">Admin</p>
                <p style="color: red; font-size: 20px;  margin-top: 20px;">Dashboard</p>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="../index.jsp" class="nav-link" aria-current="page" style="font-size: 25px;">
                        <i class="fas fa-home"></i> Home
                    </a>
                </li>
                <li class="nav-item">
                    <a href="adminHome.jsp" class="nav-link" aria-current="page" style="font-size: 25px;">
                        <i class="fas fa-dashboard"></i> Dashboard
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="adminHome.jsp" class="nav-link active" aria-current="page" style="font-size: 25px;">
                        <i class="fas fa-pencil"></i> Edit Property
                    </a>
                </li>
            </ul>
        </div>


<!-- Right Side -->
        <div class="col-lg" style="background-color: #808080">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-4 offset-md-4" style="padding-top: 150px;">
        				<div class="card">
        					<div class="card-body">
        					<h3 class="text-center"> Edit Property </h3>
        						<form action="editProperty" method="post">
        							<div class="form-group">
        								<label for="proID"> Property ID </label>
        									<input name="propID" type="text" class="form-control" id="proID" required>
        							</div>
        							
        							<div class="form-group">
        								<label for="proName"> Property Name </label>
        									<input name="propName" type="text" class="form-control" id="proName" required>
        							</div>
        							
        							<div class="form-group">
        								<label for="proAddress"> Address </label>
        									<input name="propAddress" type="text" class="form-control" id="proAddress" required>
        							</div>
        							
        							<div class="form-group">
        								<label for="proPrice"> Monthly Price </label>
        									<input name="propPrice" type="text" class="form-control" id="proPrice" required>
        							</div>
        							
        							<div class="form-group">
        								<label for="proStatus">Status</label>
        									<input name="propStatus" type="text" class="form-control" id="proStatus" required>
        							</div>
        							
        							<button type="submit" value="submit" class="btn btn-primary"> Edit Property </button>
        							
        						</form>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
    </div>
</section>


	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
	</script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>