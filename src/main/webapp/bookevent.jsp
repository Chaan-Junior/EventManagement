<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book your event</title>
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
<form name="bookForm" action="MyServlet" method="post"  onsubmit="return validateForm()">
    <br> <br>
    <h1>KEEP CALM AND BOOK YOUR EVENT WITH US</h1>
    <h1>
      <a href="bookeventlist.jsp">List of Booked Events</a>
    </h1>
    <br><br>
    <div class="main">
      <label class="lable">Event Type(Wedding/Birthday Party/Musical Show/Magic Show)</label>
        <input type="text" name="ename" class="contain" required>
     <br><br>
       <label class="lable"> Date </label>
        <input type="date" name="edate" class="contain" required>
    <br><br>
        <label class="lable"> Venue(Shangri-la/Galadari/Cinnamon Grand/Kingsbury)</label>
        <input type="text" name="venue" class="contain" required>
     <br><br>
        <label class="lable"> No of Guests</label>
        <input type="text" name="guests" class="contain" required>
      <br><br>
        <label class="lable"> Food Type(Veg/Non-Veg)</label>
        <input type="text" name="efood" class="contain" required>
      <br><br>
        <label class="lable"> Meal Type(Breakfast,Lunch,Tea & Snacks,Dinner)</label>
        <input type="text" name="emeal"  class="contain" required>
      <br><br>
        <label class="lable"> Equipment(DJ/Stage/Mike & Speaker)</label>
        <input type="text" name="equp" class="contain" required>
      <br><br>
        
        <input type="submit" name="Action" value="Add Event" id="book">
      
 </div>
  </form>
  <br> <br>
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