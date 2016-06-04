<%-- 
    Document   : viewstudent
    Created on : May 31, 2012, 7:09:07 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include  file="head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head><title>VIEW STUDENT FORM</title>
<SCRIPT Language="JavaScript" Purpose="Dom" Runat="Browser" SRC="validate.js"></SCRIPT>
</head>
<body>
    <table id="main" width="1182" height="20" border="0" align="center" cellspacing=0 cellpadding=0 bgcolor="">
    <tr width="778" bgcolor="">
 <td>
 <ul id="menu">
     
<li><a href="facultyhome.jsp"> HOME  </a> </li>
  
 <li><a href="aboutdeptf.jsp"> DEPARTMENT  </a> </li>
 
<li><a >STUDENT DETAILS </a>
    <ul>
        <li><a href="viewstudentf.jsp">STUDENT</a></li>
        <li><a href="viewallstudentsf.jsp">ALL STUDENTS</a></li>
                          
      </ul>                      
</li>
 
<li><a >STUDENT MARKS  </a>
                <ul>
		      <li><a href="viewmarksf.jsp">VIEW </a></li>

			
                 </ul>
</li> 
 
 
<li><a href="aboutusf.jsp" > ABOUT US </a></li>

<li><a  href="home.jsp">LOGOUT  </a></li>
 
 </ul>
 </td>
</tr>

</table>
<form method="GET" name="form"  action="viewstudentf1.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">
<tr><td>
        <h3 align=center><font color="" face=verdana>VIEW EACH STUDENT</font> </h3><br>
                    <center> <font color="" face=verdana> ENTER STUDENT ID: </font> <input type="text" name="id"> <br><br>

    <input type="submit" value="submit" ></center> </td> </tr>
<tfoot>
    <tr><td><a href="myportalf.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>

</table>

 </form>

</body>

</html>
