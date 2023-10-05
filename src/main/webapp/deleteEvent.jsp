<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Event</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="indexStyle.css">
</head>

<body bgcolor="#00FFFF">
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
  <h1>Delete Event</h1>
  <h1>
    <a href="eventlist.jsp">List of Events</a>
  </h1>
  <form action="EventServlet" method="post">
    Enter ID<input type="text" name="eventID"> <input type="submit"
      value="Delete" name="Action">
  </form>

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