<%-- 
    Document   : changepassword
    Created on : Jan 18, 2012, 2:15:04 PM
    Author     : Rama
--%>
<%@ include  file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="DBConnection.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0034)http://sivani.vvl.co.in/Login.aspx -->
<html>
<head><title>PASSWORD FORM </title>
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

     <form method="post" action="changepassword.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="">
<tr><td>
        <center><br><br><h4><font color="black" face=verdana size="5">CHANGE PASSWORD</font></h4><br>
       <table border="0">
            <tr>
                <td><font color="" face=verdana>
                    USER NAME:
                </font></td>
                <td><input type="text" name="username" onclick="flash()"></td>
            </tr>
            <tr>
                <td><font color="" face=verdana>
                  OLD PASSWORD:
                </font></td>
                <td><input type="password" name="oldpassword" ></td>
            </tr>
            <tr>
                <td><font color="" face=verdana>
                   NEW PASSWORD:
                </font></td>
                <td><input type="password" name="newpassword"></td>
            </tr>
       </table><br>
        <input type="submit" value="Change" class="Enter">&nbsp;&nbsp
            <input type="reset" value="cancel" class="Enter"></center>

    <% try{if(request.getParameter("username")!=null){
    String uname = request.getParameter("username").trim();
    String opass = request.getParameter("oldpassword").trim();
    String npass = request.getParameter("newpassword").trim();



        PreparedStatement ps = con.prepareStatement("update users set password=?" +
        " where username=? and password=?");
        ps.setString(1, npass);
        ps.setString(2, uname);
        ps.setString(3, opass);
        int n = ps.executeUpdate();
        if(n > 0)
        {
    %>
     <center><b><div id="flash">Successfully Changed your password</div></b></center>
  <%}
     else   {%>

            <center><b><div id="flash">Sorry...! Please check the details, you entered</div></b><br></center>>
               <%  }
        }
    }
    catch(Exception e)
            {
        }%>
       </td> </tr>
<tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>


</table>
 </form>

</body>

</html>