<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
 
 <html><body><center>
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
</table>
    <h5 style="color:blue">IMPLEMENTED BY<br>
TE CMPN - 2
</h5></center>
</body>
</html>
