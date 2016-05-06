<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body bgcolor="#22c1dd">
	<h1> ${title}</h1>
	<h1>${message}</h1>

	
	<a href="<%=request.getContextPath()%>/login"> Sign-In</a>
</body>
</html>





























