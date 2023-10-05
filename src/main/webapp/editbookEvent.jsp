<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%> 
 <%@page import="bookevent.DBconnection"%>
<%Class.forName("com.mysql.jdbc.Driver");%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit your booked event</title>
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

<form action="MyServlet" method="post">
<%  
        String eid = request.getParameter("id");
        int id = Integer.parseInt(eid);
		Connection con = DBconnection.getConn();
		Statement statement = con.createStatement();
		String sql = "Select * from eventbooking where id='"+id+"'"; 
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
	%>
    <h1 align="center">Edit Doctor</h1>
    <h1>
      <a href="bookeventlist.jsp">List of Booked Events</a>
    </h1>
     <div class="main">
    <br>
    <label class="lable">Booked Event ID</label>
        <input type="hidden" name="id" class="contain" value="<%= id %>" >
        <br><br>
      <label class="lable">Event Type(Wedding/Birthday Party/Musical Show/Magic Show)</label>
        <input type="text" name="ename" class="contain" value="<%= rs.getString(2)%>" required>
     <br><br>
       <label class="lable"> Date </label>
        <input type="date" name="edate" class="contain"  value="<%= rs.getString(3)%>" required>
    <br><br>
        <label class="lable"> Venue(Shangri-la/Galadari/Cinnamon Grand/Kingsbury)</label>
        <input type="text" name="venue" class="contain"  value="<%= rs.getString(4)%>" required>
     <br><br>
        <label class="lable"> No of Guests</label>
        <input type="text" name="guests" class="contain"  value="<%= rs.getString(5)%>" required>
      <br><br>
        <label class="lable"> Food Type(Veg/Non-Veg)</label>
        <input type="text" name="efood" class="contain"  value="<%= rs.getString(6)%>" required>
      <br><br>
        <label class="lable"> Meal Type(Breakfast,Lunch,Tea & Snacks,Dinner)</label>
        <input type="text" name="emeal"  class="contain"  value="<%= rs.getString(7)%>" required>
      <br><br>
        <label class="lable"> Equipment(DJ/Stage/Mike & Speaker)</label>
        <input type="text" name="equp" class="contain"  value="<%= rs.getString(8)%>" required>
      <br><br>
        
        <input type="submit" name="Action" value="Edit" id="book">
  </form>
   </div>
   <%}
	%>
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