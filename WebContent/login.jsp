<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    	<%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="stylesheet.css">

<title>Welcome!</title>
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
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
            "root", "Minniee"); 
    Statement st = con.createStatement();
    // admin login
    ResultSet rs;
    rs = st.executeQuery("select * from admin where uname='" + userid + "' and pass='" + pwd + "' and admin='1'");
    if (rs.next()) {
    	session.setAttribute("userid", userid);
    	session.setAttribute("admin", 1);
    	response.sendRedirect("admin.jsp");
    }
    
    // business customer login
    rs = st.executeQuery("select * from businessCustomer where uname='" + userid + "' and pass='" + pwd + "' and business='1'");
    if (rs.next()) {
    	session.setAttribute("userid", userid);
    	session.setAttribute("business", 1);
    	response.sendRedirect("success.jsp");
    }

    // regular customer login
    rs = st.executeQuery("select * from customer where uname='" + userid + "' and pass='" + pwd + "' and admin='0'" + "' and business=0'");
    if (rs.next()) { 
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("<p>You have entered an invalid username or password. Please click <a href='index.jsp'>here</a> to try again.</p>");
    }
%>
</div>
</div>
</body>
</html>
