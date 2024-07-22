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
<title> All Property </title>
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
            </ul>
        </div>


		<!-- Right Side -->
        <div class="col-lg" style="background-color: #808080">
				<h1 class="text-center p-5"> All Properties </h1>
				<table class="table table-striped">
					<thead style="font-size: 15px;">
						<tr>
							<th class="text-center" scope="col">ID </th>
							<th class="text-center" scope="col"> Property Name </th>
							<th class="text-center" scope="col"> Address </th>
							<th class="text-center" scope="col"> Price </th>
							<th class="text-center" scope="col"> Status </th>
							<th class="text-center" scope="col"> Action </th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center" scope="col"> 01 </td>
							<td class="text-center" scope="col"> Prime House </td>
							<td class="text-center" scope="col"> 22, Galle Road, Wellawatte </td>
							<td class="text-center" scope="col"> 20,000.00 </td>
							<td class="text-center" scope="col"> Available </td>
							<td class="text-center">
								<a class="btn btn-sm btn-primary" href="editProperty.jsp"> Edit </a>
								<a class="btn btn-sm btn-danger" href="?action="delete&propID = <c:out value="${property.propID}"/>> Delete </a>
							</td>
						</tr>
						
						<tr>
							<td class="text-center" scope="col"> 02 </td>
							<td class="text-center" scope="col"> Orchard House </td>
							<td class="text-center" scope="col"> 102, Kandy Road, Malabe-01 </td>
							<td class="text-center" scope="col"> 60,000.00 </td>
							<td class="text-center" scope="col"> Available </td>
							<td class="text-center">
								<a class="btn btn-sm btn-primary" href="editProperty.jsp"> Edit</a>
								<a class="btn btn-sm btn-danger" href="?action="delete&propID = <c:out value="${property.propID}"/>> Delete </a>
							</td>
						</tr>
						
						<tr>
							<td class="text-center" scope="col"> 03 </td>
							<td class="text-center" scope="col"> Woodlands </td>
							<td class="text-center" scope="col"> 12, Main Street, Kandy-10 </td>
							<td class="text-center" scope="col"> 30,000.00 </td>
							<td class="text-center" scope="col"> Available </td>
							<td class="text-center">
								<a class="btn btn-sm btn-primary" href="editProperty.jsp"> Edit</a>
								<a class="btn btn-sm btn-danger" href="?action="delete&propID = <c:out value="${property.propID}"/>> Delete </a>
							</td>
						</tr>
						
						<tr>
							<td class="text-center" scope="col"> 04 </td>
							<td class="text-center" scope="col"> Rose Cottage </td>
							<td class="text-center" scope="col"> 352, Town Road,NuweraEliya </td>
							<td class="text-center" scope="col"> 50,000.00 </td>
							<td class="text-center" scope="col"> Available </td>
							<td class="text-center">
								<a class="btn btn-sm btn-primary" href="editProperty.jsp"> Edit</a>
								<a class="btn btn-sm btn-danger" href="?action="delete&propID = <c:out value="${property.propID}"/>> Delete </a>
							</td>
						</tr>
					
					<c:forEach items="${property1}" var="property">
					
						<tr>
							<td scope="col"> <c:out value="${property.propID}"/> </th>
							<td scope="col"> <c:out value="${property.propName}"/> </td>
							<td scope="col"> <c:out value="${property.propAddress}"/> </td>
							<td scope="col"> <c:out value="${property.propPrice}"/> </td>
							<td scope="col"> <c:out value="${property.propStatus}"/> </td>
							<td class="text-center">
								<a class="btn btn-sm btn-primary" href="editProperty.jsp"> Edit</a>
								<a class="btn btn-sm btn-danger" href="?action="delete&propID = <c:out value="${property.propID}"/>> Delete </a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
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