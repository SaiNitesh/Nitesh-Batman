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
<form method="GET" name="form"  action="viewmarksf1.jsp" onsubmit="return validate(this)">
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
    <tr><td><a href="myportalf.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>

</table>
 </form>

</body>

</html>
