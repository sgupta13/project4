<body>
Welcome <font color="red"><%= session.getAttribute("companyname") %></font>
<body><h1>Welcome to your E-commerce Store</h1>
    <a href="registration.jsp">Register </a> &nbsp; &nbsp;
   <a href="inventory.jsp">Product catalogue </a>&nbsp; &nbsp;
    <a href="order.jsp">Place Order </a> &nbsp; &nbsp;
    <a href="viewcart.jsp">View Cart </a>&nbsp; &nbsp;
    <a href="profile.jsp">Profile Details </a> <br/><br/>&nbsp; &nbsp;
</body>
</html>
<html> 
  <head> 
   <title> Registration Form </title> 
  </head> 
<%
String elder = request.getParameter("age1");
String younger = request.getParameter("age2");
String fn = request.getParameter("fn");
String ln = request.getParameter("ln");
String un = request.getParameter("un");
String pk = request.getParameter("pk");
String ad1 = request.getParameter("ad1");
String ad2 = request.getParameter("ad2");
String tn = request.getParameter("tn");
String zc = request.getParameter("zc");
String ct = request.getParameter("ct");
String cy = request.getParameter("cy");
String cct = request.getParameter("cct");
String cn = request.getParameter("cn");
String ci = request.getParameter("ci");
session.setAttribute("companyname",fn);
// -------------------------------------------------------
%>
<%
%>
<html>
<body><h1>Registration Form</h1>
<hr>
<form>First Name <input name=fn><br/>     
LastName <input name=ln> <br/>
UserName <input name=un><br/> 
Passkey <input name=pk> <br/>
Address1 <input name=ad1><br/> 
Address2<input name=ad2> <br/>
T. No. <input name=tn><br/> 
Zipcode<input name=zc> <br/>
City<input name=ct> <br/>
Country<input name=cy> <br/>
credit card name <input name=ccn><br/> 
credit card number<input name=cn> <br/>
customer id<input name=ci> <br/>
<input type=submit></form>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>Welcome to E-commerce store</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/shop"
     user="root"  password=""/>
<sql:update dataSource="${snapshot}" var="result">
INSERT INTO users VALUES ( '<%=fn%>', '<%=ln%>', '<%=un%>', '<%=pk%>', '<%=ad1%>', '<%=ad2%>','<%=tn%>','<%=zc%>','<%=ct%>', '<%=cy%>','<%=cct%>','<%=cn%>','<%=ci%>' );
</sql:update> 
<%-- 
    Document   : registration
    Created on : 25-Apr-2017, 12:13:46 AM
    Author     : cdshah
--%>