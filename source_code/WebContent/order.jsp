 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page language="java" contentType="text/html" import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">

// if user is not logged in, redirect to index page
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("index.jsp");
    }
%>
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


<%
  			String cdate = request.getParameter("cdate");
			String ctime = request.getParameter("ctime");
			String ddate = request.getParameter("ddate");
			String dtime = request.getParameter("dtime");
  			session.setAttribute("cdate", cdate);
  			session.setAttribute("ctime", ctime);
  			session.setAttribute("ddate", ddate);
  			session.setAttribute("dtime", dtime);
  			Class.forName("com.mysql.jdbc.Driver");
  		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hobbs",
  		            "root", "Minniee");
  		    Statement st = con.createStatement();
  		    //ResultSet rs;
  		    int i = st.executeUpdate("insert into sessionHolder(cDate, cTime, dDate, dTime, sysDate) values ('" + cdate + "','" + ctime + "','" + ddate + "','" + dtime + "', CURDATE() )");
  		    if (i > 0) {
  		    	session.setAttribute("cdate", cdate);
  	  			session.setAttribute("ctime", ctime);
  	  			session.setAttribute("ddate", ddate);
  	  			session.setAttribute("dtime", dtime);
  		        //session.setAttribute("userid", user);
  		        //response.sendRedirect("order.jsp");
  		       // out.print("You have sucessfully registered! Click"+"<a href='index.jsp'>here</a> to log in.");
  		    } else {
  		        response.sendRedirect("success.jsp");
  		    }
  			%>
  			<p>
<%-- <%
  			if ((session.getAttribute("cdate") == null) || (session.getAttribute("cdate") == "")) {
  			%>
  			No collection date.
  			<%}else{ %>
  			Collection date set
  			<%} %>
  			<p>
  			<%
  			if ((session.getAttribute("ctime") == null) || (session.getAttribute("ctime") == "")) {
  			%>
  			No collection time.
  			<%}else{ %>
  			Collection time set
  			<%} %>
  			<p>
  			<%
  			if ((session.getAttribute("ddate") == null) || (session.getAttribute("ddate") == "")) {
  			%>
  			No delivery date.
  			<%}else{ %>
  			Delivery date set
  			<%} %>
  			<p>
  			<%
  			if ((session.getAttribute("dtime") == null) || (session.getAttribute("dtime") == "")) {
  			%>
  			No delivery time.
  			<%}else{ %>
  			Delivery time set
  			<%} %> --%>

<h1>Book Your Service Order Now</h1>

</div>

<table cellpadding="0" cellspacing="0" border="0">
<tr><td style="text-align:centre; padding-right:10px;"><ul>

<!-- prods start -->
<table border="0" cellpadding="0" cellspacing="0" class="prodtable">

<h1>Laundry</h1>
<h2>Household Items</h2>

<td>
<img src="images/laundrybasket.jpg" alt="laundry" title="Laundry"/>
	<h3>Service Wash, Dry & Fold</h3>
	<p>We offer service washes, and also fully finished (ironed) laundry service.</p>
	<div> 
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="TDHQEKMFYVRQY">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Service Wash Dry Fold">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Small  (per 2 kg)">Small  (per 2 kg) £7.49 GBP</option>
							<option value="Medium (per 6 kg)">Medium (per 6 kg) £8.99 GBP</option>
							<option value="Option (per 10 kg)">Option (per 10 kg) £9.99 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/bedspread.jpg" alt="Bedspread"/>
	<h3>Bedspread</h3>
	<p>Plain, heavy or with valence, quilted bedspread, we provide service on all.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">   
			<input type="hidden" name="hosted_button_id" value="XMWLPEXMYMKY8">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Bedspread">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Plain">Plain £8.99 GBP</option>
							<option value="Heavy or With Valence">Heavy or With Valence £9.49 GBP</option>
							<option value="Quilted">Quilted £14.49 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/throwover.jpg" alt="Throw-overs"/>
	<h3>Throw-over</h3>
	<p> We provide service from small to large. We will dry, iron and beautifully fold your throw-over.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">   
			<input type="hidden" name="hosted_button_id" value="6PDAZRD6L5GLW">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Throw-over">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Small">Small £7.99 GBP</option>
							<option value="Medium">Medium £8.99 GBP</option>
							<option value="Large">Large £9.99 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/blanket.jpg" alt="Blanket"/>
	<h3>Blanket</h3>
	<p>Blankets are serviced on all styles and sizes, for use in the stable or for turnout.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">   
			<input type="hidden" name="hosted_button_id" value="PQMLU4XXM5SPE">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Blanket">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Single">Single £8.49 GBP</option>
							<option value="Double">Double £9.49 GBP</option>
							<option value="King-size">King-size £10.49 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>
 
