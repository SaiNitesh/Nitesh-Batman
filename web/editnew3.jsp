<%-- 
    Document   : editmarks2
    Created on : Jun 20, 2012, 8:36:11 AM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.Math"%>
<%@ page import="java.sql.*"%>
<%@ include  file="head.jsp" %>
<html>
<head><title>EDIT MARKS FORM</title>
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
      int y=0;
      int result=0;
      try
        {
      int x=0;
       
        PreparedStatement ps;
        
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:Odbc:Database", "", "");
        
        
        HttpSession hs=request.getSession(true);
        
       String year1=(String)hs.getAttribute("year1");
       System.out.println("the nitesh year="+year1);

       String reg1=(String)hs.getAttribute("reg1");
       System.out.println("the reddy reg1="+reg1);

       Statement stmt;
              stmt = con.createStatement();
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
        
         id=request.getParameterValues("id");
//System.out.println("the length of the id arrAY="+id.length);
stname =request.getParameterValues("stname");
regulation=request.getParameterValues("regulation");
sname=request.getParameterValues("sname");
m1d=request.getParameterValues("m1d");

m1o=request.getParameterValues("m1o");

//System.out.println("the m1o="+m1o[i]);
perc1=request.getParameterValues("perc1");
m2d=request.getParameterValues("m2d");
//System.out.println("the m2d="+m2d);
m2o=request.getParameterValues("m2o");
perc2=request.getParameterValues("perc2");
System.out.println("the new perc2="+perc2);

               
        System.out.println("year="+year1);
        
        ResultSet rs1 = stmt.executeQuery("select count(*) from "+year1+" where regulation='"+reg1+"'");
        
                if(rs1.next())
                    x=rs1.getInt(1);
        
        
        System.out.println("x="+x);
        
        stmt = con.createStatement();
        String qy = "delete from "+year1+" where regulation='" + reg1 + "'";
        int resul= stmt.executeUpdate(qy);
       

       // String query = "INSERT INTO "+year1+"(id,stname,regulation,sname,m1d,m1o,perc1,m2d,m2o,perc2,des,onl,total,perc)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
       for(int i=0;i<x;i++)
      {
        String query = "INSERT INTO "+year1+"(id,stname,regulation,sname,m1d,m1o,perc1,m2d,m2o,perc2,des,onl,total,perc)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        ps = con.prepareStatement(query);
        System.out.println("the new reg="+regulation[i]);

        
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
System.out.println("the x2="+x2);
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
         y= ps.executeUpdate();
         }
        System.out.println("Executed SuccessfullY");
        
        
      if(y>0)
            {
                    %>

                    <h2 align=center><font color="BLACK" face="verdana"> <%=reg1%> REGULATED STUDENTS ARE UPDATED SUCCESSFULLY</font> </h2>
                    <%
                    }
                    else
                        {
                        %>
                        <h2 align=center><font color="" face="verdana">  Not updated successfully</font> </h2>
                       
                    <% 
                    }
      }
      
      
      catch(Exception y1)
        {
    y1.printStackTrace();
}
            
      %>
</td></tr>
</table>

</body>
</html>