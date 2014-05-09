<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="stylesheet.css">

<title>Add a service!</title>
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
		<%
    		String sname = request.getParameter("sname");    
    		String sdescription = request.getParameter("sdescription");
    		String sprice = request.getParameter("sprice");
    		String simage = request.getParameter("simage");
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
            		"root", "Minniee");
    		Statement st = con.createStatement();
    		//ResultSet rs;
    		int i = st.executeUpdate("insert into services(sname, sdescription, sprice, simage) values ('" + sname + "','" + sdescription + "','" + sprice + "','" + "NULL" + "')");
    		if (i > 0) {
        	//session.setAttribute("userid", user);
        %>
        	<p>Congratulations, your services has been added successfully!</p>
        <%
       		// out.print("You have sucessfully registered! Click"+"<a href='index.jsp'>here</a> to log in.");
    		} else {
    	%>
        		<p>Error! Your service has not been added!</p>
        <%
    		}
		%>
	</div>
</div>
</body>
</html>
