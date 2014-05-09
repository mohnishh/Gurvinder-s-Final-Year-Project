
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page language="java" contentType="text/html" import="java.sql.*"%>

<<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="stylesheet.css">

<title>Price list!</title>
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
<form method="post">

<table border="0">
	<tr>
		<td width="200px" align="center"><p><b>Name</b></p></td>
		<td width="200px" align="center"><p><b>Description</b></p></td>
		<td width="200px" align="center"><p><b>Price</b></p></td>
		<!--td width="200px" align="center"><p><b>Image</b></p></td-->
	</tr>
<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/hobbs";
			String username="root";
			String password="Minniee";
			String query="select * from services";
			Connection conn=DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next())
			{
%>
    			<tr>
    				<td align="center"><p><%=rs.getString("sname") %></p></td>
    				<td align="center"><p><%=rs.getString("sdescription") %></p></td>
    				<td align="center"><p><%=rs.getDouble("sprice") %></p></td>
    				<!--td align="center"><p><%=rs.getBlob("simage") %></p></td-->
				</tr>
<%
			}
%>
</table>
<%
    		rs.close();
    		stmt.close();
    		conn.close();
    	}
	catch(Exception e)
	{
    	e.printStackTrace();
    }
%>

</form>
</div>
</div>




</body>
</html>




