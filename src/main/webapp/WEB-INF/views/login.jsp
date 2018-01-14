<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/login.css" rel="stylesheet" type="text/css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript"></script> -->
<%-- <script src="<c:url value='login.js'/>" type="text/javascript"></script> --%>
</head>
<body>
<div class="col-md-4 col-md-offset-6 centered">
<form id="loginForm" method="post" action="/login">
  
  <div class="imgcontainer">
   <!--  <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
  </div>

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username">

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password">

    <button type="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
    <div id="result"></div>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  <div class="container" style="background-color:#f1f1f1">
    <p>${error}</p>
  </div>
  <div class="container" style="background-color:#f1f1f1">
    <p>${logout}</p>
  </div>
 
</form>
 </div>
</body>
</html>