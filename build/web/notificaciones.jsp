<%-- 
    Document   : notificaciones
    Created on : Jul 22, 2020, 2:32:40 AM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/PrefNotis.css">
    <link href="assets/css/home.css" rel="stylesheet" type="text/css"/>
</head>
    <body>
        <%@ include file="templates/navbar.jsp" %>
        <div class="container">  
            <div class="opci">
                <div class="opciones">
                    <button type="button" class="btn btn-secondary">Perfil</button><br>
                    <button type="button" class="btn btn-secondary">Contraseña</button><br>
                    <button type="button" class="btn btn-secondary">Notificaciones</button><br>
                    <button type="button" class="btn btn-secondary">Privacidad y Seguridad</button><br>
                    <button type="button" class="btn btn-secondary">Acerca de Nosotros</button><br>
                </div>
            </div>

            <div class="opcinot">
                <div class="confinot">
                    <p>
                        <h3>Dislikes</h3>
                        <form method="get">
                            <input name="notif" type="radio" value="desact" />Desactivados
                            <br />
                            <input name="notif" type="radio" value="sigo" />Personas a las que sigo
                            <br />
                            <input name="notif" type="radio" value="todos" />De Todos
                            <br />
                        </form>
                        <h3>Comentarios</h3>
                        <form method="get">
                            <input name="comen" type="radio" value="desact" />Desactivados
                            <br />
                            <input name="comen" type="radio" value="sigo" />Personas a las que sigo
                            <br />
                            <input name="comen" type="radio" value="todos" />De Todos
                        </form>
                        <h3>Me Gusta y Comentarios de memes en los que apareces</h3>
                        <form method="get">
                            <input name="like" type="radio" value="desact" />Desactivadas
                            <br />
                            <input name="like" type="radio" value="sigo" />Personas a las que sigo
                            <br />
                            <input name="like" type="radio" value="todos" />De Todos
                        </form>
                        <h3>Solicitudes de Amistad y Seguimiento</h3>
                        <form method="get">
                            <input name="solic" type="radio" value="desact" />Desactivadas
                            <br />
                            <input name="solic" type="radio" value="activ" />Activadas
                            <br />
                        </form>
                    </p>
                    <form method="get" action="home.html">
                         <button class="boton">Cancelar</button> <button  class="boton">Guardar</button>
                    </form>
                </div>
            </div>
        </div> <br><br>
    <%@ include file="templates/footer.jsp" %>
    </body>
</html>
