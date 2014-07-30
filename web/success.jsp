<%-- 
    Document   : success
    Created on : Jul 22, 2014, 10:37:30 AM
    Author     : Ngo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <c:choose>
                        <c:when test="${empty sessionScope['loginAdmin']}">
                            <jsp:forward page="Home.jsp"></jsp:forward>
                        </c:when>
                        <c:otherwise>
                            <div class="information-left"> Welcome, <font color="#0033FF">${sessionScope['loginAdmin']}</font><br/>
                                <a href="Controller?action=logoutAdmin">Log out</a>
                            </div><!-- kết thúc information-left -->
                        </c:otherwise>
                    </c:choose>
    </body>
</html>
