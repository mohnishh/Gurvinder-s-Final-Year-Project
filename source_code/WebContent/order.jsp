 
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
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<table>

<%
  			String cdate = request.getParameter("collection");
			String ctime = request.getParameter("ctime");
			String ddate = request.getParameter("delivery");
			String dtime = request.getParameter("dtime");
  			session.setAttribute("cdate", cdate);
  			session.setAttribute("ctime", ctime);
  			session.setAttribute("ddate", ddate);
  			session.setAttribute("dtime", dtime);
  			%>
  			<p>
<%
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
  			<%} %>
  			
<h1>Laundry</h1>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="TDHQEKMFYVRQY">
<table>
<tr><td><input type="hidden" name="on0" value="Service Wash Dry Fold">Service Wash Dry Fold</td></tr><tr><td><select name="os0">
	<option value="Small  (per 2 kg)">Small  (per 2 kg) £7.49 GBP</option>
	<option value="Medium (per 6 kg)">Medium (per 6 kg) £8.99 GBP</option>
	<option value="Option (per 10 kg)">Option (per 10 kg) £9.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<h2>Household Items</h2>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="6PDAZRD6L5GLW">
<table>
<tr><td><input type="hidden" name="on0" value="Throw-over">Throw-over</td></tr><tr><td><select name="os0">
	<option value="Small">Small £7.99 GBP</option>
	<option value="Medium">Medium £8.99 GBP</option>
	<option value="Large">Large £9.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="XMWLPEXMYMKY8">
<table>
<tr><td><input type="hidden" name="on0" value="Bedspread">Bedspread</td></tr><tr><td><select name="os0">
	<option value="Plain">Plain £8.99 GBP</option>
	<option value="Heavy or With Valence">Heavy or With Valence £9.49 GBP</option>
	<option value="Quilted">Quilted £14.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="ACVLUG7WJ7MES">
<table>
<tr><td><input type="hidden" name="on0" value="Mattress Protector">Mattress Protector</td></tr><tr><td><select name="os0">
	<option value="Single">Single £5.99 GBP</option>
	<option value="Double">Double £6.99 GBP</option>
	<option value="King-size">King-size £7.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>



<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="PQMLU4XXM5SPE">
<table>
<tr><td><input type="hidden" name="on0" value="Blanket">Blanket</td></tr><tr><td><select name="os0">
	<option value="Single">Single £8.49 GBP</option>
	<option value="Double">Double £9.49 GBP</option>
	<option value="King-size">King-size £10.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="S8NERWPEY5ARY">
<table>
<tr><td><input type="hidden" name="on0" value="Duvet Cover">Duvet Cover</td></tr><tr><td><select name="os0">
	<option value="Single">Single £9.49 GBP</option>
	<option value="Double">Double £10.49 GBP</option>
	<option value="King-size">King-size £11.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="E8YCWUJQ5BKZN">
<table>
<tr><td><input type="hidden" name="on0" value="Sofa Cover">Sofa Cover</td></tr><tr><td><select name="os0">
	<option value="Two Seater Cover">Two Seater Cover £11.99 GBP</option>
	<option value="Three Seater Cover">Three Seater Cover £12.99 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Chair Cover</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="JNNFL8DQ5WVA2">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="974LKRBN462Q4">
<table>
<tr><td><input type="hidden" name="on0" value="Cushion Cover">Cushion Cover</td></tr><tr><td><select name="os0">
	<option value="Plain">Plain £3.99 GBP</option>
	<option value="Quilted">Quilted £4.99 GBP</option>
	<option value="Heavy/ Fur Fabric">Heavy/ Fur Fabric £5.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Sheet Item</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="SDP3MWW7YHMQ6">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="24FXYTTK7BY44">
<table>
<tr><td><input type="hidden" name="on0" value="Towels">Towels</td></tr><tr><td><select name="os0">
	<option value="Medium (per 6 kg)">Medium (per 6 kg) £7.99 GBP</option>
	<option value="Medium (per 10 kg)">Medium (per 10 kg) £10.49 GBP</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="GBP">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Pillow Case</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="AFLQ336QTS95J">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

<p>Sleeping Bag</p>
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="Q7P3VCVGWPEVA">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_SM.gif" border="0" name="submit" alt="PayPal  The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

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





</html>











	



<div class="r"></div>
<div class="clear"></div>
</div><div id="boxes">
<div id="moneycheck" class="window">
<h3 class="p15b">Hobbs Services Order</h3>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td style="text-align:centre; padding-right:10px;"><ul>


</script>
<div class="mcontent">
<!-- prods start -->
<table border="0" cellpadding="0" cellspacing="0" class="prodtable">
<tr>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('11','1');"><img src="images/shirtss.jpg" style="background-image:url(/products/sm/S00_greenbean-extract-svetol.jpg);" class="prods m5b" alt="Shirts1" title="Shirts"/></a><br/><a href="javascript:goView('L00_greenbean-extract-svetol.jpg')"><img src="images/icn-zoom.png" alt="Large Image"class="middle m5r">Large Image</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('11','1');">Shirts3</a></h3>
<div>Pure green coffee bean extract with svetol, 50%chlorogenic acid 800mg  per re...<p></p><div class="prodprice"><span>Low as</span>$18.25</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('11','1');">Details &raquo;</a>
<div class="m10t"> 
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="6FPKLQA3UD8FY">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal, The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
	<option value="1 Bottle">1 Bottle $18.99 USD</option>
	<option value="2 Bottles">2 Bottles $36.99 USD</option>
	<option value="3 Bottles">3 Bottles $54.99 USD</option>
	<option value="4 Bottles">4 Bottles $72.99 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('10','1');"><img src="images/spacer.gif" style="background-image:url(/products/sm/S47_greenbean-extract-gca.jpg);" class="prods m5b" alt="Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA" title="Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA"/></a><br/><a href="javascript:goView('L47_greenbean-extract-gca.jpg')"><img src="images/icn-zoom.png" alt="Large View"class="middle m5r">Large View</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('10','1');">Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA</a></h3>
