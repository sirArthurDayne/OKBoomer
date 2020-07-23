<%-- 
    Document   : profile
    Created on : Jul 22, 2020, 2:32:26 AM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/profile.css">
    <link rel="stylesheet" href="assets/css/categories.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
    <body>
        <%@ include file="templates/navbar.jsp" %>

        <div class="container">
            <div class="profile">
                <div class="user-card">
                  <img src="logos/user.svg" class="rounded" alt="Cinque Terre">
                    <!--esto se quedo pegao con el del contenido del profile!-->
                    <div class="mision">
                        <p>Seguidos:1005</p><br>
                        <p>Seguidores:100</p><br>
                        <p>Publicaciones:4</p>
                    </div>
                    <div class="username">
                        @anon507
                    </div>
                </div>
            </div>
            <div class="profile-content">
                <div class="grid-container">
                    <div class="grid-item"><img src="http://u.cubeupload.com/ivanrl73/8f8WhatsAppImage2020053.jpeg" width='200' height='220'>
                    <p display=inline-block><img src="https://imgur.com/HAfNoJo.png" /></p><p display=inline-block><img src="https://imgur.com/E7NzaDh.png"/></p> </div>
                    <div class="grid-item"><img src="http://u.cubeupload.com/ivanrl73/626WhatsAppImage2020053.jpeg"  width='200' height='220'/>
                      <p display=inline-block><img src="https://imgur.com/HAfNoJo.png" /></p><p display=inline-block><img src="https://imgur.com/E7NzaDh.png"/></p></div>
                    <div class="grid-item"><img src="http://u.cubeupload.com/ivanrl73/e8dWhatsAppImage2020053.jpeg"  width='200' height='220'/>
                      <p display=inline-block><img src="https://imgur.com/HAfNoJo.png" /></p><p display=inline-block><img src="https://imgur.com/E7NzaDh.png"/></p></div>  
                    <div class="grid-item"> <img src="http://u.cubeupload.com/ivanrl73/459WhatsAppImage2020053.jpeg"    width='200' height='220' />
                      <p display=inline-block><img src="https://imgur.com/HAfNoJo.png" /></p><p display=inline-block><img src="https://imgur.com/E7NzaDh.png"/></p>
                    </div>
                </div>
            </div>     
        </div><br><br>
        <%@ include file="templates/footer.jsp" %>
    </body>
</html>

