<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Event</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="headFoot.css">
</head>
<body>
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
 <form action="EventServlet" method="post">
 
    <h1 align="center">Edit Event</h1>
    <h1>
      <a href="eventlist.jsp">List of Events</a>
    </h1>
    <table>
      <tr>
        <td>Event ID</td>
        <td><input type="text" name="eventID"></td>
      </tr>
     <tr>
        <td>Event Type</td>
        <td><input type="text" name="eventType" ></td>
      </tr>
      <tr>
        <td>Venue</td>
        <td><input type="text" name="venue"></td>
      </tr>
      <tr>
        <td>Hall Capacity</td>
        <td><input type="text" name="hallCapacity" ></td>
      </tr>
      <tr>
        <td>Catering Type</td>
        <td><input type="text" name="cateringType" ></td>
      </tr>
      <tr>
        <td>Meal Type</td>
        <td><input type="text" name="mealType" ></td>
      </tr>
      <tr>
        <td>Event Facilities</td>
        <td><input type="text" name="eventFacilities" ></td>
      </tr>
      <tr>
        <td></td>
        <td align="center"><input type="submit" name="Action"
          value="Edit"></td>
      </tr>
    </table>
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