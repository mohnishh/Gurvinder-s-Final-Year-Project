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

<title>Register admin!</title>
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
	<div id="content">
		<form method="post" action="registrationAdmin.jsp">
            <center>
            <table border="0" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><p1>Creating an ADMIN account</p1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><p>First Name:</p></td>
                        <td><input type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Last Name:</p></td>
                        <td><input type="text" name="lname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Email Address:</p></td>
                        <td><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>User Name:</p></td>
                        <td><input type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Password:</p></td>
                        <td><input type="password" name="pass" value="" required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
	</div>
</div>

</body>
</html>
