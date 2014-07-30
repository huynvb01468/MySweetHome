<%-- 
    Document   : SearchInfo
    Created on : Jul 26, 2014, 4:33:16 PM
    Author     : NguyenVan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/home.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type='text/javascript'>
//<![CDATA[
        $(document).ready(function() {

            //how much items per page to show
            var show_per_page = 6;
            //getting the amount of elements inside content div
            var number_of_items = $('#content-all').children().size();
            //calculate the number of pages we are going to have
            var number_of_pages = Math.ceil(number_of_items / show_per_page);

            //set the value of our hidden input fields
            $('#current_page').val(0);
            $('#show_per_page').val(show_per_page);

            //now when we got all we need for the navigation let's make it '

            /*
             what are we going to have in the navigation?
             - link to previous page
             - links to specific pages
             - link to next page
             */
            var navigation_html = '<a class="previous_link" href="javascript:previous();">«</a>';

            var current_link = 0;
            while (number_of_pages > current_link) {
                navigation_html += '<a class="page_link" href="javascript:go_to_page(' + current_link + ')" longdesc="' + current_link + '">' + (current_link + 1) + '</a>';
                current_link++;
            }

            navigation_html += '<a class="next_link" href="javascript:next();">»</a>';

            $('#page_navigation').html(navigation_html);

            //add active_page class to the first page link
            $('#page_navigation .page_link:first').addClass('active_page');

            //hide all the elements inside content div
            $('#content-all').children().css('display', 'none');

            //and show the first n (show_per_page) elements
            $('#content-all').children().slice(0, show_per_page).css('display', 'block');

        });

        function previous() {

            new_page = parseInt($('#current_page').val()) - 1;
            //if there is an item before the current active link run the function
            if ($('.active_page').prev('.page_link').length == true) {
                go_to_page(new_page);
            }

        }

        function next() {
            new_page = parseInt($('#current_page').val()) + 1;
            //if there is an item after the current active link run the function
            if ($('.active_page').next('.page_link').length == true) {
                go_to_page(new_page);
            }

        }
        function go_to_page(page_num) {
            //get the number of items shown per page
            var show_per_page = parseInt($('#show_per_page').val());

            //get the element number where to start the slice from
            start_from = page_num * show_per_page;

            //get the element number where to end the slice
            end_on = start_from + show_per_page;

            //hide all children elements of content div, get specific items and show them
            $('#content-all').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');

            /*get the page link that has longdesc attribute of the current page and add active_page class to it
             and remove that class from previously active page link*/
            $('.page_link[longdesc=' + page_num + ']').addClass('active_page').siblings('.active_page').removeClass('active_page');

            //update the current page input field
            $('#current_page').val(page_num);
        }
//]]>
    </script>
<tiles:insertTemplate template="Template.jsp">
    <tiles:putAttribute name="body">
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />

        <div id="slider">
            <img src="images/img1.jpg" alt="" title="<strong>Villa Neverland, 2006</strong><span>9 rooms, 3 baths, 6 beds, building size: 5000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 600 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img2.jpg" alt="" title="<strong>Villa Lipsum, 2008</strong><span>8 rooms, 4 baths, 4 beds, building size: 4500 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 500 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img3.jpg" alt="" title="<strong>Villa Dolor Sid, 2007</strong><span>11 rooms, 3 baths, 5 beds, building size: 6000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 650 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img4.jpg" alt="" title="<strong>Villa Nemo Enim, 2010</strong><span>5 rooms, 2 baths, 4 beds, building size: 3000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 400 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img5.jpg" alt="" title="<strong>Villa Nam Libero, 2003</strong><span>7 rooms, 4 baths, 6 beds, building size: 7000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 700 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
        </div>
    </tiles:putAttribute>
    <tiles:putAttribute name="left-content1">
        <jsp:useBean id="mmBean" class="model.DataProcess" scope="session" />
        <c:set var= "price_From" scope="session" value="${sessionScope['priceFrom']}"/>
        <c:set var="price_To" scope="session" value="${sessionScope['priceTo']}"/>
        <c:set var="city_id" scope="session" value="${sessionScope['cityID']}"/>
        <c:set var="type_landlot_id" scope="session" value="${sessionScope['typeLandlotID']}"/>
        <c:set var="type_demand_id" scope="session" value="${sessionScope['typeDemandID']}"/>
        <c:set var="bed_room" scope="session" value="${sessionScope['bedroom']}"/>
        <c:set var="bath_room" scope="session" value="${sessionScope['bathroom']}"/>
        <c:set var="square_footage" scope="session" value="${sessionScope['squareFootage']}"/>
        <input type='hidden' id='current_page' />
        <input type='hidden' id='show_per_page' />
        <div id="content-all">
            <c:forEach var="p" items="${mmBean.getDataSearch(priceFrom, priceTo, city_id, type_landlot_id, type_demand_id, bed_room, bath_room, square_footage)}">
                <a href="#">
                    <div class="items-search">
                        <h5 class="color1">${p.title}</h5>
                        <span style="color: #cccccc">Price: $ ${p.price}. Square Footage: ${p.squareFootage}.<br/>
                            Bedroom: ${p.bedroom}, bathroom: ${p.bathroom}.
                    </div>
                </a>
            </c:forEach>
        </div>
        <div id="page_navigation"></div>
    </tiles:putAttribute>
    <!--
    <tiles:putAttribute name="left-content2">
    </tiles:putAttribute>
    -->
    <tiles:putAttribute name="right-content2">
    </tiles:putAttribute>
</tiles:insertTemplate>
