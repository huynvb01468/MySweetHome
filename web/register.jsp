<%-- 
    Document   : Home
    Created on : Jul 19, 2014, 10:40:00 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
        <div id="slider">
            <img src="images/img1.jpg" alt="" title="<strong>Villa Neverland, 2006</strong><span>9 rooms, 3 baths, 6 beds, building size: 5000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 600 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img2.jpg" alt="" title="<strong>Villa Lipsum, 2008</strong><span>8 rooms, 4 baths, 4 beds, building size: 4500 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 500 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img3.jpg" alt="" title="<strong>Villa Dolor Sid, 2007</strong><span>11 rooms, 3 baths, 5 beds, building size: 6000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 650 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img4.jpg" alt="" title="<strong>Villa Nemo Enim, 2010</strong><span>5 rooms, 2 baths, 4 beds, building size: 3000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 400 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img5.jpg" alt="" title="<strong>Villa Nam Libero, 2003</strong><span>7 rooms, 4 baths, 6 beds, building size: 7000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 700 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
        </div>
    </tiles:putAttribute>
    <tiles:putAttribute name="left-content1">
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />
        <h2 align="center">Register Form</h2>
        <form method="post" action="addUser?action=add" name="register-form1" >
            <div class="register-form" align="center">
                <p>
                    <label class="label"  for="login">UserName:</label>
                    <input type="text" class="textbox" name ="txtUsername"/>
                </p>

                <p>
                    <label class="label"  for="password">Password:</label>
                    <input type="password" class="textbox" name ="txtPassword"/> 
                </p>
                <p>
                    <label class="label"  for="password">Full Name:</label>
                    <input  type="text" class="textbox" name ="txtFullname"/>
                </p>
                <p>
                    <label class="label"  for="password">Date of Birth:</label>
                    <input type="text" class="textbox"  name ="txtBirthday"/>
                </p>
                <p>
                    <label class="label"  for="password">User :</label>
                    <select name="type"   class="textbox"> 
                        <c:forEach var="c" items="${myBean.gettypeuser()}">
                            <option value="${c.id}" >${c.value}</option>
                        </c:forEach>
                    </select>
                </p> 
                <p>
                    <label class="label"  for="password">Gender:</label>
                    <select name="gender" id="gender" class="textbox"> 
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </p>
                <p>
                    <label class="label"  for="password">Email:</label>
                    <input type="text" class="textbox" name ="txtEmail"/>
                </p>
                <p>
                    <label class="label"  for="password">Address:</label>
                    <textarea class="textbox" name ="txtAddress" ></textarea>
                </p>
                <p class="login-submit"> 
                    <button type="submit" class="button">Register</button>
                </p> 
            </div>
        </form>
    </tiles:putAttribute>
    <tiles:putAttribute name="right-content1">

    </tiles:putAttribute>
    <tiles:putAttribute name="left-content2">

    </tiles:putAttribute>
    <tiles:putAttribute name="right-content2">

    </tiles:putAttribute>
</tiles:insertTemplate>