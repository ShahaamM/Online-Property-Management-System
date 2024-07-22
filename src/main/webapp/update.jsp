<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="allComp/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>
	<main>
<style>
.labels {
	text-align: right;
}

.row {
	margin-bottom: 20px;
}
</style>

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
									<li class="nav-item"><a class="nav-link nav-btn"
										aria-current="page" href="#section1">Properties</a></li>
									<li class="nav-item"><a class="nav-link nav-btn"
										aria-current="page" href="#section2">About Us</a></li>
									<li class="nav-item"><a class="nav-link nav-btn"
										aria-current="page" href="#section3">Contact Us</a></li>

								</ul>
							</div>
						</div>
					</div>
				</nav>


				<div class="container">

					<form method="post" action="update">

						<div class="row">
							<div class="col-md-12">
								<h2 class="text-center text-white font-weight-bold"
									style="font-size: 50px;">Update Carefully</h2>
							</div>


							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">ID</div>
								<div class="col-md-4">
									<input type="text" name="id"
										value="<%=session.getAttribute("id")%>" class="form-control"
										readonly>
								</div>
								<div class="col-md-2"></div>
							</div>

							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">Full
									Name</div>
								<div class="col-md-4">
									<input type="text" name="full_name"
										value="<%=session.getAttribute("full_name")%>"
										class="form-control">
								</div>
								<div class="col-md-2"></div>
							</div>

							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">Email</div>
								<div class="col-md-4">
									<input type="text" name="email"
										value="<%=session.getAttribute("email")%>"
										class="form-control">
								</div>
								<div class="col-md-2"></div>
							</div>

							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">Phone</div>
								<div class="col-md-4">
									<input type="text" name="phone"
										value="<%=session.getAttribute("phone")%>"
										class="form-control">
								</div>
								<div class="col-md-2"></div>
							</div>


							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">UserName</div>
								<div class="col-md-4">
									<input type="text" name="username"
										value="<%=session.getAttribute("username")%>"
										class="form-control">
								</div>
								<div class="col-md-2"></div>
							</div>


							<div class="row">
								<div class="col-md-4 labels text-white font-weight-bold">Password</div>
								<div class="col-md-4">
									<input type="password" name="password"
										value="<%=session.getAttribute("password")%>"
										class="form-control">
								</div>
								<div class="col-md-2"></div>
							</div>

							<div class="row">
								<div class="col-md-8 text-center">
									<button type="submit"
										class="btn btn-success btn-lg btn-block btn-donate">
										Update</button>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>

<footer>
			<script
				src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
				integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
				crossorigin="anonymous">
			</script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
				integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
				crossorigin="anonymous">
			</script>
</footer>
	</main>
</body>
</html>