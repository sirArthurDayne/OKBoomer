<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/23/2020
  Time: 10:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/profile.css">
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <%@ include file="templates/navbar.jsp" %>
    <%--modal de postear--%>
    <%@include file="templates/post_modal.jsp"%>
    <%--modal de notificaciones--%>
    <%@include file="templates/notifications.jsp"%>

    <div class="main_content">
        <%--Codigo de profile section--%>
        <div class="profile-container">
            <div class="profile-image">
                <img class="profile-pic" id="profile_pic" src="logos/user_ok.png"/>
            </div>
            <%--TODO: recuperar username de la BD--%>
            <div class="profile-user">
                <h1 class="profile-user-name">@JhonDoe</h1>
                <a href="EditarPerfil.html">
                    <buttom type="submit" id="edit_profile" name="edit_profile" class="profile-buttom">EditarPerfil</buttom>
                </a>
                <%--TODO:mandar request a traves de la BD, cambiar texto del boton cuando se de click --%>
                <a href="#">
                    <buttom  type="submit" id="send_friendrequest" class="profile-buttom">Enviar Solicitud</buttom>
                </a>
            </div>
            <%--TODO: esto se podria con la bd?--%>
            <div class="profile-stats">
                <ul>
                    <li>Posts:<span class="profile-stats-count">4</span></li>
                    <li>Amigos:<span class="profile-stats-count"> 12 </span></li>
                    <%--<li>Seguidos<span class="profile-stats-count"> 1</span></li>--%>
                </ul>
            </div>
            <div class="profile-bio">
                <span>Lores Ipsum.Lorem ipsum dolor sit, amet consectetur adipisicing elit</span>
            </div>
        </div>

        <br>
        <br>
        <%--TODO: Conectar a BD, recuperar datos haciendo lo mismo truco que se hizo en home.jsp--%>
        <div class="grid_layout">
            <div class="grid_layout-item small show_image" id="user_image" style="--image_url:url(../img/abstract.jpg)">
                <div class="image-overlay">
                    <%--TODO: agregar contador de likes con la bd, posible contador de comments--%>
                    <ul class="profile-image-stats">
                        <li> <span> <img src="logos/like.svg" /> 12</span> </li>
                        <li> <span><img src="https://imgur.com/E7NzaDh.png"/> 5</span> </li>
                    </ul>
                </div>
            </div>
            <div class="grid_layout-item wide show_image" id="user_image2" style="--image_url:url(../img/abstract2.jpg)">
                <div class="image-overlay">
                    <ul class="profile-image-stats">
                        <li> <span> <img src="logos/like.svg" /> 12</span> </li>
                        <li> <span><img src="https://imgur.com/E7NzaDh.png" /> 5</span> </li>
                    </ul>
                </div>
            </div>
            <div class="grid_layout-item small show_image" id="user_image3" style="--image_url:url(../img/memazo.jpg)">
                <div class="image-overlay">
                    <ul class="profile-image-stats">
                        <li> <span> <img src="logos/like.svg" /> 12</span> </li>
                        <li> <span><img src="https://imgur.com/E7NzaDh.png" /> 5</span> </li>
                    </ul>
                </div>
            </div>
            <div class="grid_layout-item small show_image" id="user_image4" style="--image_url:url(../img/abstract.jpg)">
                <div class="image-overlay">
                    <ul class="profile-image-stats">
                        <li> <span> <img src="logos/like.svg" /> 12</span> </li>
                        <li> <span><img src="https://imgur.com/E7NzaDh.png"/> 5</span> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script>
        //control del texto al dar click en friend request
        const friend_requestbuttom = document.getElementById("send_friendrequest");
        var is_pressed = false;
        friend_requestbuttom.addEventListener('click', function () {
            if(!is_pressed)
            {
                friend_requestbuttom.innerText = "Cancelar Solicitud";
            }
            else{
                friend_requestbuttom.innerText =  "Enviar Solicitud";
            }
            is_pressed = !is_pressed;
        })
    </script>
    <%@ include file="templates/footer.jsp" %>
    <script language="JavaScript" src="assets/js/modal_overlay.js"></script>
</body>
</html>
