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
</head>
<body>
<body>
	<div class="main-agileits">
		<!--form-stars-here-->
		<div class="form-w3-agile" style="margin-top: 100px;">
			<h2>Get-it login</h2>
			<label style="color: yellow; font-size: 14px;">${pending}
				${error}${already }${verifyed }</label>
			<form action="customerlogin" method="post">
				<div class="form-sub-w3">
					<input type="email" name="email" placeholder="Email Id"
						required="required" style="border-bottom-color: white;" />
					<div class="icon-w3">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password" placeholder="Password"
						required="required" />
					<div class="icon-w3">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					</div>
				</div>
				<p class="p-bottom-w3ls">
					Forgot Password ?<a class="w3_play_icon1" href="forgotpassword">
						Click Here to Recover Account</a>
				</p>
				<p class="p-bottom-w3ls">
					Not Having Account ?<a class="w3_play_icon1" href="signup">
						Register Here</a>
				</p>
				<p class="p-bottom-w3ls">
					Having Trouble in Login or Signup ? Contact<a class="w3_play_icon1"
						href="mailto:getit.858889@gmail.com"> Customer Support</a>
				</p>
				<div class="submit-w3l">
					<input type="submit" value="Login">
				</div>
			</form>
		</div>
		<!--//form-ends-here-->
	</div>
	<!---728x90--->
</body>
</html>