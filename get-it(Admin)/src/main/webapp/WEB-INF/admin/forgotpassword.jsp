<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admin | Forgot Password</title>

<!--Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/admin/img/favicon.ico"
	type="image/x-icon" />
<!-- Font Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/login/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/login/css/style.css">
<script>
	var check = function() {
		if (document.getElementById('password').value == document
				.getElementById('confirm_password').value) {
			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'Password Matched';
			document.getElementById("Button").disabled = false;
		} else {
			document.getElementById('message').style.color = 'red';
			document.getElementById('message').innerHTML = 'Password and Confirm password must be same';
			document.getElementById("Button").disabled = true;
		}
	}

	function showpassword() {
		var x = document.getElementById("password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
	function showconfirmpassword() {
		var x = document.getElementById("confirm_password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
</head>
<body>

	<div class="main">

		<div class="container">
			<form method="post" class="appointment-form" id="forgotpassword" action="recovery"
				action="save">

				<h2 style="color: #4966b1; text-align: center;">Get-it Admin
					Account Recovery</h2>
				
				<div class="form-group-1">

					<input type="email" id="email" name="email" class="form-control"
						placeholder="Email Id" required="required"
						pattern="[a-zA-Z0-9_]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
				</div>

				<div class="form-submit">
					<input type="submit" name="submit" id="submit" class="submit"
						value="SUBMIT" />
				</div>
				<a href="login" style="color: black; font-size: 15px;">Sign In</a><br> <label
					style="color: black; font-size: 15px;">Don't have account ?
					<a href="signup"> SIGN UP</a>
				</label>
			</form>
		</div>

	</div>
	<!-- JS -->
	<script
		src="<c:url value="/resources/login/vendor/jquery/jquery.min.js"/>"></script>

	<script src="<c:url value="/resources/login/js/main.js"/>"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>