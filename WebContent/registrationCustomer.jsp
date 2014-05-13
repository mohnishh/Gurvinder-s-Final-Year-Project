<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
            "root", "Minniee");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into customer(first_name, last_name, email, uname, pass, phone, address, regdate, admin, business) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','" + phone + "','" + address + "', CURDATE(), '0', '0')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("You have sucessfully registered! Click"+"<a href='index.jsp'>here</a> to log in.");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

