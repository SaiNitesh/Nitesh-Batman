<%-- 
    Document   : addmarks1
    Created on : Jun 17, 2012, 2:05:12 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>

<html>
<head><title>ADDING MARKS FORM</title>
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
     document.getElementById("a").value="";
     document.getElementById("a").focus;
           
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

<form method="GET"  action="addmarks2.jsp" onsubmit="return validate(this)" name="form1">
<table border="1" align=center height="" bgcolor="" rules="all" >
<tr>
<td>
<h3 align=center><font color="" face=verdana> Marks Form </font></h3>

<table border=1 align="cneter" width=1175 bgcolor="" rules="all">



   <tr height="65"> 
   
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

            try {




               String regulation = request.getParameter("regulation");
               String ys = request.getParameter("ys");
               System.out.println(""+ys);
               HttpSession hs=request.getSession(true);
               hs.setAttribute("year",ys);
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select id , stname, regulation from student1 where regulation='" + regulation + "'");

                  while (rs.next())  {

               
                regulation = rs.getString(3);        
                


                %>

                <tr>

             <td><input type=text size=8 name=id value="<%=rs.getString(1)%>"/></td>
            <td><input type=text size=10 name=stname value="<%=rs.getString(2)%>"/></td>
            <td align=center><input type=text size=9  name=regulation value="<%=regulation%>"/></td>
           
            
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
                <td align="center"><input type=text align=center size=14 name=m1d id="a" onChange="validF();" > </td>
                <td align="center"><input type=text size=12 name=m1o id="b" onChange="validT();"> </td>
                <td align="center"><input type=text size=12 name=perc1 id="c"> </td>
                <td align="center"><input type=text size=12 name=m2d id="d" onChange="validF();"> </td>
                <td align="center"><input type=text size=12 name=m2o id="e" onChange="validT();"> </td>
                <td align="center"><input type=text size=12 name=perc2 id="f" > </td>
                
            </tr>
            
           




<%

            }} catch (Exception ne) {
                out.println(ne);
            }

    %>





</table>

<center><input type="submit" name="s" value="submit">
 
<input type="reset" value="Reset"></center>


</td>
</tr>
<tfoot>
    <tr><td><a href="myportal.jsp" style='text-decoration: none'>Portal Pioneered by Reddy Sai Nitesh</a></td></tr> 
 </tfoot>
</table>

</form>

</body>

</html>
