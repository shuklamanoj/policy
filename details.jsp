<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
 
 <html><body><center>
<c:if test='${ email != null }'>
 <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/policy"
     user="root"  password="" scope="application"/>
     
 <sql:query dataSource="${ds}" var="result">
SELECT DISTINCT location from branchpolicy;
</sql:query>  

<table border="1" style="brder-color:red;" width="100%" cellspacing="0" cellpadding="10">
  <tr>
  <td align="center" colspan="2"><h1 style="color:GREEN;">POLICY MANAGER</h1></td>
  </tr>
  <tr>
    <td align="center" width="20%">
    <c:forEach var="row" items="${result.rows }">
    <a href="<%=request.getContextPath() %>/app?action=category&cat_id=<c:out value="${row.location }"></c:out>"><c:out value="${row.location }"></c:out></a>
    <BR>
    </c:forEach>
    </td>
    <td width="80%" align="center"><h3 style="color:BLUE;">CLICK ON THE LOCATION TO VIEW THE <BR> 
    DETAILS OF POLICY HOLDERS IN THEIR </h3> <h2 style="color:RED;">RESPECTIVE BRANCH</h2></td>
  </tr>
</table ><br>
<sql:query dataSource="${ds}" var="result2">
<%/*
SELECT  policyholder.id,policyholder.firstname,policyholder.surname,policyholder.policy_type,policyholder.premium,policyholder.start,policyholder.end, branchpolicy.location
from policyholder JOIN branchpolicy
ON branchpolicy.location='<c:out value="${loc }" />' and policyholder.id=branchpolicy.id;
*/%>
SELECT  policyholder.id,policyholder.firstname,policyholder.surname,policyholder.policy_type,policyholder.premium,policyholder.start,policyholder.end, branchpolicy.location
from policyholder,branchpolicy
where branchpolicy.location='<c:out value="${loc }" />' and policyholder.id=branchpolicy.id;
</sql:query>
<table  border="1" style="brder-color:red;" width="100%" cellspacing="0" cellpadding="10">
<tr>
<th>POLICY ID</th>
<th>FISRT NAME</th>
<th>LAST NAME</th>
<th>LOCATION</th>
<th>POLICY TYPE</th>
<th>PREMIUM AMOUNT</th>
<th>POLICY START DATE</th>
<th>POLICY END DATE</th>
</tr>
<c:forEach var="row1" items="${result2.rows }">
 <tr>
 <td><c:out value="${row1.id }" /></td>
 <td><c:out value="${row1.firstname }" /></td>
 <td><c:out value="${row1.surname }" /></td>
 <td><c:out value="${loc }" /></td>
 <td><c:out value="${row1.policy_type }" /></td>
 <td><c:out value="${row1.premium }" /></td>
 <td><c:out value="${row1.start }" /></td>
 <td><c:out value="${row1.end }" /></td>
 </tr>
    </c:forEach>

</table>
    </c:if>
    <c:if test='${ email == null }'>
    <center>
<b><c:out value="${msg }" /></b>
<BR>
<BR>
<form method="post" action="<%=request.getContextPath() %>/app">
<input type="hidden" name="action" value="login"  />
User-ID : <input type="text" name="email"  /><BR><BR>
Password:<input type="password" name="password" /><BR><BR>
<input type="submit" name="submit" value="Login To System" />
</form></center>
    </c:if>
    <h5 style="color:blue">IMPLEMENTED BY<br>
TE CMPN - 2
</h5></center>
</body>
</html>
