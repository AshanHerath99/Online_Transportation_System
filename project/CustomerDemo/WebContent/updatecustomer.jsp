<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Taxi</title>
	<style type="text/css">
		
		table.outset {border-style: outset;

	}

			tr,td{
	 background-color: #fff0f5;
	 	border: 2px solid black;
  border-radius: 25px;}
		
		body {
  background-image: url('img/elements/pp.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;

}
	</style>
</head>
<body>
<center>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post">
	<br><br><br>
	<h1 style="color: yellow ">Customer Account Update...</h1>
<table class="outset" style="width:30%">
		<tr style="height:30px">
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr style="height:30px">
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr style="height:30px">
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr style="height:30px">
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
<tr style="height:30px">
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
	<tr style="height:30px">
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
</center>
</body>
</html>