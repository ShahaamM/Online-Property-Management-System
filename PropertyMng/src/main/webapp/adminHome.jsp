<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title> Admin Home </title>
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
                    <a href="index.jsp" class="nav-link" aria-current="page" style="font-size: 25px;">
                        <i class="fas fa-home"></i> Home
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page" style="font-size: 25px;">
                        <i class="fas fa-dashboard"></i> Dashboard
                    </a>
                </li>
            </ul>
        </div>


		<!-- Right Side -->
        <div class="col-lg" style="background-color: #808080;">
        
        	<div class="row">
        		<img src="allComp/images/PropertyHub.png" class="mx-auto mt-5 mb-5" style="width: 200px; height: 200px; border-radius: 80%; clip-path: circle(50% at center);">
        	</div>
        	
        	
            <div class="row" style="padding-left: 150px; padding-top: 100px;">
					<div class="col-md-2">
						<a href="addProperty.jsp" class="addProp_a"
							style="text-decoration: none; color: black">
							<div class="card">
								<div class="card-body text-center">
									<i class="fas fa-plus-square fa-5x"></i><br>
									<h4>Add Property</h4>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-2">
            		<a href="viewProperty.jsp" class="addProp_a" style="text-decoration: none; color:black;">
            		<div class="card">
            			<div class="card-body text-center">
            				<i class="fas fa-eye fa-5x"></i><br>
            				<h4> View Property </h4>
            			</div>
            		</div>
            		</a>
            	</div>
            	
            	<div class="col-md-2">
						<a href="editProperty.jsp" class="addProp_a"
							style="text-decoration: none; color: black">
							<div class="card">
								<div class="card-body text-center">
									<i class="fas fa-pencil-square fa-5x"></i><br>
									<h4> Edit Property</h4>
								</div>
							</div>
						</a>
					</div>
					
				<div class="col-md-2">
						<a href="deleteProperty.jsp" class="addProp_a"
							style="text-decoration: none; color: black">
							<div class="card">
								<div class="card-body text-center">
									<i class="fas fa-trash-alt fa-5x"></i><br>
									<h4> Delete Property</h4>
								</div>
							</div>
						</a>
					</div>
            	
            	<div class="col-md-2">
            	<a href="LogoutAdmin.jsp" class="addProp_a" style="text-decoration: none; color:black;">
            		<div class="card">
            			<div class="card-body text-center">
            				<i class="fas fa-sign-out-alt fa-5x"></i><br>
            				<h4> Logout </h4>
            			</div>
            		</div>
            		</a>
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