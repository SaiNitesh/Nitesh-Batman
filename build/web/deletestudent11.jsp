<%-- 
    Document   : deletestudent
    Created on : May 31, 2012, 5:15:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include  file="head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head><title>STUDENT DELETION FORM</title>
<SCRIPT Language="JavaScript" Purpose="Dom" Runat="Browser" SRC="validate.js"></SCRIPT>
</head>
<body>
<table id="main" width="1182" height="20" border="1" align="center" cellspacing=0 cellpadding=0>
 <nav id="menu-wrap">    
	<ul id="menu">

     
<li><a href="adminhome.jsp">Home</a></li>

		<li>
			<a href="">STUDENT</a>
			<ul>
				<li>
					<a href="addstudent.jsp">ADD STUDENT</a>
								
				</li>
				<li>
					<a href="editstudent.jsp">UPDATE STUDENT</a>

									
				</li>

				<li>
					<a href="">VIEW STUDENT</a>
					<ul>
						<li><a href="viewstudent.jsp">EACH STUDENT</a></li>
						
                                                <li><a href="viewallstudents.jsp">ALL STUDENTS</a></li>

					</ul>				
				</li>
                                <li>
					<a href="">DELETE STUDENT</a>
					<ul>
						<li><a href="deletestudent.jsp">SEMISTER </a></li>
						<li><a href="deletestudent11.jsp">DEPARTMENT </a></li>
						
						

					</ul>				
				</li>
				
			</ul>
		</li>
		<li>
			<a href="">MARKS</a>
			<ul>

				<li>
					<a href="addmarks.jsp">ADD MARKS</a>
									
				</li>
				<li>
					<a href="editMarks.jsp.jsp">UPDATE MARKS</a>
					

						

									
				</li>
                                
                                <li>
					<a href="">VIEW MARKS</a>
					<ul>
						<li><a href="viewmarks.jsp">EACH ONE</a></li>
						
                                                <li><a href="viewallmarks.jsp">ALL</a></li>

					</ul>				
				</li>
                                
				

			</ul>		
		</li>
                <li>
			<a href="">SUBJECT</a>
			<ul>
		<li><a href="addsubject.jsp">ADD SUBJECT</a></li>
                <li><a href="editsub.jsp">UPDATE SUBJECT</a></li>
                </ul>
                </li>
                <li><a href="deletebatch.jsp"> DELETE BATCH</a></li> 
 
                
		<li><a href="home.jsp">LOGOUT</a></li> 
 
 
 </ul>
 </nav>

</table>
    
<form method="GET" name="form"  action="deletestudent12.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">

<tr><td>
    <h3 align=center><font color="" face="verdana" size="">DELETE STUDENT FROM DEPARTMENT<small>(Discontinued)</small></font></h3><br>
        <table ALIGN=center border=0 bgcolor=>
 
<tr align=center><td align=left><font color="" face="verdana"> ENTER ID:   </font></td><td align=left> <input type="text" name="id"  size="10" ></td></tr>
 
 <tr align=center><td valign=top><font color="" face="verdana">SELECT YEAR/SEM:</font> </td>  <td align=right> <select name="year1"> <option>1-1</option>
                                                                                           <option>1-2</option>
                                                                                           <option>2-1</option>
                                                                                   <option>2-2</option>
                                                                                   <option>3-1</option>
                                                                                   <option>3-2</option>
                                                                                   <option>4-1</option>
                                                                       <option>4-2</option></select>(select the last semi- <br> ster he/she studied) </td></tr>    
   
<tr align=center><td bgcolor="" colspan=2 align=center><input type="submit" name="s" value="submit">
 
<input type="reset" value="Reset"></td></tr>



</table>
</td></tr>
<tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>


</table>

</form>
    
    </body>
    </html>
