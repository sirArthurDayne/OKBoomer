<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/23/2020
  Time: 10:20 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/search.css">
    <link rel="stylesheet" href="assets/css/home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <%@ include file="templates/navbar.jsp" %>
    <%--modal de postear--%>
    <%@include file="templates/post_modal.jsp"%>

    <div class="main_content">
        <div class="search-container">
            <div class="searchbar" action="">
                <form action="">
                    <input class="search-input" type="text" placeholder="???" name="search">
                    <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                </form>
            </div>
        </div>
        <div class="grid_layout">
            <div class="grid_layout-item medium show_image" style="--image_url:url(../img/abstract.jpg);">
                <div class="image-overlay"><span>Imagen 1</span></div>
            </div>
            <div class="grid_layout-item show_image" style="--image_url:url(../img/abstract2.jpg);">
                <div class="image-overlay"><span>Imagen 2</span></div>
            </div>
            <div class="grid_layout-item small show_image" style="--image_url:url(../img/memazo.jpg);">
                <div class="image-overlay"><span>Imagen 3</span></div>
            </div>
        </div>
    </div>

    <%@ include file="templates/footer.jsp" %>
    <script language="JavaScript" src="assets/js/modal_overlay.js"></script>
</body>
</html>
