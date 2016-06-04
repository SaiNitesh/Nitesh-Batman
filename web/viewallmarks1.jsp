<%-- 
    Document   : EditingMarks2
    Created on : Jul 18, 2012, 11:47:06 AM
    Author     : user4
--%>
<%@ include  file="head.jsp" %>
<%@ page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
<table width=1184 align=center border=0>
    <%String regulation=request.getParameter("regulation");%>
     <tr bgcolor="#e9e9e9"><td align=center><font size=4>Viewing Marks For &nbsp;<b><%=regulation%></b> &nbsp;Regulation</font></td></tr>
 </table>

        <table border=1 align=center width=1182 height= bgcolor="" rules="all">
        <tr height=1 bgcolor=""> 
        <td bgcolor="#e9e9e9" align=center><font color="" face=verdana><small><b>ID </b></small></font>  </td>   
                
        <td bgcolor="#e9e9e9" align=center><font color="" face=verdana size=2><b>NAME </b></font>  </td>   

        <td bgcolor="#e9e9e9" width=6><font color="" face=verdana size=2><b>SUBJECT </b></font>  </td> 
        
        <td bgcolor="#e9e9e9" width=8 align=center><font color="" face=verdana size=2><b>MID1 DESCRIPTIVE</b> </font>  </td> 

         <td bgcolor="#e9e9e9" width=4 align=center><font color="" face=verdana size=2><b>MID1 ONLINE </b></font>  </td> 
        
        <td bgcolor="#e9e9e9" width=8 align=center><font color="" face=verdana size=2><b>MID1 ATTENDENCE </b></font>  </td> 

        
        <td bgcolor="#e9e9e9" width=8 align=center><font color="" face=verdana size=2><b>MID2 DESCRIPTIVE </b></font>  </td>
 
        <td bgcolor="#e9e9e9" width=5 align=center><font color="" face=verdana size=2><b>MID2 ONLINE </b></font>  </td> 
 
        <td bgcolor="#e9e9e9" width=8 align=center><font color="" face=verdana size=2><b>MID2 ATTENDENCE </b></font>  </td>
        
        <td bgcolor="#e9e9e9" width=7><font color="" face=verdana size=2><b>DESCRIPTIVE </b></font>  </td> 
 
        <td bgcolor="#e9e9e9" width=5><font color="" face=verdana size=2><b>ONLINE </b></font>  </td>
        
        <td bgcolor="#e9e9e9" width=4><font color="" face=verdana size=2><b>TOTAL </b></font>  </td>
 
        <td bgcolor="#e9e9e9" width=6><font color="" face=verdana size=2><b>ATTENDENCE </b></font>  </td>
  
 </tr>  
                    
<%
        try{  

        String ys=request.getParameter("ys");
        regulation=request.getParameter("regulation");
        System.out.println("The ys="+ys);
        System.out.println("The reg="+regulation);
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
               String reg1="";
               HttpSession hs=request.getSession(true);
               hs.setAttribute("year1",year1);
               reg1=regulation;
               hs.setAttribute("reg1",reg1);
               System.out.println("reg="+reg1);
                System.out.println("reg="+regulation);
                
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                System.out.println("step1"+year1);
                System.out.println("reg="+regulation);
                
                String sql="select id,stname,sname,m1d,m1o,perc1,m2d,m2o,perc2,des,onl,total,perc from "+year1+" where regulation='" + regulation + "'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                    {
        
        
        %>
       
        <tr height=1>
            
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(1)%></font> </td>
                
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(2)%> </font> </td>

        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(3)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(4)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(5)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(6)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(7)%> </font> </td>
        
        <td bgcolor=""><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(8)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(9)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(10)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(11)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(12)%> </font> </td>
        
        <td bgcolor="" ><font color="" face=verdana>&nbsp;&nbsp;&nbsp; <%=rs.getString(13)%> </font> </td>
        
        </tr>   

        <%
                }
                
                }
        catch (Exception ne) {
                out.println(ne);
            }
                %>
                


</table>
                
               
        
    </body>
</html>
