<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<form method="post" action="login.jsp">
            <center>
            <table align="right" border="0" width="100%" cellpadding="0" cellspacing="0">
                
               
                    <tr>
                        <td><p>User Name:</p></td>
                        <td><input type="text" name="uname" value="" required /></td>
                        <td><p>Password:</p></td>
                        <td><input type="password" name="pass" value="" required /></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                    <tr>
                        <td colspan="5" align="right"><psmall>Not a member? Click <a href="reg.jsp">here</a> to register.</psmall></td>
                    </tr>
              
            </table>
            
            </center>
        </form>
<%} else {
%>



		<center>
            <table align="right" border="0" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="5" align="right"><pnav>Logged in as <b><%=session.getAttribute("userid")%></b></pnav></td>
                    </tr>
                    <tr>
                    <%
                    if (session.getAttribute("admin") != null){
                    %>
                        <td colspan="5" align="right"><a href='admin.jsp'><pnav>My Account</pnav></a></td>
                    <%} else {
                    %>
                    	<td colspan="5" align="right"><a href='success.jsp'><pnav>My Account</pnav></a></td>
                    <%
                    	} 
                    %>
                    </tr>
                    <tr>
                        <td colspan="5" align="right"><a href='logout.jsp'><pnav><b>Log out</b></pnav></a></td>
                    </tr>
            </table>
       </center>







<%
    }
%>