<%@ page language="java" import="java.util.*" %>
<html>
<%
String elder = request.getParameter("age1");
String younger = request.getParameter("age2");
String fn = request.getParameter("fn");
String ln = request.getParameter("ln");
String pk = request.getParameter("pk");
String un = request.getParameter("un");
session.setAttribute("companyname",fn);
// -------------------------------------------------------
%>
<%
%>
<html>
<head><title>Login Section</title></head>
<body><h1>Welcome to your E-commerce Store</h1>
  <a href="registration.jsp">Register </a> &nbsp; &nbsp;
   <a href="inventory.jsp">Product catalogue </a>&nbsp; &nbsp;
    <a href="order.jsp">Place Order </a> &nbsp; &nbsp;
    <a href="viewcart.jsp">View Cart </a>&nbsp; &nbsp;
    <a href="profile.jsp">Profile Details </a> <br/><br/>&nbsp; &nbsp; 
 Welcome "   <%= fn %> "<br/>
<hr>
<form>UserId <input name=fn><br/>     
PassKey <input name=ln> 
<input type=submit></form>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>