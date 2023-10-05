<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Booked Event</title>
<link rel="stylesheet" type="text/css" href="eventbook.css" />
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="headFoot.css">
</head>
<body>
<!-- Page Header -->
	<header>
		<a class="logo" href="demo.jsp"><img src="images/logoicon.png" alt="logo"></a>
       <nav>
		<ul class="nav__links">
			<li<%if(request.getRequestURI().endsWith("demo.jsp")){%> 
			class="active-link"<%}%>>
			<a href="demo.jsp"> HOME </a> </li>
			
			<li<%if(request.getRequestURI().endsWith("events.jsp")){%> 
			class="active-link"<%}%>>
			<a href="AvailableEvent.jsp"> EVENTS </a> </li>
			
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
<h1>Delete Doctor</h1>
  <h1>
    <a href="bookeventlist.jsp">List of Booked Events</a>
  </h1>
  <form action="MyServlet" method="post">

    <lable class="lable" >Enter event ID </lable>
    <input type="text" name="id" class="contain" > 
    <input type="submit"
      value="Delete" name="Action" id="book">
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