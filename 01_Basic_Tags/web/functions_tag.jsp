
<!--function tags are used to string manipulation-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--declaring core and functions tag library respectively-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Functions Tag</title>
    </head>
    <body>
        <h1>JSTL Functions Tags</h1>
        <br>

        <!--declare variable using core tag-->
        <c:set var="name" value="Hello World"></c:set>
        <h2><c:out value="${name}"></c:out></h2>

            <!--print string length using core and function tag-->
            <h2>Length of the string is: <c:out value="${fn:length(name)}"></c:out></h2>

            <!--converting upper case--> 
            <h2><c:out value="${fn:toUpperCase(name)}"></c:out></h2>

            <!--check a particular value is present in the string or not-->
            <h2><c:out value="${fn:containsIgnoreCase(name,'world')}"></c:out></h2>
    </body>
</html>
