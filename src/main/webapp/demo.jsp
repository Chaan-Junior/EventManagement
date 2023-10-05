<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="indexStyle.css">
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
    
<!-- Main Image Part -->
    <table>
    	<tr>
    		<td > <h1> ARE YOU LOOKING <br>FOR A EVENT MANAGER </h1> <br> 
    		
    			  <h2 class="secondrow"> THEN YOU ARE IN THE RIGHT PLACE <br> BOOK YOUR EVENT NOW </h2>
				  <br> <br>
				  
			<%
				if(session.getAttribute("userLoginName")== null){%> 
					<a href="userLogin.jsp" class="eBook"> <button id="btn1"><h3> LOGIN/SIGN-IN </h3> </button> </a>
					<br> <br>
					<a href="loginAdmin.jsp" class="eBook"> <button id="btn5"><h3> ADMIN LOGIN/SIGN-IN </h3> </button> </a>
    			  	<br> <br>
    			  	<a href="userRegister.jsp" class="eBook"> <button id="btn2"><h3> CREATE ACCOUNT </h3></button></a>
    			  
    			  	
    		 	<%}
			%>
			
			<%
				if(session.getAttribute("userLoginName")!= null){%> 
					<a href="AvailableEvent.jsp" class="eBook"> <button id="btn2"><h3> BOOK AN EVENT OF YOUR CHOICE </h3> </button> </a>
    			  <br> <br>
    		</td> <%}
			%>
				  
				  
    		
			<td>
      			<img alt="Main Image" src="images/re.webp" id="imgMain">
			</td>
			
    	</tr>
    </table>

    
	<!-- Extra Space Part -->    
	    <table> </table>
    
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