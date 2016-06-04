<%-- 
    Document   : viewstudent1
    Created on : May 31, 2012, 7:21:27 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>VIEW STUDENT FORM</title>
</head>
<body>
<table id="main" width="1182" height="20" border="0" align="center" cellspacing=0 cellpadding=0 bgcolor="">
    <tr width="778" bgcolor="">
 <td>
 <ul id="menu">
     
<li><a href="facultyhome.jsp"> HOME  </a> </li>
  
 <li><a href="aboutdept.jsp"> DEPARTMENT  </a> </li>
 
<li><a >STUDENT DETAILS </a>
    <ul>
        <li><a href="viewstudentf.jsp">STUDENT</a></li>
        <li><a href="viewallstudentsf.jsp">ALL STUDENTS</a></li>
                          
      </ul>                      
</li>
 
<li><a > MARKS  </a>
                <ul>
		      <li><a href="viewmarksf.jsp">STUDENT </a></li>

			
                 </ul>
</li> 
 
 
<li><a href="aboutusf.jsp" > ABOUT US </a></li>

<li><a  href="home.jsp">LOGOUT  </a></li>
 
 </ul>
 </td>
</tr>

</table>
<table border=1 align=center width=1182 height=450 bgcolor="" rules="all">
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

                <h2 align=center><font color="" face=verdana> Student Profile </font> </h2>

                <table align=center bgcolor="">

                    <tr><td bgcolor=""><font color="" face=verdana>STUDENT ID: </font>  </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=id%> </font> </td> </tr>

                    <tr><td bgcolor=""><font color="" face=verdana>NAME: </font>  </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=stname%> </font> </td> </tr>

                    
                    <tr><td bgcolor=""><font color="" face=verdana>REGULATION: </font> </td>   <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=regulation%> </font> </td> </tr>

                    
                    <tr><td bgcolor=""><font color="" face=verdana>GENDER:  </font>     </td>   <td bgcolosr="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=gender%> </font></td> </tr>

                    






                </table>

        </td></tr>
<tfoot>
    <tr><td><a href="myportalf.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>
</table>



    <%

            } catch (Exception ne) {
                out.println(ne);
            }

    %>


</body>
</html>
