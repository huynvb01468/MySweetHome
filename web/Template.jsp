<%-- 
    Document   : Template
    Created on : Jul 19, 2014, 10:38:07 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Main Page</title>
        <meta charset="utf-8">
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

    </head>

    <body id="page1">
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />
        <div class="body1">
            <div class="main">
                <!-- header -->
                <header>
                    <h1><a href="index.html" id="logo"></a></h1>
                    <div class="wrapper">
                        <ul id="icons">
                            <li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.jpg" alt=""></a></li>
                            <li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.jpg" alt=""></a></li>
                            <li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.jpg" alt=""></a></li>
                        </ul>
                    </div>
                    <nav>
                        <ul id="menu">
                            <li id="menu_active"><a href="index.html">Main Page</a></li>
                            <li><a href="Buying.html">Buying Estate</a></li>
                            <li><a href="Selling.html">Selling Estate</a></li>
                            <li><a href="Renting.html">Renting Estate</a></li>
                            <li><a href="Finance.html">Finance</a></li>
                            <li class="end"><a href="Contacts.html">Contact Us</a></li>
                        </ul>
                    </nav>
                    <div class="ic">More Website Templates @ TemplateMonster.com - October 10, 2011!</div>
                </header>
                <!-- / header -->
            </div>
        </div>
        <!-- content -->
        <div class="body2">
            <div class="main">
                <section id="content">
                    <div class="wrapper">
                        <article class="col1">
                            <tiles:insertAttribute name="body"/>
                        </article>
                        <article class="col2">
                            <form action="SearchServlet" id="form_1" method="post">
                                <div class="pad1">
                                    <h3>Find Your Property</h3>
                                    <div class="row_select">
                                        City<br>
                                        <select name="city">
                                            <option value="0">--Select--</option>
                                            <c:forEach var="c" items="${myBean.city}">
                                                <option value="${c.city_id}">${c.cityName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="row_select">
                                        <div class="cols">
                                            Type of Land:<br>
                                            <select name="type_landlot_id">
                                                <option value="0">--Select--</option>
                                                <c:forEach var="c" items="${myBean.typeofLadLot}">
                                                    <option value="${c.id}">${c.type_value}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="cols pad_left1">
                                            Demand:<br>
                                            <select name="type_demand">
                                                <option value="0">--Select--</option>
                                                <c:forEach var="c" items="${myBean.typeDemand}">
                                                    <option value="${c.demand_id}">${c.value}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row_select">
                                        <div class="cols">
                                            Price Range:<br>
                                            <input class="textboxP" type="text" name="txtPriceFrom" onkeypress='validate(event)' value="1000" />
                                        </div>
                                        <div class="cols pad_left1">
                                            to:<br>
                                            <input class="textboxP" type="text" name="txtPriceTo" onkeypress='validate(event)'/>
                                        </div>
                                    </div>
                                    <div class="row_select">
                                        <div class="cols">
                                            Bedroom(s):<br>
                                            <select name="bedroom">
                                                <option value="0">--Select--</option>
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
                                        <div class="cols pad_left1">
                                            Bathroom(s):<br>
                                            <select name="bathroom">
                                                <option value="0">--Select--</option>
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
                                    <div class="row_select pad_bot1">
                                        <div class="cols">
                                            Square Footage:<br>
                                            <select name="squareFootage">
                                                <option value="0">--Select--</option>
                                                <option value="1">0 ~ 20</option>
                                                <option value="2">20 ~ 50</option>
                                                <option value="3">50 ~ 100</option>
                                                <option value="4">100 ~</option>
                                            </select>
                                        </div>
                                        <div class="cols pad_left1">
                                            <!--
                                            <a href="SearchServlet?action=searchAll" class="button" onClick="document.getElementById('form_1').submit()">Proposals</a>
                                            -->
                                            <input type="submit" class="button" value="Proposals" />
                                        </div>
                                    </div>
                                    Know exactly what you want? <br>
                                    Try our <a href="#">Advanced Search</a>
                                </div>
                            </form>
                        </article>
                    </div>
                    <div class="wrapper">
                        <article class="col1">
                            <div class="pad_left1">
                                <tiles:insertAttribute name="left-content1"/>
                            </div>

                        </article>
                        <article class="col2">
                            <div id="login" >
                                <div class="wrapper">
                                        <c:choose>
                                            <c:when test="${empty sessionScope['loginAdmin']}">
                                                <c:choose>
                                                    <c:when test="${not empty cookie['usernameA']}">
                                                        <form method="POST" action="Login" class="login">
                                                            <h2 class="pad_bot1">Login</h2>
                                                            <div class="login-form">
                                                                <p>
                                                                    <label class="label"  for="login">UserName:</label>
                                                                    <input type="text" name="txtName" class="textbox" placeholder="name@example.com" value="${cookie['usernameA'].value}" required="true"  requiredMessage="Not Null">
                                                                </p>

                                                                <p>
                                                                    <label class="label"  for="password">Password:</label>
                                                                    <input type="password" name="txtPass" id="password" class="textbox" placeholder="**********" value="${cookie['passA'].value}" required="true"  requiredMessage="Not Null">
                                                                </p>

                                                                <p>
                                                                    <label class="label" ></label>
                                                                    <input type="checkbox" name="Remember"  checked="true"/>remember me <br/>
                                                                </p>
                                                                <p class="login-submit">
                                                                    <a href="register.jsp" class="button" style="margin: 0 20px;">Register</a>
                                                                    <button type="submit" class="button">Login</button>
                                                                </p>
                                                                <p class="forgot-password">
                                                                    <label class="label" ></label>
                                                                    <a href="#">Forgot your password?</a>
                                                                </p>
                                                            </div>
                                                        </form>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="Login" class="login">
                                                            <div class="login-form">
                                                                <p>
                                                                    <label class="label" for="login">UserName:</label>
                                                                    <input type="text" name="txtName" class="textbox" placeholder="name@example.com">
                                                                </p>

                                                                <p>
                                                                    <label class="label" for="password">Password:</label>
                                                                    <input type="password" name="txtPass" id="password" class="textbox" placeholder="**********">
                                                                </p>

                                                                <p>
                                                                    <label class="label" ></label>
                                                                    <input type="checkbox" checked="true"/>remember me <br/>
                                                                </p>
                                                                <p class="login-submit">
                                                                    <label class="label" ></label>
                                                                    <button type="submit" class="button">Login</button>
                                                                </p>

                                                                <p class="forgot-password">
                                                                    <label class="label" ></label>

                                                                    <a href="#">Forgot your password?</a>
                                                                </p>
                                                            </div>
                                                        </form>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="information-left"> 
                                                    <h2 class="pad_bot1">Infomation</h2>
                                                    <h3 class="well"><strong>Welcome:</strong> ${sessionScope['loginAdmin']}</h3>
                                                    <span class="money">Money: $</span>
                                                    <table>
                                                        <tr>
                                                            <td><a href="#" class="button">Notice</a><br/></td>
                                                            <td><a href="postBuy.jsp" id="postnews" class="button">Posted News</a><br/></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td><a href="Controller?action=logoutAdmin" id="logout" class="button">Log out</a></td>
                                                        </tr>
                                                    </table>
                                                    <!--
                                                    <a href="#" class="button">Notice</a><br/>
                                                    <a href="#" id="postnews" class="button">Posted News</a><br/>
                                                    <a href="Controller?action=logoutAdmin" id="logout" class="button">Log out</a>
                                                    -->
                                                </div><!-- kết thúc information-left -->
                                                <script language="javascript" type="text/javascript">
                                                    document.getElementById("a").style.visibility = "none";
                                                </script>
                                            </c:otherwise>
                                        </c:choose>
                                </div>
                            </div>
                        </article>
                        <!--
                    <article class="col2">
                        <div id="login" >
                            <h2 class="pad_bot1" >Login !!!</h2>
                        <c:choose>
                            <c:when test="${not empty cookie['usernameA']}">
                                <form method="POST" action="Login" class="login">
                                    <div class="login-form">
                                        <p>
                                            <label class="label"  for="login">UserName:</label>
                                            <input type="text" name="txtName" class="textbox" placeholder="name@example.com" value="${cookie['usernameA'].value}" required="true"  requiredMessage="Not Null">
                                        </p>

                                        <p>
                                            <label class="label"  for="password">Password:</label>
                                            <input type="password" name="txtPass" id="password" class="textbox" placeholder="**********" value="${cookie['passA'].value}" required="true"  requiredMessage="Not Null">
                                        </p>

                                        <p>
                                            <label class="label" ></label>
                                            <input type="checkbox" name="Remember"  checked="true"/>remember me <br/>
                                        </p>
                                        <p class="login-submit">
                                            <a href="#" class="button" style="margin: 0 20px;">Register</a>
                                            <button type="submit" class="button">Login</button>
                                        </p>
                                        <p class="forgot-password">
                                            <label class="label" ></label>
                                            <a href="#">Forgot your password?</a>
                                        </p>
                                    </div>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <form method="POST" action="Login" class="login">
                                    <div class="login-form">
                                        <p>
                                            <label class="label" for="login">UserName:</label>
                                            <input type="text" name="txtName" class="textbox" placeholder="name@example.com">
                                        </p>

                                        <p>
                                            <label class="label" for="password">Password:</label>
                                            <input type="password" name="txtPass" id="password" class="textbox" placeholder="**********">
                                        </p>

                                        <p>
                                            <label class="label" ></label>
                                            <input type="checkbox" checked="true"/>remember me <br/>
                                        </p>
                                        <p class="login-submit">
                                            <label class="label" ></label>
                                            <button type="submit" class="button">Login</button>
                                        </p>

                                        <p class="forgot-password">
                                            <label class="label" ></label>

                                            <a href="#">Forgot your password?</a>
                                        </p>
                                    </div>
                                </form>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </article>
                        -->
                    </div>

            </div>
        </section>
    </div>
</div>
<div class="body3">
    <div class="main">
        <section id="content2">
            <div class="wrapper">
                <article class="col1">
                    <div class="pad2">
                        <tiles:insertAttribute name="left-content2"/>
                    </div>
            </div>
            </article>
            <article class="col2">
                <div class="pad1">
                    <tiles:insertAttribute name="right-content2"/>
                </div>
            </article>
    </div>
</section>
</div>
</div>
<!-- / content -->
<div class="body4">
    <div class="main">
        <!-- footer -->
        <footer>
            <span class="call">Call Center: <span>1-800-567-8934</span></span>
            Website template designed by <a href="http://www.templatemonster.com/" target="_blank" rel="nofollow">www.templatemonster.com</a><br>
            3D Models provided by <a href="http://www.templates.com/product/3d-models/" target="_blank" rel="nofollow">www.templates.com</a>
            <!-- {%FOOTER_LINK} -->
        </footer>
        <!-- / footer -->
    </div>
</div>
<script>
    function validate(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9]|\./;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault)
                theEvent.preventDefault();
        }
    }
</script>
<script type="text/javascript"> Cufon.now();</script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider({
            effect: 'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
            slices: 17,
            animSpeed: 500,
            pauseTime: 6000,
            startSlide: 0, //Set starting Slide (0 index)
            directionNav: false, //Next & Prev
            directionNavHide: false, //Only show on hover
            controlNav: true, //1,2,3...
            controlNavThumbs: false, //Use thumbnails for Control Nav
            controlNavThumbsFromRel: false, //Use image rel for thumbs
            controlNavThumbsSearch: '.jpg', //Replace this with...
            controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
            keyboardNav: true, //Use left & right arrows
            pauseOnHover: true, //Stop animation while hovering
            manualAdvance: false, //Force manual transitions
            captionOpacity: 1, //Universal caption opacity
            beforeChange: function() {
                $('.nivo-caption').animate({bottom: '-110'}, 400, 'easeInBack')
            },
            afterChange: function() {
                Cufon.refresh();
                $('.nivo-caption').animate({bottom: '-20'}, 400, 'easeOutBack')
            },
            slideshowEnd: function() {
            } //Triggers after all slides have been shown
        });
        Cufon.refresh();
    });
</script>

</body>
</html>