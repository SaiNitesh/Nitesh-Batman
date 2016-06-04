<%-- 
    Document   : editstudent2
    Created on : May 31, 2012, 3:30:20 PM
    Author     : Administrator
--%>


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
        String id, stname, regulation,gender,stat;
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
        Statement stmt = con.createStatement();
       
        id = request.getParameter("id");
        String x=id;
        stname = request.getParameter("stname");
        regulation = request.getParameter("regulation");
       
        gender = request.getParameter("gender");
        
        String qy = "delete from student1 where id='" + id + "'";
        stmt = con.createStatement();
        stmt.executeUpdate(qy);
 
        
        stmt = con.createStatement();
       String query = "INSERT INTO student1 values('"+id+"','"+stname+"','"+regulation+"','"+gender+"')";
        int result=stmt.executeUpdate(query);
        
        
        HttpSession hs=request.getSession(true);
        String year1="";
        String year=(String)hs.getAttribute("year");
         if(year.equals("1-1"))
    {
    
    
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    }
else if(year.equals("1-2"))
    {
    year1="onetwo";
    
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
      
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
         qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
      
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
    }

else if(year.equals("2-1"))
    {
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update onetwo set id=?,stname=?,regulation=?  where id=?";
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
    
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
    
    
    }
else if(year.equals("2-2"))
    {
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
    
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update twotwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
    }
else if(year.equals("3-1"))
    {
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twotwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update threeone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    }
else if(year.equals("3-2"))
    {
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
    
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
   
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twotwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
   
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update threeone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
        
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update threetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
    }
else if(year.equals("4-1"))
    {
   String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
        
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twotwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update threeone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
      
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update threetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
      
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
        qt = "update fourone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
        
    }
else
    {
    String qt = "update oneone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update onetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twoone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update twotwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
       qt = "update threeone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update threetwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
        
        qt = "update fourone set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
     
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
        qt = "update fourtwo set id=?,stname=?,regulation=? where id=?";      
    pstmt = con.prepareStatement(qt);
        pstmt.setString(1, id);
        pstmt.setString(2, stname);
        pstmt.setString(3, regulation);
       
        pstmt.setString(4, x);
        pstmt.executeUpdate();
    
    
    }

        
        
        
                    %>

                    <h2 align=center><font color="" face="verdana">  UPDATED SUCCESSFULLY</font> </h2>


</td></tr>
</table>

</body>
</html>