<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Delete Page</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="styleRegister.css">
<link rel="stylesheet" href="indexStyle.css">
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
			
			<li<%if(request.getRequestURI().endsWith("userDelete.jsp")){%> 
			class="active-link"<%}%>>
			<a href="userDelete.jsp"> PROFILE </a> </li>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
				<li> <a href="logout"> LOGOUT </a> </li> <%}
			%>
			
		</ul>
       </nav>
    </header>

<!-- Page Body -->
	<div id="details">
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");	
	%>
	
<h1 style="text-decoration:underline;"> DELETE USER PROFILE DETAILS </h1> <br> <br>

<form action = "delete" method="post">
	
	<label for="ID">													<!-- For add Java to code to JSP -->
		UserID &nbsp;&nbsp;: <input type="text" name="uid" value = "<%= id %>" readonly> 
	</label> <br><br>
	
	<label for="Name">													
		Name &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="uname" value = "<%= name %>" readonly> 
	</label> <br><br>
	
	<label for="Email">
		Email  &nbsp;&nbsp;&nbsp;: <input type="text" name="uEmail" value = "<%= email %>" readonly> 
	</label> <br><br>
	
	<label for="Phone">
		Phone  &nbsp;&nbsp;&nbsp;: <input type="text" name="uPhone" value = "<%= phone %>" readonly> 
	</label> <br><br>
	
	<label for="Username">
		Username : <input type="text" name="uName" value = "<%= username %>" readonly> 
	</label> <br><br>

	<input type="checkbox" required> Do You Need to Delete Your Account	<br> <br> 

	<label for="Submit">
		<input type="submit" name="submit" value="CONFIRM DELETE">
	</label> <br> <br> <br> <br> <br> <br> 

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