<%--
    Document   : navbar.jsp
    Created on : Jul 22, 2020, 2:25:02 AM
    Author     : John, Xavi
--%>

<%@page contentType="text/html" language="java" %>
<link rel="stylesheet" href="assets/css/navbar.css">
        <nav class="navbar" id="navbar">
            <ul class="navbar-nav">
                <li class="logo">
                        <img id="logo" class="" src="logos/okboomer_minilogo.png"/>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="#" id="new_post_buttom">
                        <img class="icon" src="logos/add_icon.png"/>
                        <span class="link-text">New Post</span>
                    </a>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="home.jsp"><img class="icon" src="logos/home.png"/>
                        <span class="link-text">Home</span>
                    </a>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="search.jsp"><img class="icon" src="logos/search_icon.png"/>
                        <span class="link-text">Buscar</span>
                    </a>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="categorias.jsp"><img class="icon" src="logos/categorias.png"/>
                        <span class="link-text">Categorias</span>
                    </a>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="#" id="notification_buttom"><img class="icon" src="logos/campana.png"/>
                        <span class="link-text">Notificaciones</span>
                    </a>
                </li>
                <li class="navbar-item">
                    <a class="navbar-link" href="profile.jsp"><img class="icon" src="logos/user_ok.png"/>
                        <span class="link-text">Perfil</span>
                    </a>
                </li>
            </ul>
        </nav>
<script>
    const navbar_obj = document.getElementById("navbar");
    const logo_img = document.getElementById("logo");
    navbar_obj.addEventListener('mouseover', function () {
        logo_img.src="logos/okboomer_logo.png";
    });
    navbar_obj.addEventListener('mouseout', function () {
        logo_img.src="logos/okboomer_minilogo.png";
    })
</script>
