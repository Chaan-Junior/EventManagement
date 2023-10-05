<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Update Page</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="styleRegister.css">
<link rel="stylesheet" href="indexStyle.css">
<script type="text/javascript" src="script.js"></script>
</head>

<body>

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

			<li<%if(request.getRequestURI().endsWith("userUpdate.jsp")){%> 
			class="active-link"<%}%>>
			<a href="userUpdate.jsp"> PROFILE </a> </li>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
				<li> <a href="logout"> LOGOUT </a> </li> <%}
			%>
			
		</ul>
            </nav>
    </header>

<!-- Page Body -->
<div id="details">
<h1 style="text-decoration:underline;">UPDATE USER PROFILE DETAILS</h1><br> <br>
<!-- For Jave code we use this -->
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");	
	%>

<form action = "update" method="post">
	
	<label for="ID">													<!-- For add Java to code to JSP -->
		UserID &nbsp;&nbsp;: <input type="text" name="uid" value = "<%= id %>" readonly> 
	</label> <br><br>
	
	<label for="Name">													
		Name &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="uname" value = "<%= name %>" required> 
	</label> <br><br>
	
	<label for="Email">
		Email  &nbsp;&nbsp;&nbsp;: <input type="text" name="uEmail" value = "<%= email %>" required> 
	</label> <br><br>
	
	<label for="Phone">
		Phone  &nbsp;&nbsp;&nbsp;: <input type="text" name="uPhone" value = "<%= phone %>" required> 
	</label> <br><br>
	
	<label for="Username">
		Username : <input type="text" name="uName" value = "<%= username %>" readonly> 
	</label> <br><br>
	
	<label for="Password">
		Password : <input type="text" name="uPass" value = "<%= password %>" readonly> 
	</label> <br><br>
	
	<label for="Submit">
		<input type="submit" name="submit" value="CONFIRM UPDATE">
	</label> <br> <br> <br>
	
</form> 
</div>

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