<td>
<img src="images/mattress.jpg" alt="Mattress"/>
	<h3>Mattress</h3>
	<p>Use special cleaning products to get your upholstery or mattress thoroughly cleaned and smelling like new again.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="ACVLUG7WJ7MES">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Mattress Protector">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Single">Single £5.99 GBP</option>
							<option value="Double">Double £6.99 GBP</option>
							<option value="King-size">King-size £7.99 GBP</option>
						</select>
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>
</tr>

<td>
<img src="images/duvetcover.jpg" alt="Duvet Cover"/> 
	<h3>Duvet Cover</h3>
	<p>Duvet Cover washed in large drum machines, beatifully dried, ironed and folded.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="S8NERWPEY5ARY">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Duvet Cover">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Single">Single £9.49 GBP</option>
							<option value="Double">Double £10.49 GBP</option>
							<option value="King-size">King-size £11.99 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/sofacover.jpg" alt="Sofa Cover"/>
	<h3>Sofa Cover</h3>
	<p>Cleaning removable sofa covers, getting rid of all sort of stains or marks.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="E8YCWUJQ5BKZN">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Price">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Two Seater Cover">Two Seater Cover £11.99 GBP</option>
							<option value="Three Seater Cover">Three Seater Cover £12.99 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/chaircover.jpg" alt="Chair Cover"/>
	<h3>Chair Cover</h3>
	<p>Cleaning removable chair covers, getting rid of all sort of stains or marks.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="JNNFL8DQ5WVA2">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Price">Price: £8.49 GBP
					</td>
					<td>
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/sheet.jpg" alt=""/>
	<h3>Sheet</h3>
	<p>Sheets are washed deeply, go through steam-powered ironers, dried, pressed and folded.</p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">   
			<input type="hidden" name="hosted_button_id" value="PQMLU4XXM5SPE">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Sheet">Price:
					</td>
					<td>
						<select name="os0">
							<option value="Single">Single £8.49 GBP</option>
							<option value="Double">Double £9.49 GBP</option>
							<option value="King-size">King-size £10.49 GBP</option>
						</select> 
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>

<td>
<img src="images/pillowcase.jpg" alt="Pillow Cover"/>
	<h3>Pillow Cover</h3>
	<p>Good value , good size deeply cleaned, ironed and folded perfectly. </p>
	<div>
		<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_s-xclick">   
			<input type="hidden" name="hosted_button_id" value="AFLQ336QTS95J">
			<table>
				<tr>
					<td>
						<input type="hidden" name="on0" value="Pillow Cover">Price: £1.49 GBP
					</td>
				</tr>
			</table>
			<input type="hidden" name="currency_code" value="GBP">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</td>
</tr>




<!-- <p>Sleeping Bag</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="Q7P3VCVGWPEVA">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>-->

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="F27KZ5F45N7NN">
<table>
<tr><td><input type="hidden" name="on0" value="Rug">Rug</td></tr><tr><td><select name="os0">
	<option value="Small">Small £6.99 GBP</option>
	<option value="Medium">Medium £9.99 GBP</option>
	<option value="Large">Large £11.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Sheep Skin</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="8MAHL8D7S5UYL">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="EZDA2STVU6ZLY">
<table>
<tr><td><input type="hidden" name="on0" value="Table Cloth Cover">Table Cloth Cover</td></tr><tr><td><select name="os0">
	<option value="Small">Small £5.49 GBP</option>
	<option value="Medium">Medium £7.49 GBP</option>
	<option value="Large">Large £8.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Apron</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="ZX82XSW648CR4">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="AAMYAVE9HSP2N">
