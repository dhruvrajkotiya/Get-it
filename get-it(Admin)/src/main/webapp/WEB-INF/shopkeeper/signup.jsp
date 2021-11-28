<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admin | Sign UP</title>

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
			<form method="post" class="appointment-form" id="appointment-form"
				action="saveshopkeeper" style="padding: 50px;">

				<h2 style="color: #4966b1; text-align: center;">Get-it
					Shopkeeper SIGN UP</h2>
				<label style="color: red; font-size: 15px;">${error }${success }</label>
				<div class="form-group-1">
					<fieldset
						style="border-bottom: none; border-left: none; border-right: none;">
						<legend
							style="color: black; font-size: 16px; margin-bottom: 10px;">Personal
							Information : </legend>
						<input type="text" class="form-control"
							placeholder="Enter your name here..." id="name" name="name"
							required="required" pattern="[a-zA-Z]{3,30}"
							title="Name only consist of alphabet. minimum name length 3 maximum name length 30">

						<input type="email" id="email" name="email" class="form-control"
							placeholder="Enter your email here..." required="required"
							pattern="[a-zA-Z0-9_]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">

						<input type="password" class="form-control" name="password"
							id="password" placeholder="Create Password" required="required"
							onkeyup='check();'
							pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
							title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15."
							style="margin-bottom: 0px;">
						<div class="form-check" style="margin-bottom: 0px;">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" onclick="showpassword()" /> <label
								for="agree-term" class="label-agree-term"><span></span>Show
								Password </label>
						</div>
						<input type="password" class="form-control" name="confirmpassword"
							id="confirm_password" onkeyup='check();'
							placeholder="Confirm Password" required="required"
							pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
							title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15."
							style="margin-bottom: 0px;">
						<div class="form-check" style="margin-bottom: 0px;">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" onclick="showconfirmpassword()" />
						</div>
						Show Password<br> <span id='message'></span> <input
							type="text" class="form-control"
							placeholder="Enter your address here..." id="address"
							name="address" required="required" min="5" maxlength="70"
							title="Address minimum length 5 maximum length 70."> <input
							class="form-control" type="text" name="contact" id="contact"
							placeholder="Enter your active contact number..."
							required="required" pattern="[5-9]{1}[0-9]{9}$"
							title="Contact Number must contain 10 character">
					</fieldset>
				</div>
				<div class="form-group-1">
					<fieldset
						style="border-bottom: none; border-left: none; border-right: none;">
						<legend
							style="color: black; font-size: 16px; margin-bottom: 10px;">Shop
							Information : </legend>
						<input type="text" class="form-control"
							placeholder="Enter shop registration number"
							name="registrationnumber" id="registrationnumber"
							placeholder="Enter shop registration number number..."
							required="required" pattern="[0-9]{3,30}"> <input
							type="text" class="form-control" placeholder="Enter your name"
							id="shopname" name="shopname" required="required"
							pattern="[a-zA-Z]{3,30}"
							title="Name only consist of alphabet. minimum name length 3 maximum name length 30">
						<input type="text" class="form-control"
							placeholder="Enter shop address"
							placeholder="Enter shop address here..." name="shopaddress"
							id="shopaddress" required="required" maxlength="70" min="5"
							title="Address minimum length 5 maximum length 70."> <input
							class="form-control" type="text" name="shopcontact"
							id="shopcontactnumber"
							placeholder="Enter shop active contact number..."
							required="required" pattern="[5-9]{1}[0-9]{9}$"
							title="Contact Number must contain 10 character">
					</fieldset>
				</div>
				<div class="form-submit">
					<button type="submit" class="btn submit" onclick="myFunction()"
						id="Button">SIGN UP</button>
				</div>
				<br> <label style="color: black; font-size: 15px;">Already
					have account ? <a href="login"> Sign In</a>
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