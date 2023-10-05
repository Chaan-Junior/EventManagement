<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="indexStyle.css">
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
    
<!-- Main Image Part -->

    <table border='1'>
    	<tr>
    		<td > <img alt="Main Image" src="images/admin.png"> </td>
			<td> <h1 style="text-decoration:underline;"> ADMIN PAGE </h1> <br> <br> <br> <br>
			<h3 style="text-decoration:underline;"> ADD EVENTS </h3> <br>
				 <a href="addevent.jsp"><button id="btn6"> CLICK TO ADD </button></a> <br> <br> <br>
				 <h3 style="text-decoration:underline;"> ADD ADMIN </h3> <br>
				 <a href="addAdmin.jsp"><button id="btn7"> CLICK TO ADD </button></a> <br> <br>
    		</td>
    		

    	</tr>
    </table>
    
	<table></table>

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