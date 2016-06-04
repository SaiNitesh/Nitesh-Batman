<%-- 
    Document   : viewstudent1
    Created on : May 31, 2012, 7:21:27 PM
    Author     : Administrator
--%>


<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>VIEW STUDENT FORM</title>
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

<table border=1 align=center width=1182 height=500 bgcolor="" rules="all">
<tr><td>

                <%

            try {

               String id = request.getParameter("id");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from student1 where id='" + id + "'");

                rs.next();

                 id = rs.getString(1);
                String stname = rs.getString(2);
                String regulation = rs.getString(3);
               
                
                String gender = rs.getString(4);
                


                %>

                <h4 align=center><font color="" face=verdana size="5"> STUDENT PROFILE </font> </h4>

                <table align=center bgcolor="">

                    <tr><td bgcolor=""><font color="" face=verdana>STUDENT ID: </font>  </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=id%> </font> </td> </tr>

                    <tr><td bgcolor=""><font color="" face=verdana>NAME: </font>  </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=stname%> </font> </td> </tr>

                    
                    <tr><td bgcolor=""><font color="" face=verdana>REGULATION: </font> </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=regulation%> </font> </td> </tr>

                    
                    <tr><td bgcolor=""><font color="" face=verdana>GENDER:  </font>     </td>   <td bgcolosr="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=gender%> </font></td> </tr>

                    



</table>

        </td></tr>
    </table>


               


    <%

            } catch (Exception ne) {
                out.println(ne);
            }

    %>

 

</body>
</html>
