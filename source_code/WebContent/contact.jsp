<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="stylesheet.css">

<title>Contact us!</title>
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
		
		<p> Whether you want to ask for information, suggest improvements, have a problem, or just feel like telling us about your experience of Hobbs Dry Cleaners & Launderette, we want to hear from you:
		</p>
		
		<form method="post" action="mailto:anrishkaur@gmail.com?subject=Contact from Hobbs website!" id="emailForm">
   		<table cellpadding="10" cellspacing="10" border="0" width="700px">
      		<tr>
         		<th colspan="4"><p><b>Contact Hobbs</b></p></th>
      		</tr>
      		<tr>
         		<td width="200" align="right"><p>First Name:</p></td>
         		<td colspan="3"><input class="left" type="text" name="fname" style="width: 400px;"></td>
      		</tr>
      		<tr>
         		<td width="200" align="right"><p>Last Name:</p></td>
         		<td colspan="3"><input class="left" type="text" name="lname" style="width: 400px;"></td>
      		</tr>
      		<tr>
         		<td width="200" align="right"><p>Email Address:</p></td>
         		<td colspan="3"><input class="left" type="text" name="lname" style="width: 400px;"></td>
      		</tr>
      		<tr>
         		<td width="200" align="right"><p>Telephone Number:</p></td>
         		<td colspan="3"><input class="left" type="text" name="lname" style="width: 400px;"></td>
      		</tr>
      		<tr>
         		<td width="200" align="right"><p>How did you find us?</p></td>
         		<td>Search Engine: <input type="checkbox" name="sengine" style="border: 0px"></td>
         		<td>Word of Mouth: <input type="checkbox" name="word" style="border: 0px"></td>
         		<td>Other: <input type="checkbox" name="other" style="border: 0px"></td>
      		</tr>
      		<tr>
         		<td valign="top" width="200" align="right"><p>Enter your Comments:</p></td>
         		<td colspan="3"><textarea class="left" name="comments" style="width: 400px; height: 200px;"></textarea></td>
      		</tr>
      		<tr>
         		<td colspan="4" align="right"><input type="submit" value="Submit" style="margin-right: 20px; width: 60px;"><input type="reset" value="Reset" style="margin-right: 20px; width: 60px;"></td>
      		</tr>
   		</table>
		</form>
		
		<iframe style="width:800px;height:300px;padding:0;border:solid 1px black" src="http://data.mapchannels.com/locationmap/100/map.htm?mx=-0.9799&my=51.455414&mz=15&mt=2&sx=-0.980387&sy=51.455381&sh=133.6&sp=-13.8&sz=1&dm=2&mw=250&tc=2&mn=3" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"></iframe>  		</head>
  		</head>
  		<br>
  		<body>
    		<div id="map_canvas"></div>
    		<form action="http://maps.google.com/maps" method="get" target="_blank">
   		<label for="saddr"><p>Enter your location</p></label>
   		<input type="text" name="saddr" />
   		<input type="hidden" name="daddr" value="Hobbs Dry Cleaners, Oxford Road, Reading" />
   		<input type="submit" value="Get directions" />
	</div>
</div>

</body>
</html>