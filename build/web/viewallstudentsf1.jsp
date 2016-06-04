<%-- 
    Document   : viewallstudent
    Created on : May 31, 2012, 7:25:12 PM
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
<head><title>View all Students</title>
</head>
<body>
<table align="center">
<tr>
<td>
 
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
 
<li><a > MARKS  </a>
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
<table border=1 align=center width=1182 height= bgcolor="" rules="all">
<tr><td>
<center>
    <font color="" face=verdana size=5 ><b>VIEW ALL STUDENTS </b></font>
</center>
</td></tr>
</table>
<table border=1  width=1182 rules="all">
    <tr height=50  >
                    <td bgcolor="" align=center><font color="" face=verdana><b>STUDENT ID </b></font></td>
                    <td bgcolor="" align=center><font color="" face=verdana><b>NAME </b></font>   </td> 
                    <td bgcolor="" align=center><font color="" face=verdana><b>REGULATION </b></font> </td> 
                    <td bgcolor="" align=center><font color="" face=verdana><b>GENDER </b> </font></td>
                    
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
                    <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=id%> </font> </td> 

                    <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=stname%> </font> </td> 

                    
                    <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=regulation%> </font> </td> 

                    
                     <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=gender%> </font></td> 
                    
                    </tr>

        

                        <%

                                        }

                        %>
                    </table>



        <%

            } catch (Exception ne) {
                out.println(ne);
            }

        %>

</td></tr>

<tfoot>
    <tr><td><a href="myportalf.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>
</table>
    </body>
</html>