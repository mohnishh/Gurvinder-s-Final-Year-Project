<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="stylesheet.css">

		<script type="text/javascript"> 
            function displayForm(c){ 
                if(c.value == "regularCustomer"){ 
                    document.getElementById("form1").style.visibility='visible'; 
                    document.getElementById("form2").style.visibility='hidden'; 
                } 
                else if(c.value =="businessCustomer"){ 
                    document.getElementById("form1").style.visibility='hidden'; 
                    document.getElementById("form2").style.visibility='visible'; 
                } 
                else{ 
                } 
             
            }         
        </script>
        
<title>Registration!</title>
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
		<div align="center">
				<tr>
                    <td><psmall>Come-In Customer</psmall><input type="radio" name="branch" value="regularCustomer" onclick="displayForm(this)"></td>
                    <td><psmall>Business Customer</psmall><input type="radio" name="branch" value="businessCustomer" onclick="displayForm(this)"></td>
                </tr>
		</div>
				
                
        <div id="regularForm" align="left" >
        <form style="visibility:hidden" id="form1" method="post" action="registrationCustomer.jsp">
            <right>
            <table border="0" width="100%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><p1>COME-IN CUSTOMER</p1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><p>First Name:</p></td>
                        <td><input type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Last Name:</p></td>
                        <td><input type="text" name="lname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Email Address:</p></td>
                        <td><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>User Name:</p></td>
                        <td><input type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Password:</p></td>
                        <td><input type="password" name="pass" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Contact Number:</p></td>
                        <td><input type="number" name="phone" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Address:</p></td>
                        <td><input type="text" name="address" value="" required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p>Already a member? Click <a href="index.jsp">here</a> to log in.</p></td>
                    </tr>
                </tbody>
            </table>
            </right>
        </form>
        </div>
        
        <div id="businessForm" align="right" >
        <form style="visibility:hidden" id="form2" method="post" action="registrationBusiness.jsp">
            <right>
            <table border="0" width="100%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><p1>BUSINESS CUSTOMER</p1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><p>Business Name:</p></td>
                        <td><input type="text" name="bname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Address:</p></td>
                        <td><input type="text" name="address" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Email Address:</p></td>
                        <td><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>User Name:</p></td>
                        <td><input type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Password:</p></td>
                        <td><input type="password" name="pass" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Contact Number:</p></td>
                        <td><input type="number" name="phone" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Collection Address:</p></td>
                        <td><input type="text" name="cAddress" value="" required/></td>
                    </tr>
                    <tr>
                        <td><p>Delivery Address:</p></td>
                        <td><input type="text" name="dAddress" value="" required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p>Already a member? Click <a href="index.jsp">here</a> to log in.</p></td>
                    </tr>
                </tbody>
            </table>
            </right>
        </form>
        </div>
    </div>
</div>
</body>
</html>