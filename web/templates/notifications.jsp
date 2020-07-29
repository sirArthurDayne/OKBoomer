<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/27/2020
  Time: 5:11 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Entidades.User"%>
<%@page import="Procesos.ProcesosUser"%>
<%@page import="Entidades.Relationship"%>
<%@page import="java.util.List"%>
<%@page import="Procesos.ProcesosRelationship"%>
<%@ page contentType="text/html" language="java" %>
<link rel="stylesheet" href="assets/css/notifications.css">

<div class="notification-container" id="notification_container">
    <div class="notification">
        <h2 style="font-family: 'Montserrat', sans-serif;font-size:2rem; font-weight: bold; color:#FFFFFF; margin-bottom: 50px;">notificaciones</h2>
        <span class="notification-container-exit" id="close_notification">&times;</span>
        
        <%
            ProcesosUser plUser = new ProcesosUser();
            ProcesosRelationship pFriend = new ProcesosRelationship();
            List<Relationship> friendsReq = pFriend.ConsultarData();
            //render de Posts
            try{
                for(Relationship friend: friendsReq){
                User user = plUser.ConsultarData(friend.getActor1()); %>
        <div class="notification-item">
           <div class="notification-item-image">
               <img class="notification-item-image-pic" src="assets/img/abstract.jpg" alt="">
           </div>
            <div class="notification-item-description">
                <p><span><%= user.getUser() %></span> quiere ser tu amigo...</p>
            </div>
            <div class="notification-item-action">
                    <buttom id="addfriend_buttom" class="notification-item-action-buttom" type="submit">Aceptar</buttom>
                    <buttom id="rejectfriend_buttom" class="notification-item-action-buttom" type="submit" style="margin-left: 50px;">Rechazar</buttom>
            </div>
        </div>
        <%}
            }
            catch(Exception e){%>
            <p>Woops. Algo Paso.</p>
        <%}%>
        
        <!--
        
        <div class="notification-item">
            <div class="notification-item-image">
                <img class="notification-item-image-pic" src="logos/user_ok.png" alt="">
            </div>
            <div class="notification-item-description">
                <p> <span>@JhonDoe</span> quiere ser tu amigo...</p>
            </div>
            <div class="notification-item-action">
                    <buttom id="addfriend_buttom" class="notification-item-action-buttom" type="submit">Aceptar</buttom>
                    <buttom id="rejectfriend_buttom" class="notification-item-action-buttom" type="submit" style="margin-left: 50px;">Rechazar</buttom>
            </div>
        </div>
        -->
    </div>
        
</div>
