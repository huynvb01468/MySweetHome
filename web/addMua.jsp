<%-- 
    Document   : addMua
    Created on : Jul 30, 2014, 7:37:50 AM
    Author     : Ngo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<tiles:insertTemplate template="Template.jsp">
    <tiles:putAttribute name="body">
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />
        <c:set var="userSession" scope="session" value="${sessionScope['loginAdmin']}" />
        <c:forEach var="u" items="${myBean.getUser(userSession)}">
        <form action="add?action=addMua&id=${u.user_id}" id="form_1" method="POST">
            
            <div class="pad3">
                <h3>Input information:</h3>
                <div class="row">
                    Title :<br>
                    <input type="text"  class="inputTEX" name="txtTitle">
                </div>
                <div class="row">
                    Description: <br>
                    <input type="text" name ="desciption" class="inputTEX"/>
                </div>
                <div class="row">
                    Address: <br>
                    <input type="text"  class="inputTEX" name="txtAddress">
                </div>                  
                <div class="row_select">
                    <div class="cols">
                        City<br>
                        <select name="city">
                            <c:forEach var="c" items="${myBean.city}">
                                <option value="${c.city_id}">${c.cityName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="cols pad_left1">
                        Type of land :<br>
                        <select name="type_landlot_id">
                            <c:forEach var="c" items="${myBean.typeofLadLot}">
                                <option value="${c.id}">${c.type_value}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="cols pad_left1">
                        Bedroom(s):<br>
                        <select name="bedroom">
                            <option value="1">--Select--</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                        </select>
                    </div>
                    
                
                </div>
                <div class="row_select">
                    <div class="cols">
                        Price :<br>
                        <input type="text" name="txtPrice" class="inputp">
                    </div>
                    <div class="cols pad_left1">
                        Square Footage:<br>
                        <input type="text" name="txtSqFootage" class="inputp">
                    </div>
                    <div class="cols pad_left1">
                        Bathroom(s):<br>
                        <select name="bathroom">
                            <option value="1">--Select--</option    >
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                        </select>
                    </div>
                    
                </div>
                <div class="row_select">
                    <div class="cols">
                        <input type="reset" class="button" value="Reset"/>
                    </div>
                    <div class="cols pad_left1">
                        
                        
                       <!-- <a href="submit?action=addA&iduser=${u.user_id}" onClick="document.getElementById('form_11').submit()  class="button">Add</a>
                       -->
                       <input type="submit" value="add" class="button"/>
                        
                    </div>
                <!--</div>-->
                </div>
        </form></c:forEach>
    </tiles:putAttribute>
    <tiles:putAttribute name="left-content1">

    </tiles:putAttribute>
    <tiles:putAttribute name="right-content1">

    </tiles:putAttribute>
    <tiles:putAttribute name="left-content2">

    </tiles:putAttribute>
    <tiles:putAttribute name="right-content2">

    </tiles:putAttribute>
</tiles:insertTemplate>

