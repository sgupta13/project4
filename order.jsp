<%@ page language="java" import="java.util.*" %>
<html>
</body>
</html>
<body>
Welcome <font color="red"><%= session.getAttribute("companyname") %></font>

<body><h1>Welcome to your E-commerce Store</h1>
   
   <a href="inventory.jsp">Product catalogue </a>&nbsp; &nbsp;

    <a href="viewcart.jsp">View Cart </a>&nbsp; &nbsp;
    <a href="profile.jsp">Profile Details </a> &nbsp; &nbsp;
       <a href="logout.jsp">logout </a> &nbsp; &nbsp;
</body>
</html>
<html> 
</html>
<%
String elder = request.getParameter("age1");
String younger = request.getParameter("age2");
String fn = request.getParameter("fn");
String ln = request.getParameter("ln");
String pk = request.getParameter("pk");
String un = request.getParameter("un");
String uk = request.getParameter("uk");
String up = request.getParameter("up");
session.setAttribute("companyname",fn);
// -------------------------------------------------------
%>
<%
%>
<html>
<head><title>Place Order</title></head>
<body><h1>Place Order by entering Following Information</h1>
<hr><br/><br/>
<form>category <input name=fn><br/> <br/>    
product <input name=ln> <br/><br/>
quantity <input name=un><br/> <br/>
userid  <input name=pk> <br/><br/>
price <input name=uk><br/> <br/>
<input type=submit></form>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/shop"
     user="root"  password=""/>
<sql:update dataSource="${snapshot}" var="result">
INSERT INTO orders VALUES ( 5, '<%=fn%>','<%=ln%>','<%=un%>','<%=pk%>','<%=uk%>');
</sql:update>