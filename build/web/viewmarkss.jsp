<%-- 
    Document   : viewmarks
    Created on : Jun 19, 2012, 7:42:38 PM
    Author     : Administrator
--%>

<%@ include  file="head.jsp" %>

<html>
<head><title>VIEW  MARKS FORM</title>
<SCRIPT Language="JavaScript" Purpose="Dom" Runat="Browser" SRC="validate.js"></SCRIPT>
</head>
<body>
<table id="main" width="1182" height="20" border="1" align="center" cellspacing=0 cellpadding=0 bgcolor="#303030">
 <nav id="menu-wrap">    
 <ul id="menu">
     
<li><a href="studenthome.jsp"> HOME  </a> </li>
  
 
 
<li><a href="aboutdepts.jsp"> DEPARTMENT  </a></li>
 
 <li><a href="viewmarkss.jsp"> STUDENT MARKS </a></li>
  
<li><a href="aboutuss.jsp"> ABOUT US  </a> </li>

<li><a href="contactuss.jsp" > CONTACT US </a></li>

<li><a  href="home.jsp">LOGOUT </a></li>
 
 </ul>
 
</nav> 
</table>    
<form method="GET" name="form"  action="viewmarkss1.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">
<tr><td>
 <h3 align=center><font color="" face=verdana>VIEW  STUDENT MARKS</font> </h3><br>
            
         <table border=0 align=center  bgcolor="">

         <tr><td bgcolor=""><font color="" face="verdana"> ENTER ID:   </font></td> <td bgcolor=""> <input type="text" name="id" ></td> </tr>
 
         <tr><td bgcolor=""><font color="" face="verdana"> ENTER SEMISTER:</font></td>  <td bgcolor=""><select name="ys"> <option>1-1</option>
                                                                                           <option>1-2</option>
                                                                                           <option>2-1</option>
                                                                                   <option>2-2</option>
                                                                                   <option>3-1</option>
                                                                                   <option>3-2</option>
                                                                                   <option>4-1</option>
                                                                       <option>4-2</option></select> </td></tr>    
  

    
    
    <tr><td bgcolor="" colspan=2 align=center><input type="submit" name="s" value="submit">
</table>
</td>
</tr>
<tfoot>
    <tr><td><a href="myportals.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>


</table>
 </form>

</body>

</html>
