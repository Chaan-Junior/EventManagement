<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Event</title>
<link rel="stylesheet" href="AvailableEvent.css">
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
			
			<li<%if(request.getRequestURI().endsWith("AvailableEvent.jsp")){%> 
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
    
    <br>
<h1>Find Some of Our Available Events</h1>
<div class="seperator"></div>     
            <div class="Event">
                <div class="Etitle">
                    <h2>1.Wedding</h2>
                    <p>Venue: Cinnamon Grand</p>
                </div>

                <div class="Econtent">
                    <br><br>
                    <h3>Oak Room</h3>
                    <p>This elegant space has brought a diverse array of events to life. A separate entrance and the flexibility to be partitioned into four sections makes the Oak Room even more special.
                    Capacity - 500. You can book your catering and stage arrangements</p><br>
                </div>
                <div class="Epics">
                	<br>
                    <img src="images/wedcin.jpg" alt="cinnamon-wed">
                </div>

                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
            </div>
            
             <div class="Event">
                <div class="Etitle">
                    <h2>2.Birthday Party</h2>
                    <p>Venue: Galadari </p>
                </div>
                <div class="Econtent">
                    <br><br>
                    <h3>Anthurium</h3>
                    <p>As people today are opting for more private and smaller Birthday Parties, this will be the ideal venue.
                    The spacious ballroom offers a seating capacity of 150. you can also book your catering, stage arrangements and needed Equipments with us. </p>
                </div>
                <div class="Epics">
                    <img src="images/bdaygal.jpg" alt="bday-Gal">
                </div>
                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
            </div>
            
            <div class="Event">
                <div class="Etitle">
                    <h2>3.Magic Show</h2>
                    <p>Venue: Shangri-la</p>
                </div>
                <div class="Econtent">
                    <br><br>
                    <h3>Lotus</h3>
                    <p>This is a very popular Show venue. It has the capacity of 500 seats. 
                    You can book more required equipments with us. We have the parking facilities as well.</p>
                </div>
                <div class="Epics">
                    <img src="images/magic.jpeg" alt="magic">
                </div>
                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
            </div>
            
            <div class="Event">
                <div class="Etitle">
                    <h2>4.Musical Show</h2>
                    <p>Venue: Kingsbury</p>
                </div>
                <div class="Econtent">
                    <br><br>
                    <h3>Cedar</h3>
                    <p>
                    The cedar hall's easily customisable space allows it to host a variety of events with up to 750 attendees.
                    Elegantly finished, ideal venue for events with elegance.
                    You can book more required equipments with us. We have the parking facilities as well.</p>
                </div>
                <div class="Epics">
                    <img src="images/musical.jpg" alt="musical">
                </div>
                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
            </div>
            
            <div class="Event">
                <div class="Etitle">
                    <h2>5.Wedding</h2>
                    <p>Venue: Galadari</p>
                </div>
                <div class="Econtent">
                    <br><br>
                    <h3>Bougainvillea</h3>
                    <p>Another very popular wedding venue is the Bougainvillea Ballroom.
                    The spacious ballroom offers a seating capacity of 300 and is ideal for those who wish to celebrate a private wedding reception.</p>
                </div>
                <div class="Epics">
                    <img src="images/galwed.jpeg" alt="wedgal">
                </div>
                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
            </div>
            
            <div class="Event">
                <div class="Etitle">
                    <h2>6.Birthday Party</h2>
                    <p>Venue: Cinnamon Grand</p>
                </div>
                <div class="Econtent">
                    <br><br>
                    <h3>Ivy</h3>
                    <p>The Ivy is a subtle, elegant space that is ideally suited for Wedding and Birthday Party. 
                    Capacity - 100. This wonderful venue offers the added delight of a private garden that adds charm to every event hosted here.</p>
                </div>
                <div class="Epics">
                    <img src="images/bdaycin.jpeg" alt="cinnamon-bday">
                </div>
                <div class="button">
                    <a href="bookevent.jsp"><button id="btn1">Book</button></a>
                </div>
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