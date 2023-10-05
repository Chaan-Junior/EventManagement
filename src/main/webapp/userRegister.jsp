<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="styleRegister.css">
<link rel="stylesheet" href="indexStyle.css">

<script type="text/javascript" src="script.js"></script>
</head>

<body>

<%
	if(session.getAttribute("userLoginName")!= null){
		response.sendRedirect("userAccount.jsp");
	}
%>

<!-- Page Header -->
<header>
		<a class="logo" href="demo.jsp"><img src="images/logoicon.png" alt="logo"></a>
<!-- Navigation Bar -->
       <nav>
		<ul class="nav__links">
			<li<%if(request.getRequestURI().endsWith("demo.jsp")){%> 
			class="active-link"<%}%>>
			<a href="demo.jsp"> HOME </a> </li>
			
			<li<%if(request.getRequestURI().endsWith("events.jsp")){%> 
			class="active-link"<%}%>>
			<a href="events.jsp"> EVENTS </a> </li>

			<li<%if(request.getRequestURI().endsWith("userRegister.jsp")){%> 
			class="active-link"<%}%>>
			<a href="userRegister.jsp"> PROFILE </a> </li>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
				<li> <a href="logout"> LOGOUT </a> </li> <%}
			%>
		</ul>
       </nav>
    </header>

<!-- Validating Using Javascript -->
<form name="myForm" action = "register" method="post" onsubmit="return validateForm()">
<!-- User Register Form -->
<div id="details">
<table class="registerTable">
<tr>
	<td>
		<h1 style="text-decoration:underline;">USER REGISTRATION</h1> <br> <br>
	
	<label for="Name">
		Name &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="rName" required> 
	</label> <br><br>
	
	<label for="Address">
		Address &nbsp;: <input type="text" name="rAddress"required> 
	</label> <br><br>
	
	<label for="Email">
		Email  &nbsp;&nbsp;&nbsp;: <input type="text" name="rEmail"required> 
	</label> <br><br>

	<label for="Phone">
		Phone  &nbsp;&nbsp;&nbsp;: <input type="text" name="rPhone"required> 
	</label> <br><br>
	
	<label for="Username">
		Username : <input type="text" name="rUserName"required> 
	</label> <br><br>
	
	<label for="Password">
		Password : <input type="password" name="rPassword"required> 
	</label> <br><br>
	
	<input type="checkbox" required> Agree for Terms and Conditons <br> <br>
	
	<label for="Submit">
		<input type="submit" name="submit" value="SUBMIT">
	</label> <br>
	
	</td>
	
	<td> <img src="images/register.png"> </td>

</tr>
	
</table>
</div>
</form>	
<br><br>
<!-- Page Footer -->
<footer>
   		 <h4 id="copy"> COPYRIGHT @ EVENT PLUS 2023 </h4>
            <div id="bottom">
                <ul class="bottom__links">
                    <li><a href="#">CONTACT</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">ABOUT</a></li>
                </ul>
            </div>
</footer>

</body>
</html>