<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/23/2020
  Time: 10:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Procesos.ProcesosUser"%>
<%@page import="Entidades.User"%>
<%@page import="Entidades.Post"%>
<%@page import="java.util.List"%>
<%@page import="Procesos.ProcesosPost"%>
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
        <%
            Cookie[] state_cookies = request.getCookies();
            ProcesosPost pPost = new ProcesosPost();
            ProcesosUser pUser = new ProcesosUser();
            
            List<Post> posts = new ArrayList<Post>();
            User user = new User();

            
            //Renders Own profile or Another Users
            if(request.getParameterMap().containsKey("name"))
            {
                
                System.out.println("[+] ID Found:  "+ request.getParameter("name"));
                user = pUser.ConsultarData(Integer.parseInt(request.getParameter("name")));
                posts = pPost.ConsultarData(Integer.parseInt(request.getParameter("name")));
            }
            else{
                posts = pPost.ConsultarData(Integer.parseInt(state_cookies[1].getValue()));
                user = pUser.ConsultarData(Integer.parseInt(state_cookies[1].getValue()));
            }

        %>
        <div class="main_content">
            <%--Codigo de profile section--%>
            <div class="profile-container">
                <div class="profile-image">
                    <img class="profile-pic" id="profile_pic" src="logos/user_ok.png"/>
                </div>
                <div class="profile-user">
                    <h1 class="profile-user-name">@<%= user.getUser()  %></h1>
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
            <div class="main_content">
            <div class="grid_layout">


            <%try{
                for(Post post: posts){%>
                <div class="grid_layout-item small show_image" onclick="modal_show(this)" id="meme" style="--image_url:url(<%= post.getImage() %>);">
                    <%-- Todos los elementos hidden son para el modal. --%>
                    <img hidden id="myImg" src="<%= post.getImage() %>" />
                    <div class="image-overlay"><span><%= post.getTitle() %></span></div>
                    <p hidden><%= post.getDescription() %></p>
                </div>
                <%}
                }
                catch(Exception e){%>
                <p>Woops. Algo Paso.</p>
            <%}%>
            </div>
            </div>
            <div id="myModal" class="modal">
                <span class="close" id="close_span">&times;</span>
                <img class="modal-content" id="img01">
                <div id="caption"></div>
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
                    const request = new Request('friend.jsp', {
                            method: 'POST', 
                            headers:{
                                'Content-Type': 'application/x-www-form-urlencoded'},
                            body: 'friend=<%= user.getUserID() %>'});
                    fetch(request)
                    .then(response => {
                      if (response.status === 200) {
                        console.log('sent :^)');
                      } else {
                        throw new Error('Something went wrong on api server!');
                      }
                    })
                }
                is_pressed = !is_pressed;
            })
        </script>
        <%@ include file="templates/footer.jsp" %>
        <script language="JavaScript" src="assets/js/modal_overlay.js"></script>
    </body>
</html>
