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
        <SCRIPT Language="JavaScript" Purpose="Dom" Runat="Browser" SRC="validate.js">
         function validT()
    {
        
     var s=document.getElementById("b").value;
     var s1=document.getElementById("e").value;
     if(s > 20)
     {
      alert("value must be less than 20");
      document.getElementById("b").focus;  
      document.getElementById("b").value="";
      
     }
     if(s1 > 20)
     {
      alert("value must be less than 20");
      document.getElementById("e").focus;  
      document.getElementById("e").value="";      
     }
            }
    
    function validF()
    {
     var s2=document.getElementById("a").value;
     var s3=document.getElementById("d").value;
     if(s2 > 40)
     {
      alert("value must be less than 40");   
     document.getElementById("a").focus;
     document.getElementById("a").value="";      
     } 
     if(s3 > 40)
     {
      alert("value must be less than 40");   
      document.getElementById("d").focus;
      document.getElementById("d").value="";      
     } 
        
    }
       
        </SCRIPT>
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

        <form method="get" action="editnew3.jsp" onsubmit="return validate(this)">
        <table border=1 align="center" width=1182  bgcolor="" rules="all">

        <tr>
            <td bgcolor=""><font color="" face=verdana>STUDENT ID </font>  </td>   
                
        <td bgcolor="" align=center><font color="" face=verdana>NAME </font>  </td>   

        <td bgcolor=""><font color="" face=verdana>REGULATION </font>  </td> 

        <td bgcolor=""><font color="" face=verdana>SUBJECT </font>  </td> 

        
        <td bgcolor="" align=center><font color="" face=verdana>MID1 DESCRIPTIVE </font>  </td>
 
        <td bgcolor="" align=center><font color="" face=verdana>MID1 ONLINE </font>  </td> 
 
        <td bgcolor="" align=center><font color="" face=verdana>MID1 ATTENDENCE </font>  </td>
        
        <td bgcolor="" align=center><font color="" face=verdana>MID2 DESCRIPTIVE </font>  </td> 
 
        <td bgcolor="" align=center><font color="" face=verdana>MID2 ONLINE </font>  </td>
        
        <td bgcolor="" align=center><font color="" face=verdana>MID2 ATTENDENCE </font>  </td>
 
            </tr>   
                    
<%
      try
{                 
       String ys=request.getParameter("ys");
        String regulation=request.getParameter("regulation");
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
                System.out.println("step1");
                System.out.println("reg="+regulation);
                
                String sql="select id,stname,regulation,sname,m1d,m1o,perc1,m2d,m2o,perc2 from "+year1+" where regulation='" + regulation + "'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                    {
        
        
        %>
       <tr>
        <td><input type="text" size=9 name="id" value="<%=rs.getString(1)%>"></td>
        <td><input type="text" size=12 name="stname" value="<%=rs.getString(2)%>"></td>
        <td align=center><input type="text" size=9 name="regulation" value="<%=rs.getString(3)%>"></td>
        <td>
                <select name="sname">
            <%
            System.out.println(""+ys);
            PreparedStatement ps2=con.prepareStatement("select sname from subject where ys=?");
            ps2.setString(1,ys);
            ResultSet rs2=ps2.executeQuery();
            while(rs2.next())
                {
                %>
                
                <option><%=rs2.getString(1)%></option>
                    <% } %>
                    
                </select>
                
               
               </td>
        <td><input type="text" size=15 name="m1d" value="<%=rs.getString(5)%>" ></td>
        <td><input type="text" size=12 name="m1o" value="<%=rs.getString(6)%>"></td>
        <td><input type="text" size=16 name="perc1" value="<%=rs.getString(7)%>"></td>
        <td><input type="text" size=15 name="m2d" value="<%=rs.getString(8)%>"></td>
        <td><input type="text" size=12 name="m2o" value="<%=rs.getString(9)%>"></td>
        <td><input type="text" size=16 name="perc2" value="<%=rs.getString(10)%>"></td>
        
        </tr>
        <%
                }}catch (Exception ne) {
                out.println(ne);
            }
                %>
            </table><br>
                <center><input type="submit" name="s" value="UPDATE" >
                    
                    </center>
               
        
        </form>
    </body>
</html>
