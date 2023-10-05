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
<div id="details">
<h1 style="text-decoration:underline;">UPDATE ADMIN DETAILS</h1><br> <br>
<!-- For Jave code we use this -->
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		String username = request.getParameter("username");
		String password = request.getParameter("password");	
	%>

<form action = "adminUpdate" method="post">

		ID  	 : <input type="text" name="aID" value = "<%= id %>" readonly> <br><br>

		Name 	 : <input type="text" name="aName" value = "<%= name %>" > <br><br>
	
		Role     : <input type="text" name="aRole" value = "<%= role %>" > <br><br>

		Username : <input type="text" name="aUserName" value = "<%=username %>" > <br><br>

		Password : <input type="password" name="aPassword" value = "<%= password %>" > <br><br>

		<input type="submit" name="submit" value="Confirm Admin Update">

		<br> <br> <br>
	
</form> 
</div>

<table></table> <br> 

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