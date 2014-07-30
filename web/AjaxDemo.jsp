<%-- 
    Document   : AjaxDemo
    Created on : Jul 25, 2014, 1:14:17 AM
    Author     : NguyenVan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css" type="text/css" media="all">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />
    <c:forEach var="p" items="${myBean.getnormal()}">
                <a href="#">
                    <div class="items-land">
                        <p class="text-info">
                        <h5 class="color1">${p.title}</h5>
                        <span style="color: #cccccc">Price: $ ${p.price}. Square Footage: ${p.bathroom}.<br/>
                        Bedroom: ${p.bedroom}, bathroom: ${p.bathroom}.
                        Status:</span> ${p.status}.
                        </p>
                    </div>
                </a>                                                                            
            </c:forEach>
    </body>
</html>
