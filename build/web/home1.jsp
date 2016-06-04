

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*" %>
<%@ page import="java.util.*" %>
<%@ include file="DBConnection.jsp" %>



<%  try{
String username=request.getParameter("username");
String password=request.getParameter("password");
Statement stmt=con.createStatement();
String query="select * from users where username='"+username+"'and password='"+password+"'";
ResultSet rs=stmt.executeQuery(query);
 boolean b =rs.next();

   if(b)
       {
    String uname=rs.getString("USERNAME").trim();
    String usertype=rs.getString("USERTYPE").trim();

    if(usertype.equals("ADMIN"))
        {response.sendRedirect("adminhome.jsp");
        }
      else if(usertype.equals("STUDENT"))
          { 
            response.sendRedirect("studenthome.jsp");
          
         }
    else if(usertype.equals("FACULTY"))
          { 
            response.sendRedirect("facultyhome.jsp");
          
         }
    else{out.println("<html><body><center><h2>ACCESS DENIED");
				out.println("<BR><a href='home1.jsp'>Back to Login</a></center></body></html>");


    }
    }


		   stmt.close();
           con.close();


          }

         catch (Exception e)
         {out.println("error"+e);e.printStackTrace();
         }
%>