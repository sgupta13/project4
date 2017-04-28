<body>
Welcome <font color="red"><%= session.getAttribute("companyname") %></font>

<body><h1>Welcome to your E-commerce Store</h1>
   
   <a href="inventory.jsp">Product catalogue </a>&nbsp; &nbsp;
   
    <a href="viewcart.jsp">View Cart </a>&nbsp; &nbsp;
    <a href="profile.jsp">Profile Details </a> &nbsp; &nbsp;
     <a href="order.jsp">Order </a> &nbsp; &nbsp;
      <a href="logout.jsp">logout </a> &nbsp; &nbsp;
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
SELECT * from inventory;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Category</th>
   <th>Product</th>
   <th>ID</th>
   <th>Name</th>
      <th>Price</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.category}"/></td>
   <td><c:out value="${row.product}"/></td>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
     <td><c:out value="${row.price}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>