<div>Studies have shown that green coffee bean extract, containing the key ingredi...<p></p><div class="prodprice"><span>Low as</span>$17.25</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('10','1');">Details &raquo;</a>
<div class="m10t">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">   
<input type="hidden" name="hosted_button_id" value="A7B8XMW2MZU3Q">
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
	<option value="1 Bottle">1 Bottle $17.99 USD</option>
	<option value="2 Bottles">2 Bottles $34.99 USD</option>
	<option value="3 Bottles">3 Bottles $51.99 USD</option>
	<option value="4 Bottles">4 Bottles $68.99 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('7','1');"><img src="images/spacer.gif" style="background-image:url(/products/sm/S36_greenbean-extract.jpg);" class="prods m5b" alt="100% Pure Green Coffee Bean Extract" title="100% Pure Green Coffee Bean Extract"/></a><br/><a href="javascript:goView('L36_greenbean-extract.jpg')"><img src="images/icn-zoom.png" alt="Large View"class="middle m5r">Large View</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('7','1');">100% Pure Green Coffee Bean Extract</a></h3>
<div>100% Pure Green Coffee Bean Extract Dr. Oz 60 Vegetable Pills 800 mg ea

60...<p></p><div class="prodprice"><span>Low as</span>$16.25</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('7','1');">Details &raquo;</a>
<div class="m10t">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="ADLWEHAV7ET2S">
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
	<option value="1 Bottle">1 Bottle $16.99 USD</option>
	<option value="2 Bottles">2 Bottles $32.99 USD</option>
	<option value="3 Bottles">3 Bottles $48.99 USD</option>
	<option value="4 Bottles">4 Bottles $64.99 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
</tr>

<tr>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('8','1');"><img src="images/spacer.gif" style="background-image:url(/products/sm/S39_raspberryketone.jpg);" class="prods m5b" alt="Raspberries Ketone" title="Raspberries Ketone"/></a><br/><a href="javascript:goView('L39_raspberryketone.jpg')"><img src="images/icn-zoom.png" alt="Large View"class="middle m5r">Large View</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('8','1');">Raspberries Ketone</a></h3>
<div>Potent Fat Burner Derived from the aroma of Red Raspberries. This Potent Form...<p></p><div class="prodprice"><span>Low as</span>$14.50</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('8','1');">Details &raquo;</a>
<div class="m10t">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="BA3WQM95Q586A">
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
<option value="1 Bottle">1 Bottle $14.99 USD</option>
<option value="2 Bottles">2 Bottles $28.99 USD</option>
<option value="3 Bottles">3 Bottles $43.99 USD</option>
<option value="4 Bottles">4 Bottles $57.99 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('1','1');"><img src="images/spacer.gif" style="background-image:url(/products/sm/demograss.jpg);" class="prods m5b" alt="DEMOGRASS" title="DEMOGRASS"/></a><br/><a href="javascript:goView('demograss.jpg')"><img src="images/icn-zoom.png" alt="Large View"class="middle m5r">Large View</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('1','1');">DEMOGRASS</a></h3>
<div><title>Lose Weight Without diets!</title>

With Demograss you can lose weig...<p></p><div class="prodprice"><span>Low as</span>$22.50</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('1','1');">Details &raquo;</a>
<div class="m10t">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="EV5K38JN5P6VS">
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
	<option value="1 Box">1 Box $25.99 USD</option>
	<option value="2 Boxes">2 Boxes $48.00 USD</option>
	<option value="4 Boxes">4 Boxes $95.00 USD</option>
	<option value="6 Boxes">6 Boxes $138.00 USD</option>
	<option value="10 Boxes">10 Boxes $225.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
<td class="a"><div class="prodimg"><a href="javascript:return false;" onclick="prodDetail('2','1');"><img src="images/spacer.gif" style="background-image:url(/products/sm/demograssplus.jpg);" class="prods m5b" alt="DEMOGRASS PLUS" title="DEMOGRASS PLUS"/></a><br/><a href="javascript:goView('demograssplus.jpg')"><img src="images/icn-zoom.png" alt="Large View"class="middle m5r">Large View</p></a></div>
<div class="prodrt"><h3><a href="javascript:return false;" onclick="prodDetail('2','1');">DEMOGRASS PLUS</a></h3>
<div><b>Demograss plus same as demograss original but with maximum strength.</b>
...<p></p><div class="prodprice"><span>Low as</span>$29.00</div><div class="p10b"><img src="images/freeship.png" alt="Free Shipping within 48 States"/></div><a href="javascript:return false;" onclick="prodDetail('2','1');">Details &raquo;</a>
<div class="m10t">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="BX2KZX8RBHQES">
<table>
<tr><td><input type="hidden" name="on0" value="Prices">Prices</td></tr><tr><td><select name="os0">
	<option value="1 Box">1 Box $30.99 USD</option>
	<option value="2 Boxes">2 Boxes $60.50 USD</option>
	<option value="4 Boxes">4 Boxes $122.00 USD</option>
	<option value="6 Boxes">6 Boxes $181.00 USD</option>
	<option value="10 Boxes">10 Boxes $290.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</div>
</div>
</div><div class="clear"></div>
</td>
</tr>








</body>
</html>



