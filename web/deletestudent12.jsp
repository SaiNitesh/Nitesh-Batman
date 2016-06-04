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
            String year1 = request.getParameter("year1");
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
            Statement stmt = con.createStatement();
            int rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10,rs11,rs12,rs13,rs14,rs15,rs16,rs17,rs18,rs19,rs20,rs21,rs22;
            int rs23,rs24,rs25,rs26,rs27,rs28,r1,r2,r3,r4,r5,r6,r7;
            
            // DELETE user,items,orders FROM user LEFT JOIN items ON user.us_id = items.us_id LEFT JOIN orders ON items.od_id = orders.od_id WHERE user.us_id = $usrID
            
            if(year1.equals("1-1"))
            {
             stmt = con.createStatement(); 
            String qy = "delete  from student1 where id='" + id + "'";
            r1= stmt.executeUpdate(qy);   
                
            stmt = con.createStatement(); 
             qy = "delete from oneone where id='" + id + "'";
             rs1= stmt.executeUpdate(qy);  
             if(rs1>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> RECORDS ARE COMPLETLY DELETED </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }  
                                        
            }
            else if(year1.equals("1-2"))
            {
            stmt = con.createStatement(); 
            String qy = "delete  from oneone where id='" + id + "'";
            rs2= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete  from onetwo where id='" + id + "'";
             rs3= stmt.executeUpdate(qy);  
             System.out.println("hiii"+rs2);
             System.out.println("hooo"+rs3);
             
             stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r2= stmt.executeUpdate(qy);
             
            if(rs2>0&&rs3>0)
             {
                System.out.println("hiii");
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is deleted successfully </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }  
                                        
                                     
            }
            else if(year1.equals("2-1"))
            {
                System.out.println("hi "+year1);
            stmt = con.createStatement(); 
            String qy = "delete  from oneone where id='" + id + "'";
             rs4= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete  from onetwo where id='" + id + "'";
             rs5= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete  from twoone where id='" + id + "'";
             rs6= stmt.executeUpdate(qy); 

             stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r3= stmt.executeUpdate(qy);

            if(rs4>0&&rs5>0&&rs6>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is deleted successfully </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }                          
            }
            else if(year1.equals("2-2"))
            {
             stmt = con.createStatement();
            String qy = "delete * from oneone where id='" + id + "'";
             rs7= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from onetwo where id='" + id + "'";
             rs8= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twoone where id='" + id + "'";
             rs9= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twotwo where id='" + id + "'";
            rs10= stmt.executeUpdate(qy); 

            stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r4= stmt.executeUpdate(qy);

            if(rs7>0&&rs8>0&&rs9>0&&rs10>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is deleted successfully </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }                        
            }
            else if(year1.equals("3-1"))
            {
            stmt = con.createStatement(); 
            String qy = "delete * from oneone where id='" + id + "'";
             rs11= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from onetwo where id='" + id + "'";
             rs12= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twoone where id='" + id + "'";
             rs13= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twotwo where id='" + id + "'";
             rs14= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from threeone where id='" + id + "'";
             rs15= stmt.executeUpdate(qy);
             
             stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r5= stmt.executeUpdate(qy);

             if(rs11>0&&rs12>0&&rs13>0&&rs14>0&&rs15>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is deleted successfully </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }   
   
            }
            else if(year1.equals("3-2"))
            {
            stmt = con.createStatement();  
            String qy = "delete * from oneone where id='" + id + "'";
            rs16= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from onetwo where id='" + id + "'";
            rs17= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twoone where id='" + id + "'";
             rs18= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twotwo where id='" + id + "'";
             rs19= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from threeone where id='" + id + "'";
             rs20= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from threetwo where id='" + id + "'";
             rs21= stmt.executeUpdate(qy); 

             stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r6= stmt.executeUpdate(qy);

            if(rs16>0&&rs17>0&&rs18>0&&rs19>0&&rs20>0&&rs21>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is deleted successfully </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana">Deletion FAILED </font> </h2>
                    <%
                    }                         
            }
            else if(year1.equals("4-1"))
            {
            stmt = con.createStatement(); 
            String qy = "delete * from oneone where id='" + id + "'";
            rs22= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from onetwo where id='" + id + "'";
             rs23= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twoone where id='" + id + "'";
             rs24= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from twotwo where id='" + id + "'";
             rs25= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from threeone where id='" + id + "'";
             rs26= stmt.executeUpdate(qy);
            
            stmt = con.createStatement();
            qy = "delete * from threetwo where id='" + id + "'";
             rs27= stmt.executeUpdate(qy);
            
             stmt = con.createStatement();
            qy = "delete * from fourone where id='" + id + "'";
            rs28= stmt.executeUpdate(qy);   
            
            stmt = con.createStatement(); 
            qy = "delete  from student1 where id='" + id + "'";
            r7= stmt.executeUpdate(qy);

            if(rs22>0&&rs23>0&&rs24>0&&rs25>0&&rs26>0&&rs27>0&&rs28>0)
             {
                %>
                <h2 align=center><font color="" face="verdana"><%=id%> is DELETED SUCCESSFULLY </font> </h2>
                <%            }
              else
                  {
                    %>
                    <h2 align=center><font color="" face="verdana"> DELETION FAILED </font> </h2>
                    <%
                    }
            }
            
            %>

            </td></tr>
        
        <tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>

        
        </table>

    </body>
</html>