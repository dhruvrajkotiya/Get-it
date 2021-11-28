<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Credit Login / Register Form a Responsive Widget Template
	:: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Credit Login / Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<link
	href="${pageContext.request.contextPath}/resources/customerlogin/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" media="all">

<link
	href="${pageContext.request.contextPath}/resources/customerlogin/css/style.css"
	rel="stylesheet" type="text/css" media="all" />

<script>
	var check = function() {
		if (document.getElementById('password').value == document
				.getElementById('confirm_password').value) {
			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'Password Matched';
			document.getElementById("Button").disabled = false;
		} else {
			document.getElementById('message').style.color = 'yellow';
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
<body>
	<div class="main-agileits">
		<!--form-stars-here-->
		<div class="form-w3-agile"
			style="margin-top: 75px; margin-bottom: 75px;">
			<h2>Get-it Sign up</h2>
			<label style="color: white;font-size: 14px;">${success} ${error}</label>
			<form action="saveuser" method="post">
				<div class="form-sub-w3">
					<input type="text" name="name" placeholder="User Name"
						required="required" pattern="[a-zA-Z]{3,30}"
						title="Name only consist of alphabet. minimum name length 3 maximum name length 30"
						style="border-bottom-color: white; margin-bottom: 15px;" />
					<div class="icon-w3">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-sub-w3">
					<input type="email" name="email" placeholder="Email Id"
						required="required"
						pattern="[a-zA-Z0-9_]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
						style="border-bottom-color: white; margin-bottom: 15px;" />
					<div class="icon-w3">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password" placeholder="Password"
						required="required" style="margin-bottom: 15px;"
						onkeyup='check();' id="password"
						pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
						title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15." />
					<div class="icon-w3">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					</div>
					<input type="checkbox" onclick="showpassword()"> <label
						style="color: white; font-size: 12px;">Show Password</label>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="confirmpassword"
						placeholder="Confirm Password" required="required"
						style="margin-bottom: 15px;" id="confirm_password"
						onkeyup='check();'
						pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
						title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15." />
					<div class="icon-w3">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					</div>
					<input type="checkbox" onclick="showconfirmpassword()"> <label
						style="color: white; font-size: 12px;">Show Password</label><br>
				</div>
				<span id="message" style="font-size: 12px"></span>
				<div class="form-sub-w3">
					<input type="text" name="address" placeholder="City Name"
						required="required" maxlength="70" min="5"
						title="Address minimum length 5 maximum length 70."
						style="border-bottom-color: white; margin-bottom: 15px;" />
					<div class="icon-w3">
						<i class="fa fa-building-o" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-sub-w3">
					<input type="text" name="contact" placeholder="Contact Number"
						required="required"
						style="border-bottom-color: white; margin-bottom: 15px;"
						id="contact" placeholder="Enter your active contact number..."
						pattern="[5-9]{1}[0-9]{9}$"
						title="Contact Number must contain 10 character" />
					<div class="icon-w3">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
				</div>

				<p class="p-bottom-w3ls">
					Already Have an Account ?<a class="w3_play_icon1" href="login">
						Login here</a>
				</p>
				<p class="p-bottom-w3ls">
					Having Trouble in Login or Sign Up ? Contact<a class="w3_play_icon1"
						href="mailto:getit.858889@gmail.com"> Customer Support</a>
				</p>
				<div class="submit-w3l">
					<input type="submit" value="Sign up" id="Button">
				</div>
			</form>
		</div>
		<!--//form-ends-here-->
	</div>
	<!---728x90--->
</body>
</html>