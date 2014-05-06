<br>
<br>
<br>
<br>
<br>
<ul>
	<li><a href="contact.jsp">Contact Us</a></li>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) { %>
    	<li><a href="orderLoggedOut.jsp">Order</a></li>
<%     }
    else
    { %>
    	<li><a href="order.jsp">Order</a></li>
<%     }
%>
	
	<li><a href="priceList.jsp">Price List</a></li>
	<li><a href="index.jsp">Home</a></li>
</ul> 