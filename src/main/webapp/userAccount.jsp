<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">
<link rel="stylesheet" href="styleRegister.css">
<link rel="stylesheet" href="indexStyle.css">
</head>

<body>
<%

	if(session.getAttribute("userLoginName")== null){
		response.sendRedirect("demo.jsp");
	}
%>

<!-- Page Header -->
<header>
		<a class="logo" href="demo.jsp"><img src="images/logoicon.png" alt="logo"></a>
<!-- Navigation Bar -->
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

<table class="showTable">
<tr>
	<td> <img src="images/rez.png"> </td>
	
	<td>
		<div id ="details">

	<h1 style="text-decoration:underline;"> 
	<%
	String userLoginName = (String) session.getAttribute("userLoginName");
	out.println("WELCOME : " + userLoginName);
	%>	
	</h1>  
	
	<br> <br>
	
	
	<c:forEach var = "user" items="${userDetails}">
	
	<%--System internally calls the getID methods here--%> 
	<%--Assigning values into variables--%>

	<c:set var="id" value="${user.userID}"/>
	<c:set var="name" value="${user.userName}"/>
	<c:set var="email" value="${user.userEmail}"/>
	<c:set var="phone" value="${user.userPhone}"/>
	<c:set var="username" value="${user.userLoginName}"/>
	<c:set var="password" value="${user.userLoginPassword}"/>


	<label for="Id">
		UserID &nbsp;&nbsp;: <input type="text" name="rId" value="${user.userID}" readonly> 
	</label> <br><br>

	<label for="Name">
		Name &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="rName" value="${user.userName}" readonly> 
	</label> <br><br>
	
	<label for="Email">
		Email  &nbsp;&nbsp;&nbsp;: <input type="text" name="rEmail" value="${user.userEmail}" readonly> 
	</label> <br><br>
	
	<label for="Phone">
		Phone  &nbsp;&nbsp;&nbsp;: <input type="text" name="rPhone" value="${user.userPhone}" readonly> 
	</label> <br><br>
	
	<label for="Username">
		Username : <input type="text" name="rUserName" value="${user.userLoginName}" readonly> 
	</label> <br><br>
	
	<label for="Password">
		Password : <input type="text" name="rPassword" value="${user.userLoginPassword}" readonly> 
	</label> <br><br>

	</c:forEach>
	
	<%--To which page it should Go--%>
	<c:url value="userUpdate.jsp" var="userUpdate">
	
		<%--What values should be taken to the Directed Page--%>
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="email" value="${email}"></c:param>
		<c:param name="phone" value="${phone}"></c:param>
		<c:param name="username" value="${username}"></c:param>
		<c:param name="password" value="${password}"></c:param>
		
	</c:url>
	
	<a href="${userUpdate}">
	<input type="button1" name="update" value="UPDATE PROFILE">
	</a> <br> <br>
	
	
	<c:url value="userDelete.jsp" var="userDelete">
		<c:param name="id" value="${id}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="email" value="${email}"></c:param>
		<c:param name="phone" value="${phone}"></c:param>
		<c:param name="username" value="${username}"></c:param>
		<c:param name="password" value="${password}"></c:param>
	</c:url>
	
	<a href="${userDelete}">
	<input type="button2" name="delete" value="DELETE PROFILE">
	</a>
	</div>
	</td>
	

	
</tr>


</table>
<!-- Page Body -->

	
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