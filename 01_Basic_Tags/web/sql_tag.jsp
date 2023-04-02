
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SQL Tag</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>JSTL SQL Tags</h1>

        <!--loading driver, creating connection and setting database variable-->
        <sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1524:orcl2" user="scott" password="system" var="data"></sql:setDataSource>

            <!--accessing data into result set variable-->
        <sql:query dataSource="${data}" var="rs" >select * from users</sql:query>

            <div class="container">
                <table class="table">
                    <tr>
                        <td>User ID</td>
                        <td>Name</td>
                        <td>Email</td>
                    </tr>
                    <!--showing data by traversing over the rows-->
                <c:forEach items="${rs.rows}" var="row">
                    <tr>
                        <td><c:out value="${row.u_id}"></c:out></td>
                        <td><c:out value="${row.name}"></c:out></td>
                        <td><c:out value="${row.email}"></c:out></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
