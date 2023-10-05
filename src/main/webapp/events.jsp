<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Events</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="indexStyle.css">
</head>
<body>
<%

	if(session.getAttribute("userLoginName")== null){
		response.sendRedirect("demo.jsp");
	}
%>
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

			<li<%if(request.getRequestURI().endsWith("userAccount.jsp")){%> 
			class="active-link"<%}%>>
			<a href="userAccount.jsp"> PROFILE </a> </li>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
				<li> <a href="logout"> LOGOUT </a> </li> <%}
			%>
			
		</ul>
	</nav>
</header>

<h1> Welcome ${userLoginName} </h1>
	<ul>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
		<li>Apple</li>
	</ul>

</body>
</html>