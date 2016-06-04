<%-- 
    Document   : adminhome
    Created on : Jun 2, 2012, 6:19:37 PM
    Author     : Administrator
--%>

<%@ include  file="head.jsp" %>

<html>
<head><title>ADMIN HOME</title>
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
 
                <li><a href="changepassword.jsp">CHANGE PASSWORD</a></li>
		<li><a href="home.jsp">LOGOUT</a></li> 
 
 
 </ul>
 </nav>

</table>
 
<table align=center border="1" width="1182" height=400 cellspacing=0 cellpadding=0>
   <tr> 
   <td bgcolor="e9e9e9"><br>
  <h2><font color="#000000">WELCOME TO ADMIN HOME</font></h2>
<table bgcolor="#e9e9e9" align="center">
   <tr width="1182">
   <td colspan="1" align="right" valign="top" width="540" height=380><img src="pi/8_1.JPG" align="top" width="540" height="380"></td>
   
   <td width="642" height=300>
       
  <label>
  <fieldset>
         <legend><b><font color="hblue">This Is admin World</font></b></legend>
         <font color="#000000">Mission Statement<br />
  The purpose of <i><b> Marks Management system</b></i> We have an extensive Education Network.  Our college is providing Total information Reguarding our Education like.. InternalMarks,ExternalMarks....etc  .
Through this Web Site.Our College is giving Good Support For All the Students By providing These Type of Online Services.

<p><font color=black>We look forward to serving you! </font></p></font>
  
  </fieldset>
  
  </label>
  <tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>


  </td>
  </tr>
  </table>
  </td>
   				
                                </tr>
					
					

</table>

</body>
</html>
