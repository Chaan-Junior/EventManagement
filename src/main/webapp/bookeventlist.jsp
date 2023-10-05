<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bookevent.DBconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<form action="">
    <h1>Booked Event Management</h1>
    <h1>
      <a href="bookevent.jsp">Book new Event</a><br>
    </h1>
    <!--  All DOctor shows-->
    <h1 align="center">List of Booked Events</h1>
    <table id="event">
      <tr>
        <th>ID</th>
        <th>Event Type</th>
        <th>Date</th>
        <th>Venue</th>
        <th>No of guests</th>
        <th>Food Type</th>
        <th>Meal Plan</th>
        <th>Equipments</th>
      </tr>
      <%
        Connection con = DBconnection.getConn();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("Select * from eventbooking");
        while (resultSet.next()) {
      %>
      <tr>
        <td>
          <%
            out.print(resultSet.getInt(1));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(2));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(3));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(4));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(5));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(6));
          %>
        </td>
         <td>
          <%
            out.print(resultSet.getString(7));
          %>
        </td>
         <td>
          <%
            out.print(resultSet.getString(8));
          %>
        </td>
        <form action="MyServlet" method="post">
          <td><a value="Edit" name="Action"
            href="editbookEvent.jsp?id=<%=resultSet.getInt(1)%> ">Edit</a> <input
            type="hidden" name="j" value="<%= resultSet.getInt(1) %>">&nbsp;&nbsp;&nbsp;
            <a href="deletebookevent.jsp">Delete</a>&nbsp;&nbsp;&nbsp;</td>
      </tr>
      </form>
      <%
}
%>
    </table>
  </form>
  <br> <br> <br> 
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