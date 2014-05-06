<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">

// if user is not logged in, or not an admin, redirect to index page
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "") || (session.getAttribute("admin") == null) || (session.getAttribute("admin") == "")) {
    	response.sendRedirect("index.jsp");
    }
%>
<link rel="stylesheet" href="stylesheet.css">

<title>Login successful!</title>
</head>
<body>
<div id="headerbackground">
	<div id="header">
		<jsp:include page="header.jsp" />
	</div>
</div>
<div id="banner">
	<img src="images/banner.jpg">
</div>
<div id="contentbackground">
	<div id="content" align="center">
		<p><b>Admin login Page</b></p>
		<p> Welcome to the admin panel.</p>

		<a href='regAdmin.jsp'><p>---Create staff account---</p></a>
		<a href='serviceAdd.jsp'><p>---Add service---</p></a>
		<a href='serviceUpdate.jsp'><p>---Update service---</p></a>
		<a href='serviceDelete.jsp'><p>---Delete service---</p></a>
	</div>
</div>

</body>
</html>




