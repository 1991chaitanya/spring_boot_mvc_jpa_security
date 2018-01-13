
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="./resources/css/login2.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./resources/js/login.js"></script>
</head>
</head>
<body>
	<div class="login-box">
		<div class="login-logo">
			<a
				href="http://ichef-1.bbci.co.uk/news/660/cpsprodpb/17A21/production/_85310869_85310700.jpg"><img
				src="https://www.google.com/images/icons/material/product/1x/analytics_64dp.png"
				alt="My Ad Cubes"></a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>
			<form id="loginForm" method="post" commandName="user"
				action="<c:url value='j_spring_security_check' />">
				<div class="form-group has-feedback">
					<input type="text" name="username" value="" placeholder="Username"
						class="form-control" id="login" maxlength="80" size="30">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					<span><font color="red"></font></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" value=""
						placeholder="Password" class="form-control" id="password"
						size="30"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span> <span><font
						color="red"></font></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label>
								<div class="icheckbox_square-blue" aria-checked="false"
									aria-disabled="false" style="position: relative;">
									<input type="checkbox" name="remember" value="" id="remember"
										style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);">
									<ins class="iCheck-helper"
										style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
								</div> <label for="remember" class="">Remember me</label>
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<input type="submit" name="submit" value="Sign In" id="submit"
							class="btn btn-primary btn-block btn-flat">
					</div>
					<!-- /.col -->
				</div>
			</form>
			<a href="http://myadcubes.com/user/auth/forgot_password">I forgot
				my password</a><br> <a
				href="http://myadcubes.com/user/auth/register/" class="text-center">Register
				a new membership</a>
		</div>
		<!-- /.login-box-body -->
		<div class="container" style="background-color: #f1f1f1">
			<p>${error}</p>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<p>${logout}</p>
		</div>
	</div>
</body>