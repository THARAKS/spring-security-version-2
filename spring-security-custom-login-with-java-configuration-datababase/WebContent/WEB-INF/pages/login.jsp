<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {

	width: 300px;
	padding: 20px;
	margin: 100px, 200px, 200px,200px;
	background: #2ea9eb;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
    align:center;
     vertical-align: middle;
}
</style>
</head>
<body bgcolor=#f5cbe3>

	<h1>Spring Security Login with Database Authentication</h1>

	<div id="login-box">

		<h3>Login with Username and Password</h3>
		

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<c:if test="${fn:length(empList) > 0}">
	<table cellpadding="5">
		<tr class="even">
			<th>Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Phone Number</th>
		</tr>
		<c:forEach items="${empList}" var="dto">
			<tr class="even">
				<td> <c:out value="${dto.id}"/></td>
				<td><c:out value="${dto.name}"/></td>
				<td><c:out value="${dto.address}"/></td>
				<td><c:out value="${dto.phoneNo}"/></td>
			</tr>
		</c:forEach>
		</table>
		</c:if>
		<form name='loginForm'
			action="<c:url value='/login' />" method='POST'>
		

			<table>
				<tr>
					<td>User Name:</td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td align="center" colspan='2'><input name="submit" type="submit"
						value="Submit" /></td>
				</tr>
			</table>

			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
 


		</form>
	</div>

</body>
</html>