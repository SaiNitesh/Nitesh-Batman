<%-- 
    Document   : home
    Created on : Jun 2, 2012, 11:19:14 AM
    Author     : Administrator
--%>

<%@ include  file="head.jsp" %>
<html>
<head>
<title>RSNdemo project</title>
<link href="css.css" rel="stylesheet" type="text/css">
    <SCRIPT Language="JavaScript" Purpose="Dom" Runat="Browser" SRC="validate.js"></SCRIPT>

</head>
<body>



<table id="main" width="1182" height="20" border="" align="center" cellspacing=0 cellpadding=0 bgcolor="#303030" bordercolor="black">
<nav id="menu-wrap">     
 <ul id="menu">
     
<li><a href="home.jsp">HOME </a> </li>
  
 
 
<li><a href="aboutdept.jsp">ABOUT DEPARTMENT  </a></li>
 
 <!--<li><a href="gallery.jsp">GALLARY </a></li>-->
 
 
 
<li><a href="contactus.jsp" > CONTACT US </a></li>

 
 </ul>
 
 </nav>
 
 

</table>


<table align=center border=1 width=1182 height=400 cellspacing=0 cellpadding=0 bgcolor="#c9c9c9" bordercolor="">


<tr>


<td align=center width="1182" height="400">
    <table bgcolor="#ffffff" width=1132 height=350 align=center cellspacing=0 cellpadding=0 ><tr><td align=center>

<form name="form1" method="get" action="home1.jsp"  onsubmit="return validate(this)">

<font  face="verdana" color=#1f2f3f>USERNAME </font>  &nbsp; <input type="text" name="username" maxlength=15 size="35" >  <br> <br>

<font  face="verdana" color=#1f2f3f> PASSWORD </font> <input type="password" name="password" size="35">    <br><br>

<input type="submit" value="login">

   </form>
</td></tr><tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot></table>
</td>
</tr>
   
   </table>
   
   </body>
   </html>
   
