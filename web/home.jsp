<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/23/2020
  Time: 10:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Entidades.Post" %>
<%@page import="java.util.List"%>
<%@page import="Procesos.ProcesosPost"%>
<%@ page contentType="text/html" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <%@ include file="templates/navbar.jsp" %>

    <%--modal de postear--%>
    <%@ include file="templates/post_modal.jsp" %>

    <div class="main_content">
        <div class="grid_layout">
            <%
                ProcesosPost pPost = new ProcesosPost();
                List<Post> posts = pPost.ConsultarData();
                //render de Posts
                try{
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
        <span class="close" id="close_meme_button">&times;</span>
        <img class="modal-content" id="img01">
        <div id="caption"></div>
    </div>
    <%@ include file="templates/footer.jsp" %>
    <script language="JavaScript" src="assets/js/modal_overlay.js"></script>
</body>
</html>
