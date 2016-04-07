<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center>
<H1 style="color:green">POLICY MANAGER</H1>
<b><c:out value="${msg }" /></b>
<BR>
<BR>
<form method="post" action="<%=request.getContextPath() %>/app">
<input type="hidden" name="action" value="login"  />
User-ID : <input type="text" name="email"  /><BR><BR>
Password:<input type="password" name="password" /><BR><BR>
<input type="submit" name="submit" value="Login To System" />
</form>
<h5 style="color:blue">IMPLEMENTED BY<br>
TE CMPN - 2
</h5>
</center>
</body>
</html>
