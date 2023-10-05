<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>AdminProfile</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="styleRegister.css">
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

<!-- Body -->
		<div id ="details">
	
	<c:forEach var = "admin" items="${adminDetails}">
	
	<%--System internally calls the getID methods here--%> 
	<%--Assigning values into variables--%>

	<c:set var="id" value="${admin.adminID}"/>
	<c:set var="name" value="${admin.adminName}"/>
	<c:set var="role" value="${admin.adminRole}"/>
	<c:set var="username" value="${admin.userName}"/>
	<c:set var="password" value="${admin.password}"/>
	
	<img alt="" src="images/profile.png">
	
		<h1 style="text-decoration:underline;"> ADMIN PROFILE DETAILS </h1> <br> <br>

		AdminID   : <input type="text" name="aId" value="${admin.adminID}" readonly> <br><br>
		
		AdminName : <input type="text" name="aName" value="${admin.adminName}" readonly> <br><br>
		
		AdminRole : <input type="text" name="aRole" value="${admin.adminRole}" readonly> <br><br>
		
		Username  : <input type="text" name="aUsername" value="${admin.userName}" readonly> <br><br>
		
		Password  : <input type="text" name="aPassword" value="${admin.password}" readonly> <br><br>

	</c:forEach>
	
	<%--To which page it should Go--%>
	<c:url value="adminUpdate.jsp" var="adminUpdate">
	
		<%--What values should be taken to the Directed Page--%>
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="role" value="${role}"></c:param>
		<c:param name="username" value="${username}"></c:param>
		<c:param name="password" value="${password}"></c:param>
		
	</c:url>
	
	<a href="${adminUpdate}">
	<button name="update" id="btn7"> Update Admin Details </button>
	</a> <br> <br>
	
	
	<c:url value="deleteAdmin.jsp" var="adminDelete">
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="role" value="${role}"></c:param>
		<c:param name="username" value="${username}"></c:param>
		<c:param name="password" value="${password}"></c:param>
	</c:url>
	
	<a href="${adminDelete}">
	<button name="delete" id="btn6"> Delete Admin Profile </button>
	</a>
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