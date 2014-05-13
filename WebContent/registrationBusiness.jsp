<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String bname = request.getParameter("bname");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String cAddress = request.getParameter("cAddress");
    String dAddress = request.getParameter("dAddress");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
            "root", "Minniee");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into businessCustomer(business_name, email, uname, pass, phone, cAddress, dAddress, regdate, admin, business) values ('" + bname + "','" + email + "','" + uname + "','" + pwd + "','" + phone + "','" + cAddress + "','" + dAddress + "', CURDATE(), '0', '1')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("You have sucessfully registered! Click"+"<a href='index.jsp'>here</a> to log in.");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

