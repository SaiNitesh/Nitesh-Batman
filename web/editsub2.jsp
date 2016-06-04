<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>EDIT STUDENT FORM</title>
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

        PreparedStatement pstmt;
        String sname, ys,regulation;
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
        Statement stmt = con.createStatement();
        sname = request.getParameter("sname");
        ys = request.getParameter("ys");
        regulation = request.getParameter("regulation");
        
        
        String qy = "delete from subject where sname='" + sname + "'";
        stmt = con.createStatement();
        stmt.executeUpdate(qy);


        String query = "INSERT INTO subject(sname,ys,regulation)values(?,?,?)";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, sname);
        pstmt.setString(2, ys);
        pstmt.setString(3, regulation);
        
        pstmt.executeUpdate();

                    %>

                    <h2 align=center><font color="" face="verdana"> <%=sname%> SUBJECT IS UPDATED SUCCESSFULLY</font> </h2>


</td></tr>
</table>

</body>
</html>