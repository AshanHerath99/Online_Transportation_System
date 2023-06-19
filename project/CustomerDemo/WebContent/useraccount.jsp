<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Taxi</title>
	<style>
	table.outset {border-style: outset;

	}
	tr,td{
	 background-color: #fff0f5;
	 	border: 2px solid black;
  border-radius: 25px;}
	 
	  
	 
body {
  background-image: url('img/elements/gg.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  

}	</style>
	
</head>
<body>
<center>
<br><br><br>

	<h1 style="color: #fff0f5 ">Customer Details....</h1>
	<table class="outset" style="width:30%">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	

	
	<tr style="height:30px">
		<td><b>Customer ID :-</b></td>
		<td>${cus.id}</td>
	</tr>
<tr style="height:30px">
		<td><b>Customer Name :-</b></td>
		<td>${cus.name}</td>
	</tr>
	<tr style="height:30px">
		<td><b>Customer Email :-</b></td>
		<td>${cus.email}</td>
	</tr>
	<tr style="height:30px">
		<td><b>Customer Phone :-</b></td>
		<td>${cus.phone}</td>
	</tr>
	<tr style="height:30px">
		<td><b>Customer User Name :-</b></td>
		<td>${cus.userName}</td>
	</tr>
<tr style="height:30px">
		<td><b>Customer Password :-</b></td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<br>
	<input type="button" name="update" value="Update My Data">
	</a>

	<br>
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
	</center>
</body>
</html>