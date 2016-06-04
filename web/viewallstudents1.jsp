<%-- 
    Document   : viewallstudent
    Created on : May 31, 2012, 7:25:12 PM
    Author     : Administrator
--%>


<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>View all Students</title>
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

<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">
<tr><td>
<center>
    <h2 align=center><font color="" face=verdana> VIEW ALL STUDENTS </font> </h2>

<table border=1  width=1182 rules="all">
    <tr height=50   >
                    <td bgcolor="e9e9e9" align=center><font color="" face=verdana>STUDENT ID </font></td>
                    <td bgcolor="e9e9e9" align=center><font color="" face=verdana>NAME </font>   </td> 
                    <td bgcolor="e9e9e9" align=center><font color="" face=verdana>REGULATION </font> </td> 
                     
                    <td bgcolor="e9e9e9" align=center><font color="" face=verdana>GENDER  </font></td>
                    
                    </tr>
    
                <%

            try {

               String regulation = request.getParameter("regulation");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from student1 where regulation='" + regulation + "'");
                
                while (rs.next()) {
                  String  id = rs.getString(1);
                String stname = rs.getString(2);
                  regulation = rs.getString(3);
             
                  String gender = rs.getString(4);
                

                        %>

       

                    
                    
                    <tr height=40 >
                    <td bgcolor=""><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=id%> </font> </td> 

                    <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=stname%> </font> </td> 

                    
                    <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=regulation%> </font> </td> 

                   
                     <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=gender%> </font></td> 
                    
                    </tr>

        

                        <%

                                        }

                        %>
                    </table>
</center>
</td></tr>

<tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>

</table>


        <%

            } catch (Exception ne) {
                out.println(ne);
            }

        %>


    </body>
</html>