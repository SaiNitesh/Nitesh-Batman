<%-- 
    Document   : editstudent1
    Created on : May 31, 2012, 6:42:12 PM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>

<html>
<head><title>EDIT STUDENT FORM </title>
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
  
<form method="get" action="editstudent2.jsp" onsubmit="return validate(this)">
<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">
<tr><td>
    
 <%@ page import="java.sql.*,java.io.*" %>

<%


String ys = request.getParameter("ys");
HttpSession hs=request.getSession(true);
hs.setAttribute("year",ys);

HttpSession s=request.getSession();
String id=request.getParameter("id");
s.setAttribute("id",id);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:Odbc:Database","","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student1 where id='"+id+"'");

rs.next();

id=rs.getString(1);
String stname=rs.getString(2);
String regulation=rs.getString(3);
String gender=rs.getString(4);


%>

<h2 align=center><font color="" face=verdana> PROFILE </font> </h2>

<table align=center bgcolor="">

<tr><td bgcolor=""><font color="" face=verdana>STUDENT ID:  </font> </td>   <td bgcolor=""> <input type="text" name="id" value="<%=id%>" readonly> </td> </tr>

<tr><td bgcolor=""><font color="" face=verdana>NAME:  </font> </td>   <td bgcolor="" align=center > <font color="" face=verdana><input type="text" name="stname" value="<%=stname%>"></font> </td> </tr>


<tr><td bgcolor=""><font color="" face=verdana>REGULATION: </font> </td>   <td bgcolor="" align=center><font color="" face=verdana> <input type="text" name="regulation" value="<%=regulation%>"> </font> </td> </tr>


<tr><td bgcolor=""><font color="" face=verdana>GENDER:    </font>   </td>   <td bgcolor="" align=center> <font color="" face=verdana><input type="text" name="gender" value="<%=gender%>"></font> </td> </tr>




<tr><td bgcolor="" align=center colspan=2><input type="submit" name="s" value="UPDATE" ></td></tr>


</table>

</td></tr>

<tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>


</table>





</form>
</body>
</html>