<table>
<tr><td><input type="hidden" name="on0" value="Curtain">Curtain</td></tr><tr><td><select name="os0">
	<option value="Light (per 6 kg)">Light (per 6 kg) £15.99 GBP</option>
	<option value="Medium (per 10 kg)">Medium (per 10 kg) £19.99 GBP</option>
	<option value="Heavy (over 10 kg)">Heavy (over 10 kg) £24.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<h1>Dry Cleaning</h1>

<h2>Clothing Items</h2>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="6DKRFG93XU6EJ">
<table>
<tr><td><input type="hidden" name="on0" value="Suit">Suit</td></tr><tr><td><select name="os0">
	<option value="1 Piece">1 Piece £8.49 GBP</option>
	<option value="2 Piece">2 Piece £9.99 GBP</option>
	<option value="3 Piece">3 Piece £10.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="WBVTEV8GNRX5U">
<table>
<tr><td><input type="hidden" name="on0" value="Blazor">Blazor</td></tr><tr><td><select name="os0">
	<option value="Plain/ Light/ Short Linen">Plain/ Light/ Short Linen £5.49 GBP</option>
	<option value="Heavy/ Long Linen">Heavy/ Long Linen £6.49 GBP</option>
	<option value="Corduroy/ Velvet">Corduroy/ Velvet £5.99 GBP</option>
	<option value="Quilted">Quilted £7.99 GBP</option>
	<option value="Fur Fabric">Fur Fabric £9.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Shirt</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="CGEDJBSNUNL82">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Blouse</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="5WVLB4WXTHJNN">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Tie</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="6EMEFQ5AT2QH2">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="AKMFJMVXWPJRC">
<table>
<tr><td><input type="hidden" name="on0" value="Trouser">Trouser</td></tr><tr><td><select name="os0">
	<option value="Plain/ Light/ Silk/ Linen">Plain/ Light/ Silk/ Linen £4.99 GBP</option>
	<option value="Corduroy/ Velvet">Corduroy/ Velvet £5.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Jean</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="XX8BC8DL4YWD2">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Short</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="WTHCHAPM2AAGC">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="4LEHE93M759JC">
<table>
<tr><td><input type="hidden" name="on0" value="Skirt">Skirt</td></tr><tr><td><select name="os0">
	<option value="Short Plain">Short Plain £4.49 GBP</option>
	<option value="Long Plain">Long Plain £6.49 GBP</option>
	<option value="Short Pleated">Short Pleated £5.99 GBP</option>
	<option value="Long Pleated">Long Pleated £6.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="T46MDE3QNFP42">
<table>
<tr><td><input type="hidden" name="on0" value="Dress">Dress</td></tr><tr><td><select name="os0">
	<option value="Short Plain">Short Plain £8.49 GBP</option>
	<option value="Long Plain">Long Plain £13.49 GBP</option>
	<option value="Short Pleated">Short Pleated £9.49 GBP</option>
	<option value="Long Pleated">Long Pleated £14.49 GBP</option>
	<option value="Cocktail Dress">Cocktail Dress £9.99 GBP</option>
	<option value="Evening Dress">Evening Dress £18.99 GBP</option>
	<option value="Wedding Dress">Wedding Dress £69.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Dressing Gown</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="SBS66LT6FCFEL">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="US5HAVCGV747U">
<table>
<tr><td><input type="hidden" name="on0" value="Coat">Coat</td></tr><tr><td><select name="os0">
	<option value="Short">Short £7.49 GBP</option>
	<option value="Long">Long £8.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="PCQME8LWUCM9N">
<table>
<tr><td><input type="hidden" name="on0" value="Jacket">Jacket</td></tr><tr><td><select name="os0">
	<option value="Plain/ Light/ Short Linen">Plain/ Light/ Short Linen £5.49 GBP</option>
	<option value="Heavy/ Long Linen">Heavy/ Long Linen £6.49 GBP</option>
	<option value="Corduroy/ Velvet">Corduroy/ Velvet £5.99 GBP</option>
	<option value="Denim">Denim £6.99 GBP</option>
	<option value="Quilted">Quilted £8.49 GBP</option>
	<option value="Fur Fabric">Fur Fabric £10.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Cardigan</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="BZL7X5NKM6YEQ">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Jumper</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="3EGA4EHRN4NFN">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Scarf</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="8Y92MFZFRCJRG">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Hat/ Cap</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="B6CKGE563WTS6">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<h2>Leather & Suede Items</h2>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="K7PWGZ5B32FNG">
