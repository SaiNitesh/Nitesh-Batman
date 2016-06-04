<%-- 
    Document   : DBconnection
    Created on : Jan 18, 2012, 11:33:37 AM
    Author     : Nitesh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%@ page import="java.sql.*,java.io.*" %>
<%
	Connection con;
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con = DriverManager.getConnection ("jdbc:odbc:Database","","");

	
%>