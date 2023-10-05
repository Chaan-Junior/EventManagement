<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="indexStyle.css">
</head>

<body>
<div id="details">

<!-- Page Header -->
<header>
		<a class="logo" href="adminHome.jsp"><img src="images/logoicon.png" alt="logo"></a>
<!-- Navigation Bar -->
       <nav>
		<ul class="nav__links">
			<li<%if(request.getRequestURI().endsWith("adminHome.jsp")){%> 
			class="active-link"<%}%>>
			<a href="adminHome.jsp"> HOME </a> </li>
			
			<li<%if(request.getRequestURI().endsWith("ProfileAdmin.jsp")){%> 
			class="active-link"<%}%>>
			<a href="ProfileAdmin.jsp"> ADMIN DETAILS  </a> </li>

			<li<%if(request.getRequestURI().endsWith("eventlist.jsp")){%> 
			class="active-link"<%}%>>
			<a href="eventlist.jsp"> EVENTS LIST </a> </li>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
				<li> <a href="logout"> LOGOUT </a> </li> <%}
			%>
		</ul>
       </nav>
    </header>

<!-- Page Body -->
<table class="loginTable">
	<tr>
		<td> <h1 style="text-decoration:underline;"> ADMIN LOGIN INTERFACE </h1> 
		<br> <br> 
		<!-- User Login Form -->
			<form action = "adminLogin" method = "post">	
				<div id="details">	
				
					<label for="Username">
					Username : <input type="text" name="aID" placeholder="Enter your Username">
					</label> <br><br>
					
					<label for="Password">
					Password : <input type="password" name="aPass" placeholder="Enter your Password"> 
					</label> <br><br>
					
					<label for="Submit">
					<input id="loginSubmit" type="submit" name="submit" value="LOGIN" > 
					</label> <br> <br>
					
				</div>
			</form>
		</td>
	</tr>
</table>

<br> <br> <br>

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

</div>
</body>
</html>