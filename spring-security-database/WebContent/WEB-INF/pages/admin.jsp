<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page session="true"%>
<html>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	text-align: left;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: #4CAF50;
	color: white;
}
</style>
<body>
	<h1> ${title}</h1>
	<h1> ${message}</h1>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome : ${pageContext.request.userPrincipal.name}</h2>
	</c:if>
<%-- 
	<form action="<c:url value='/logout'  />"
		method="post">
		 --%>
		
		<c:url value="/logout" var="logoutUrl"/>
<form action="${logoutUrl}" method="post">  
		
		
		
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
			 <input type="submit" value="logout">
	</form>





	<c:if test="${fn:length(empList) > 0}">
		<table cellpadding="5" id="customers">
			<tr class="even">
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>
				<th>Phone Number</th>
			</tr>
			<c:forEach items="${empList}" var="dto">
				<tr class="even">
					<td><c:out value="${dto.id}" /></td>
					<td><c:out value="${dto.name}" /></td>
					<td><c:out value="${dto.address}" /></td>
					<td><c:out value="${dto.phoneNo}" /></td>
				</tr>
			</c:forEach>


		</table>
	</c:if>
</body>
</html>