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
            Cookie[] state_cookies = request.getCookies();
            ProcesosUser plUser = new ProcesosUser();
            ProcesosRelationship pFriend = new ProcesosRelationship();
            List<Relationship> friendsReq = pFriend.ConsultarData(Integer.parseInt(state_cookies[1].getValue()));
            //render de Posts
            try{
                for(Relationship friend: friendsReq){
                User friended = plUser.ConsultarData(friend.getActor1()); %>
        <div class="notification-item">
           <div class="notification-item-image">
               <img class="notification-item-image-pic" src="assets/img/abstract.jpg" alt="">
           </div>
            <div class="notification-item-description">
                <p><span><%= friended.getUser() %></span> quiere ser tu amigo...</p>
            </div>
            <div class="notification-item-action">
                
                    <buttom id="addfriend_buttom"  class="notification-item-action-buttom" type="submit" onClick="AcceptFriend(<%= friended.getUserID() %>)">Aceptar</buttom>
                
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
        <script>
            function GetValue(value){
                return value;
            }
            function AcceptFriend(value){
                const request = new Request('friend.jsp', {
                            method: 'POST', 
                            headers:{
                                'Content-Type': 'application/x-www-form-urlencoded'},
                            body: 'action=accept&friend='+value});
                    fetch(request)
                    .then(response => {
                      if (response.status === 200) {
                        console.log("value:" + value);
                      } else {
                        throw new Error('Something went wrong on api server!');
                      }
                    })
            }
            function RejectFriend(value){
                const request = new Request('friend.jsp', {
                            method: 'POST', 
                            headers:{
                                'Content-Type': 'application/x-www-form-urlencoded'},
                            body: 'action=reject&friend='+value});
                    fetch(request)
                    .then(response => {
                      if (response.status === 200) {
                        console.log("value:" + value);
                      } else {
                        throw new Error('Something went wrong on api server!');
                      }
                    })
            }
            <%--
            var accept = document.getElementById('addfriend_buttom');
            accept.addEventListener("click", function(self){
                if(!is_pressed)
                {
                    friend_requestbuttom.innerText = "Cancelar Solicitud";
                }
                else{
                    var self = this
                    const request = new Request('friend.jsp', {
                            method: 'POST', 
                            headers:{
                                'Content-Type': 'application/x-www-form-urlencoded'},
                            body: 'action=accept&friend='+ accept.value});
                    fetch(request)
                    .then(response => {
                      if (response.status === 200) {
                        console.log("value:" + value);
                      } else {
                        throw new Error('Something went wrong on api server!');
                      }
                    })
                }
                is_pressed = !is_pressed;
            });
            document.getElementById('rejectfriend_buttom').addEventListener("click", function(){
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
                            body: 'action=delete&friend=' + this.value});
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
            });
            --%>
        </script>