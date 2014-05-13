<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
            "root", "Minniee");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into admin(first_name, last_name, email, uname, pass, regdate, admin, business) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE(), '1', '0')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("regAdminSuccess.jsp");
       // out.print("You have sucessfully registered! Click"+"<a href='index.jsp'>here</a> to log in.");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

