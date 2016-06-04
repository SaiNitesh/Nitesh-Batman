<%-- 
    Document   : deletestudent1
    Created on : May 31, 2012, 5:20:35 PM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>STUDENT DELETION FORM</title>
</head>
<body>
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


  

                    <%



            String id = request.getParameter("id");
            String ys = request.getParameter("ys");
            String year1="";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
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

            Statement stmt = con.createStatement();
            String qy = "delete * from "+year1+" where id='" + id + "'";
            int rs= stmt.executeUpdate(qy);

            
            if (rs > 0) {%><h2 align=center><font color="" face="verdana"><%=id%> is Deleted successfully </font> </h2><%            }

                    %>

            </td></tr>
       
       <tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>

       
       </table>

    </body>
</html>