<%@ page language="java" import="java.util.*" %>
</body>
</html>
<body>
Welcome <font color="red"><%= session.getAttribute("companyname") %></font>
<body><h1>Welcome to your E-commerce Store</h1>
   <a href="inventory.jsp">Product catalogue </a>&nbsp; &nbsp;
    <a href="order.jsp">Order </a>&nbsp; &nbsp;
    <a href="profile.jsp">Profile Details </a> <br/><br/>&nbsp; &nbsp;
       <a href="logout.jsp">logout </a> &nbsp; &nbsp;
</html>
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
<body><h1>Retrieve information of your profile</h1>  
<hr>
<form>UserId<input name=fn><br/>     
<input type=submit></form>
</body>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>E-commerce</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/shop"
     user="root"  password=""/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from users where username='<%=fn %>';
</sql:query>
<table border="1" width="100%">
<tr>
   <th>firstname</th>
   <th>LastName</th>
   <th>username</th>
   <th>passkey</th>
      <th>add1</th>
        <th>add2</th>
      <th>T.NO</th>
        <th>zipcode</th>
      <th>city</th>
        <th>country</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.lastname}"/></td>
   <td><c:out value="${row.username}"/></td>
   <td><c:out value="${row.passkey}"/></td>
     <td><c:out value="${row.add1}"/></td>
     <td><c:out value="${row.add2}"/></td>
   <td><c:out value="${row.tno}"/></td>
   <td><c:out value="${row.zc}"/></td>
   <td><c:out value="${row.city}"/></td>
     <td><c:out value="${row.country}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>