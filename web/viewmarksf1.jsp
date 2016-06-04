<%-- 
    Document   : viewmarks1
    Created on : Jun 19, 2012, 7:43:53 PM
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
<head><title>VIEW MARKS FORM</title>
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

<table  align=center width=1182 height="" bgcolor="" border="1" rules="all" >
<tr><td>
    
 <h2 align=center><font color="" face=verdana> Student Marks </font> </h2>

                <table align=center width=1182 height=100 bgcolor="" border="1" rules="all">

        <tr height=70 bgcolor=ashblue> 
        <td bgcolor=ashblue><font color="" face=verdana>SUBJECT NAME </font>  </td>   
                
        <td bgcolor=ashblue><font color="" face=verdana>MID1 DESCRIPTIVE </font>  </td>   

        <td bgcolor=ashblue><font color="" face=verdana>MID1 ONLINE </font>  </td> 

        <td bgcolor=ashblue><font color="" face=verdana>MID1 ATTENDENCE </font>  </td> 

        
        <td bgcolor=ashblue><font color="" face=verdana>MID2 DESCRIPTIVE </font>  </td>
 
        <td bgcolor=ashblue><font color="" face=verdana>MID2 ONLINE </font>  </td> 
 
        <td bgcolor=ashblue><font color="" face=verdana>MID2 ATTENDENCE </font>  </td>
        
        <td bgcolor=ashblue><font color="" face=verdana>DESCRIPTIVE </font>  </td> 
 
        <td bgcolor=ashblue><font color="" face=verdana>ONLINE </font>  </td>
        
        <td bgcolor=ashblue><font color="" face=verdana>TOTAL </font>  </td>
 
        <td bgcolor=ashblue><font color="" face=verdana>ATTENDENCE </font>  </td>
  
 </tr>
 

                <%

            try {
               HttpSession hs=request.getSession(true);
               String id = request.getParameter("id");
               String ys= request.getParameter("ys");
               
               
               
               String year1="";

//System.out.println("the year="+year);
if(ys.equals("1-1"))
    {
    year1="oneone";
    }
else if(ys.equals("2-1"))
    {
    year1="twoone";
    }

else if(ys.equals("2-2"))
    {
    year1="twotwo";
    }
else if(ys.equals("2-1"))
    {
    year1="twoone";
    }
else if(ys.equals("3-1"))
    {
    year1="threeone";
    }
else if(ys.equals("3-2"))
    {
    year1="threetwo";
    }
else if(ys.equals("4-1"))
    {
    year1="fourone";
    }
else
    {
    year1="fourtwo";
    }

               
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select sname,m1d,m1o,perc1,m2d,m2o,perc2,des,onl,total,perc from  "+year1+" where id='" + id + "'");
                            
                while(rs.next()){
   
                String sname = rs.getString(1);
                String m1d = rs.getString(2);
                String m1o = rs.getString(3);
                String perc1 = rs.getString(4);
                String m2d = rs.getString(5);
                String m2o = rs.getString(6);
                String perc2 = rs.getString(7);
                String des = rs.getString(8);
                String onl = rs.getString(9);
                String total = rs.getString(10);
                String perc = rs.getString(11);
                
                 

                %>

   <tr height=60>
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=sname%> </font> </td>
                
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=m1d%> </font> </td>

        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=m1o%> </font> </td>
        
        <td bgcolor=""><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=perc1%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=m2d%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=m2o%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=perc2%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=des%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=onl%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=total%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=perc%> </font> </td>
        </tr>   
        


<%

           } } catch (Exception ne) {
                out.println(ne);
            }

    %>




</table>

</td></tr>
<tfoot>
    <tr><td><a href="myportalf.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr>
 </tfoot>
</table>



 



</body>
</html>
