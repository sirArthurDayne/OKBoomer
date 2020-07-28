<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/23/2020
  Time: 10:12 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/categories.css">
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
</head>
<body>
    <%@ include file="templates/navbar.jsp" %>
    <%--modal de postear--%>
    <%@include file="templates/post_modal.jsp"%>

    <div class="main_content">
        <h2 class="main-title">Categorias Memisticas</h2>
        <div class="category-subtitle">
            <h3>Anime</h3>
        </div>
        <div class="category">
            <div class="category-content_container">
                <div class="category-content-item" style="--image_url:url(assets/img/abstract2.jpg);">
                    <img src="assets/img/abstract2.jpg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/de5WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/ab1WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/1faWhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/1a7WhatsAppImage2020053.jpeg" alt="">
                </div>
            </div>
        </div>
        <hr/>
        <div class="category-subtitle">
            <h3>Cuarentena</h3>
        </div>
        <div class="category">
            <div class="category-content_container">
                <div class="category-content-item">
                    <img src="http://u.cubeupload.com/ivanrl73/efeWhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/82WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/153WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/fd5WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/2d0WhatsAppImage2020053.jpeg" alt="">
                </div>
            </div>
        </div>
        <hr/>

        <div class="category-subtitle">
            <h3>Geek</h3>
        </div>
        <div class="category">
            <div class="category-content_container">
                <div class="category-content-item">
                    <img src="http://u.cubeupload.com/ivanrl73/8f8WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/626WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/e8dWhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/459WhatsAppImage2020053.jpeg" alt="">
                </div>
                <div class="category-content-item ">
                    <img src="http://u.cubeupload.com/ivanrl73/771WhatsAppImage2020053.jpeg" alt="">
                </div>
            </div>
        </div>
        <hr/>

    </div>

    <%@ include file="templates/footer.jsp" %>
    <script language="JavaScript" src="assets/js/modal_overlay.js"></script>
</body>
</html>
