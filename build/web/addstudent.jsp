<%-- 
    Document   : addstudent
    Created on : May 31, 2012, 4:05:10 PM
    Author     : Administrator
--%>

<%@ include  file="head.jsp" %>
<html>
<head><title>ADD FORM</title>
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

<form method="GET" name="form"  action="addstudent1.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="" frame="border" rules="all">
<tr><td>
<h3 align=center><font color="" face=verdana> STUDENT FORM </font></h3>
 
<table ALIGN=CENTER border=0 bgcolor="">
 
 
<tr><td bgcolor=""><font color="" face="verdana">STUDENT ID:</font></td> <td bgcolor=""><input type="text" name="id"></td></tr>
 
<tr><td bgcolor=""><font color="" face="verdana">NAME:  </font></td> <td bgcolor=""> <input type="text" name="stname" ></td> </tr>
 

<tr><td bgcolor=""><font color="" face="verdana">REGULATION:   </font></td> <td bgcolor=""> <input type="text" name="regulation" ></td> </tr>
 
 
<tr><td bgcolor=""><font color="" face="verdana">GENDER:       </font></td>   <td bgcolor=""> <input type="radio" name="gender" value="male"><font color="" face="verdana">Male <input type="radio" name="gender" value="female">Female</font></td> </tr>
 
 
<tr><td bgcolor="" colspan=2 align=center><input type="submit" name="s" value="submit">
 
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