<table>
<tr><td><input type="hidden" name="on0" value="Coat/ Jacket">Coat/ Jacket</td></tr><tr><td><select name="os0">
	<option value="Suede Coat/ Jacket">Suede Coat/ Jacket £42.49 GBP</option>
	<option value="Leather Coat/ Jacket">Leather Coat/ Jacket £44.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="NUDJC2GLQDU5U">
<table>
<tr><td><input type="hidden" name="on0" value="Trouser">Trouser</td></tr><tr><td><select name="os0">
	<option value="Suede Trouser">Suede Trouser £24.49 GBP</option>
	<option value="Leather Trouser">Leather Trouser £29.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="AEEHJVT5JAYLU">
<table>
<tr><td><input type="hidden" name="on0" value="Skirt">Skirt</td></tr><tr><td><select name="os0">
	<option value="Short Suede Skirt">Short Suede Skirt £24.49 GBP</option>
	<option value="Short Leather Skirt">Short Leather Skirt £29.49 GBP</option>
	<option value="Long Suede Skirt">Long Suede Skirt £29.49 GBP</option>
	<option value="Long Leather Skirt">Long Leather Skirt £34.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>




<h2>Ironing</h2>
<p>Shirt</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="6UNF35H2NHJJG">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Trouser</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="YDLGPB2AFJSPW">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="WUL4SH5KVY3Q8">
<table>
<tr><td><input type="hidden" name="on0" value="Mixed Ironing">Mixed Ironing</td></tr><tr><td><select name="os0">
	<option value="(per 3 kg)">(per 3 kg) £11.49 GBP</option>
	<option value="(per 6 kg)">(per 6 kg) £22.49 GBP</option>
	<option value="(per 10 kg)">(per 10 kg) £35.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<h2>Alterations</h2>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="ZWYN73K4GUQJY">
<table>
<tr><td><input type="hidden" name="on0" value="Zip">Zip</td></tr><tr><td><select name="os0">
	<option value="Trouser Zip">Trouser Zip £9.49 GBP</option>
	<option value="Dress Zip">Dress Zip £18.99 GBP</option>
	<option value="Jacket/ Coat Zip">Jacket/ Coat Zip £23.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Repair Rips & Tears</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="HWU5TQQECK9DN">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="TGUSMP5VX79L2">
<table>
<tr><td><input type="hidden" name="on0" value="Pocket">Pocket</td></tr><tr><td><select name="os0">
	<option value="Half Pocket">Half Pocket £8.99 GBP</option>
	<option value="Full Pocket">Full Pocket £12.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>



<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="TDR3TYGBX8UMS">
<table>
<tr><td><input type="hidden" name="on0" value="Patch">Patch</td></tr><tr><td><select name="os0">
	<option value="Small">Small £5.49 GBP</option>
	<option value="Large">Large £7.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="7ECE55PTJTVD8">
<table>
<tr><td><input type="hidden" name="on0" value="Button">Button</td></tr><tr><td><select name="os0">
	<option value="Button">Button £1.99 GBP</option>
	<option value="Button Holes">Button Holes £4.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="FL9SDG4WSYP52">
<table>
<tr><td><input type="hidden" name="on0" value="Trouser">Trouser</td></tr><tr><td><select name="os0">
	<option value="Shorten Trouser">Shorten Trouser £9.45 GBP</option>
	<option value="Lengthen Trouser">Lengthen Trouser £9.45 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="CMRJGPCKB7722">
<table>
<tr><td><input type="hidden" name="on0" value="Trouser">Trouser</td></tr><tr><td><select name="os0">
	<option value="Take In">Take In £12.99 GBP</option>
	<option value="Take Out">Take Out £12.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="D7RRD9XNYRK92">
<table>
<tr><td><input type="hidden" name="on0" value="Jacket">Jacket</td></tr><tr><td><select name="os0">
	<option value="Shorten Jacket Sleeve">Shorten Jacket Sleeve £12.99 GBP</option>
	<option value="Shortening Jacket">Shortening Jacket £22.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Shortening Dress</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="5M6HYTDJEBYXJ">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Shortening Curtain (per meter)</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="E8HU7EGBQ4HML">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>



</body>
</html>
