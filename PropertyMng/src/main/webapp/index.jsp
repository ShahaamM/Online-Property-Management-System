<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="allComp/css/indexStyle.css">
<title>Home Page</title>
</head>
<body>


<!-- Page 1 -->
	<section class="sectionClass1">
	<div class="container-fluid sectionClasss">
		<nav class="navbar navbar-expand-lg" style="z-index: 2005;">
			<div class="container-fluid">
				<div class="col-6">
					<a class="navbar-brand" href="#"> <img
						src="allComp/images/PropertyHub.png" alt="Bootstrap" width="150"
						height="130">
					</a>
				</div>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
					aria-controls="navbarTogglerDemo01" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="col-6">
					<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
						<a class="navbar-brand" href="#"></a>
						<ul
							class="navbar-nav me-auto mb-2 mb-lg-0 col justify-content-around align-items-center">
							<li class="nav-item"><a class="nav-link active nav-btn"
								aria-current="page" href="#">Home</a></li>
							<li class="nav-item"><a class="nav-link nav-btn" aria-current="page"
								href="#section1">Properties</a></li>
							<li class="nav-item"><a class="nav-link nav-btn" aria-current="page"
								href="#section2">About Us</a></li>
							<li class="nav-item"><a class="nav-link nav-btn" aria-current="page"
								href="#section3">Contact Us</a></li>
							<!--  
							<li class="nav-item">
								<button type="button" class="btn btn-primary btn-sm btn-donate">SignUp</button>
							</li>
							-->
							<li class="nav-item">
								<a href="adminHome.jsp"><button type="button" class="btn btn-primary btn-sm btn-donate">Login</button></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		
		<div class="container align-items-center" style="height: 800px;">
			<div class="align-items-center justify-content-center">
			<div class="row">
				<h1 class="bigText" style="font-size: 5rem; ">Find Your Dream</h1>
				<h2 class="bigText" style="font-size: 3rem;">Home Today</h2>
			</div>

			<div class="row">
				<p class="bigText">
					Click edit button to change this text. Lorem ipsum dolor sit amet,<br>
					consectetur adipiscing elit. Ut elit tellus, luctus.
				</p>
			</div>
			</div>
		</div>
		</div>
	</section>



<!-- Page 2 -->
	<section class="bg-white" style="height: 750px;" id="section1">
		<div class="container">
			<div class="row text-center pt-5 pb-5">
				<h1>
					<u> Find Your Perfect Home </u>
				</h1>
			</div>

			<div class="row mx-auto my-auto">
				<div class="col">
					<div class="card propertycard" style="width: 18rem; margin-top: 150px;">
						<img src="allComp/images/1.jpg" class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title">Prime House</h5>
							<p class="card-text">
								22, Galle Road, Wellawatte <br>
								20,000.00 <br>
								<b> Available </b>
							</p>
							<a href="#" class="btn btn-primary bookbtn">Book</a>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card propertycard" style="width: 18rem; margin-top: 150px;">
						<img src="allComp/images/2.jpg" class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title">Orchard House</h5>
							<p class="card-text">
								102, Kandy Road, Malabe-01 <br>
								60,000.00 <br>
								<b> Available </b>
							</p>
							<a href="#" class="btn btn-primary bookbtn">Book</a>
						</div>
					</div>
				</div>
				
				<div class="col">
					<div class="card propertycard" style="width: 18rem; margin-top: 150px;">
						<img src="allComp/images/5.jpg" class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title">Woodlands</h5>
							<p class="card-text">
								12, Main Street, Kandy-10 <br>
								30,000.00 <br>
								<b> Available </b>
							</p>
							<a href="#" class="btn btn-primary bookbtn">Book</a>
						</div>
					</div>
				</div>
				
				<div class="col">
					<div class="card propertycard" style="width: 18rem; margin-top: 150px;">
						<img src="allComp/images/4.jpg" class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title">Rose Cottage </h5>
							<p class="card-text">
								352, Town Road,NuweraEliya <br>
								50,000.00 <br>
								<b> Available </b>
							</p>
							<a href="#" class="btn btn-primary bookbtn">Book</a>
						</div>
					</div>
				</div>
				
			</div>
			
			
				<a href="properties.jsp" class="btn btn-primary shmbtn" style="margin-top: 100px; margin-left: 580px;">Show More</a>
			
		</div>
	</section>



