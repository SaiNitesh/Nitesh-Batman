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

            try
                    {
            String regulation = request.getParameter("regulation");
            System.out.println(""+regulation);
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
            Statement stmt = con.createStatement();
            int rs1;
            int rs2=0,rs3=0,rs4=0,rs5=0,rs6=0,rs7=0,rs8=0,r1;
            
            // DELETE user,items,orders FROM user LEFT JOIN items ON user.us_id = items.us_id LEFT JOIN orders ON items.od_id = orders.od_id WHERE user.us_id = $usrID
            System.out.println(""+rs2);
            String reg=regulation;       
            if(regulation.equals(reg))
                {
            stmt = con.createStatement();
            String qy = "delete * from oneone where regulation='" + regulation + "'";
            System.out.println("heylooooooooooooo");
             
            rs1= stmt.executeUpdate(qy);  
                          
            
            
             
             stmt = con.createStatement(); 
             qy = "delete from onetwo where regulation='" + regulation + "'";
             rs2= stmt.executeUpdate(qy);  
           
            stmt = con.createStatement(); 
             qy = "delete from twoone where regulation='" + regulation + "'";
             rs3= stmt.executeUpdate(qy);  
            
            stmt = con.createStatement(); 
             qy = "delete from twotwo where regulation='" + regulation + "'";
             rs4= stmt.executeUpdate(qy);  
          
             stmt = con.createStatement(); 
             qy = "delete from threeone where regulation='" + regulation + "'";
             rs5= stmt.executeUpdate(qy);  
           
             stmt = con.createStatement(); 
             qy = "delete from threetwo where regulation='" + regulation + "'";
             rs6= stmt.executeUpdate(qy);  
            
             stmt = con.createStatement(); 
             qy = "delete from fourone where regulation='" + regulation + "'";
             rs7= stmt.executeUpdate(qy);  
                                                                                                         
             stmt = con.createStatement(); 
             qy = "delete from fourtwo where regulation='" + regulation + "'";
             rs8= stmt.executeUpdate(qy);
             
             stmt = con.createStatement(); 
            qy = "delete  from student1 where regulation='" + regulation + "'";
            r1= stmt.executeUpdate(qy);

             System.out.println("this is"+rs2);
             
             if(rs1>0&&rs2>0&&rs3>0&&rs4>0&&rs5>0&&rs6>0&&rs7>0&&rs8>0)
             {
                %>
                <h2 align=center><font color="black" face="verdana"><%=regulation%> REGULATION RECORDS ARE COMPLETLY DELETED </font> </h2>
                <%            }
             else if(rs1>0||rs2>0||rs3>0||rs4>0||rs5>0||rs6>0||rs7>0||rs8>0)
                  {
                    %>
                    <h2 align=center><font color="black" face="verdana">INCOMPLETE DELETION OF <%=regulation%> REGULATED RECORDS</font> </h2>
                    <%
                    }
             else
                  {
                    %>
                    <h2 align=center><font color="black" face="verdana">DELETION FAILED </font> </h2>
                    <%
                    }  
            }
            }
            catch(Exception y)
        {
    y.printStackTrace();
}
           
            
            
            %>

            </td></tr>
       <tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>

       
       </table>

    </body>
</html>