<%-- 
    Document   : addmarks2
    Created on : Jun 18, 2012, 1:49:48 PM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.math.*"%>
<%@ page import="java.lang.Math"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>MARKS FORM</title>
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

<table border=1 align=center width=1182 height=400 bgcolor="" rules="all">
<tr><td>

<%
int result=0;
try
        {
int x=0;
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
                Statement st = con.createStatement();
                ResultSet rs1 = st.executeQuery("select count(*) from student1");
                if(rs1.next())
                    x=rs1.getInt(1);
                System.out.println("the  value of x="+x);
                String id[]=new String[x];
                String stname[]=new String[x];
              
                String regulation[]=new String[x];
                String sname[]=new String[x];
                String m1d[]=new String[x];
                String m1o[]=new String[x];
                String perc1[]=new String[x];
                String m2d[]=new String[x]; 
                String m2o[]=new String[x];
                String perc2[]=new String[x];
                
                
                
                
Connection connect;
Statement stmt=null;
ResultSet rs=null;

HttpSession hs=request.getSession(true);
String year1="";
String year=(String)hs.getAttribute("year");
System.out.println("the year="+year);
if(year.equals("1-1"))
    {
    year1="oneone";
    }
else if(year.equals("1-2"))
    {
    year1="onetwo";
    }

else if(year.equals("2-1"))
    {
    year1="twoone";
    }
else if(year.equals("2-2"))
    {
    year1="twotwo";
    }
else if(year.equals("3-1"))
    {
    year1="threeone";
    }
else if(year.equals("3-2"))
    {
    year1="threetwo";
    }
else if(year.equals("4-1"))
    {
    year1="fourone";
    }
else
    {
    year1="fourtwo";
    }

id=request.getParameterValues("id");
//System.out.println("the length of the id arrAY="+id.length);
stname =request.getParameterValues("stname");
regulation=request.getParameterValues("regulation");


sname=request.getParameterValues("sname");
m1d=request.getParameterValues("m1d");

m1o=request.getParameterValues("m1o");
for(int i=0;i<m1o.length;i++)
System.out.println("the m1o="+m1o[i]);
perc1=request.getParameterValues("perc1");
m2d=request.getParameterValues("m2d");

m2o=request.getParameterValues("m2o");
perc2=request.getParameterValues("perc2");


for(int i=0;i<x;i++)
{
PreparedStatement ps=con.prepareStatement("insert into "+year1+" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
System.out.println("the new regulation="+regulation[i]);

ps.setString(1,id[i]);
ps.setString(2,stname[i]);
ps.setString(3,regulation[i]);
ps.setString(4,sname[i]);
ps.setString(5,m1d[i]);
//System.out.println("===========the value of m1o="+m1o[i]);
ps.setString(6,m1o[i]);
ps.setString(7,perc1[i]);
ps.setString(8,m2d[i]);
ps.setString(9,m2o[i]);
ps.setString(10,perc2[i]);
float x1=Integer.parseInt(m1d[i])/2;
//System.out.println("the x1="+x1);
float x2=Integer.parseInt(m2d[i])/2;
//System.out.println("the x2="+x2);
float z=0;
if(x1>x2)
{
     z=x1;
}
else
    z=x2;
//System.out.println("the z="+z);
ps.setFloat(11,z);
//System.out.println("hello");
//System.out.println("The m1o[i]="+m1o[i]);
float y1=Integer.parseInt(m1o[i]);
//System.out.println("the y1="+y1);
float y2=Integer.parseInt(m2o[i]);
//System.out.println("the y2="+y2);

float z1=0;
if(y1>y2)
{
     z1=y1;
}
else
    z1=y2; 
//System.out.println("the z1="+z1);
ps.setFloat(12,z1);
float t=(z1+z)/2;


//System.out.println("hello2");
float k1=Integer.parseInt(perc1[i]);
//System.out.println("the k1="+k1);
float k2=Integer.parseInt(perc2[i]);
//System.out.println("the k2="+k2);
float m=(k1+k2)/2;
//System.out.println("the m="+m);
int t1;
if(m>=95)
{
    t1=5;
    }
    else if(m>=90 && m<95)
    {
     t1=4;
     }
        else if(m>=85 && m<90)
       {
        t1=3;
         }
        
         else if(m>=80&&m<85)
          {
           t1=2;  
         }
          else if(m>=75&&m<80)
          {
              t1=1;
             
          }
  else 
{
    t1=0;
}
                                
 t=t+t1;               
 int a;
 a=Math.round(t);
 System.out.println(""+a);
ps.setFloat(13,a);
ps.setFloat(14,m);
 result=ps.executeUpdate();
}
if(result>0)
            {
                    %>

                    <h2 align=center vlign=bottom><font color="black" face="verdana"> <%=regulation[0]%> REGULATED STUDENTS MARKS  ARE ADDED SUCCESSFULLY</font> </h2>
                    <%
                    }
                    else
                        {
                        %>
                        <h2 align=center><font color="black" face="verdana">  Adding Failed</font> </h2>
                       
                    <% 
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