<!-- Page 3 -->
    <section class="sectionClass1" id="section2">
        <div class="sectionClasss container-fluid">
            <div class="container">
                <div class="row">
                    <h1 style="padding-top: 12rem; color: white; font-size: 4rem;">
                        <u> About Us </u>
                    </h1>
                </div>

                <div class="row pt-5" style="color: white;">
                    <p style="font-size: 1.5rem;">
                        Click edit button to change this text. Lorem ipsum dolor sit amet,<br>
                        consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper<br>
                        mattis, pulvinar dapibus leo.
                    </p>
                </div>

                <div class="row pt-5" style="color: white;">
                    <p style="font-size: 1rem;">
                        Proin gravida nibh vel velit auctor aliquet. Aenean<br> sollicitudin,
                        lorem quis bibendum auctor, nisi elit consequat<br> ipsum, nec sagittis
                        sem nibh id elit. Duis sed odio sit amet<br> nibh vulputate cursus a
                        sit amet mauris. Morbi accumsan<br> ipsum velit. Nam nec tellus a odio
                        tincidunt auctor.
                    </p>
                </div>
            </div>
        </div>
    </section>



<!-- Page 4 -->
	<section class="CusSup" id="section3">
		<div class="container">
			<div class="row">
				<div  class="col-7">
					<div class="section-header p-5 pb-0">
						<h2> <b> Contact Us </b> </h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book.
						</p>
					</div>

					<div class="contact-info p-5">
						<div class="contact-info-item">
							<div class="contact-info-icon">
								<i class="fas fa-home"></i>
							</div>

							<div class="contact-info-content">
								<h4> <b> Address </b> </h4>
								<p>
									4671 Sugar Camp Road,<br>
									Owatonna, Minnesota,<br>
									55060
								</p>
							</div>
						</div>

						<div class="contact-info-item">
							<div class="contact-info-icon">
								<i class="fas fa-phone"></i>
							</div>

							<div class="contact-info-content">
								<h4> <b> Phone </b> </h4>
								<p>571-457-2321</p>
							</div>
						</div>

						<div class="contact-info-item">
							<div class="contact-info-icon">
								<i class="fas fa-envelope"></i>
							</div>

							<div class="contact-info-content">
								<h4> <b> Email</b> </h4>
								<p>ntamerrwael@mfano.ga</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-5">
					<div class="contact-form pt-5">
						<form action="#" id="contact-form" style="border: 2px solid #333; padding: 2rem; background-color: white; border-radius: 10px;">
							<div class="mt-1 text-center">
								<p><b> Need Help? </b> </p>
								<p style="font-size: 1.5rem;"> <b> Message Us </b> </p>
							</div>
					
							<div class="mb-3">
								<label for="name" class="form-label">Full Name</label>
									<input class="form-control" id="name" type="text" required="true" name="" placeholder="Jhon ABC">
							</div>
							
							<div class="mb-3">
								<label for="mail" class="form-label">Email address</label>
									<input type="email" class="form-control" id="mail" aria-describedby="emailHelp" required="true" name="" placeholder="abc@gmail.com">
							</div>

							<div class="mb=3">
								<label> Type Your Message </label> <br>
									<textarea rows="5" cols="58" required="true" name=""> </textarea>
							</div>
							
							<button type="submit" class="btn btn-primary">Send Message </button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>



<!-- Footer -->
	<hr>
	<footer class="py-3 my-4">
		<p class="text-center text-body-secondary">2023 Company, Inc</p>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
	</script>
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


</body>
</html>