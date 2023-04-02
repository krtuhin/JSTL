
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--configuring JSTL-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Core Tags</title>
    </head>
    <body>
        <h1>JSTL Core Tags</h1>

        <!--1. set tag:- to declare variable for scope application it can be use in whole application-->
        <c:set var="i" value="20" scope="application"></c:set>
        <c:set var="icard" value="nnnn" scope="application"></c:set>

            <!--2. out tag:- to print anything-->
            <h2><c:out value="${i}"></c:out></h2>

            <!--3. remove tag: to remove already declared variable-->
        <c:remove var="i"></c:remove>

            <!--if variable is removed then default value will print-->
        <c:out value="${i}">This is default value </c:out>

            <!--4. if tag:- to check condition if true then print value under it-->
        <c:if test="${i>= 18}">
            <h3>You can vote...!</h3>
        </c:if>

        <c:if test="${i< 18}">
            <h3>You can not vote...!</h3>
        </c:if>

        <!--5. choose, when, otherwise tag:- like switch statement--> 
        <c:choose>

            <c:when test="${i >=18 && icard=='y'}">
                <h2>You can vote..!!</h2>
            </c:when>

            <c:when test="${i>=18 && icard == 'n'}">
                <h2>Make your voter card..!!</h2>
            </c:when>

            <c:when test="${i<18}">
                <h2>You are under age..!</h2>
            </c:when>

            <c:otherwise>
                <h2>This is default...</h2>
            </c:otherwise>

        </c:choose>

        <!--6. forEach tag:- to repeat and traverse (looping)-->
        <c:forEach var="j" begin="3" end="10">
            <h2>Value of J is: <c:out value="${j}"></c:out></h2>
        </c:forEach>

        <!--7. redirect tag: to redirect another page-->
        <c:redirect url="https://www.google.com"></c:redirect>

            <!--8. url tag, param tag: to create URL with attribute(param tag), help to direct search-->
        <c:url var="myurl" value="https://www.youtube.com/search">

            <c:param name="q" value="Advance Java"></c:param>

        </c:url>

        <c:redirect url="${myurl}"></c:redirect>

    </body>
</html>
