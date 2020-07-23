<%-- 
    Document   : home
    Created on : Jul 22, 2020, 2:29:35 AM
    Author     : John
--%>

<%@page import="Entidades.Post"%>
<%@page import="java.util.List"%>
<%@page import="Procesos.ProcesosPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Ok Boomer</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/home.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@ include file="templates/navbar.jsp" %>

        <div class="main_content">
            <div class="grid_layout">
                <%
                    ProcesosPost pPost = new ProcesosPost();
                    List<Post> posts = pPost.ConsultarData();
                    //render de Posts
                    try{
                        for(Post post: posts){%>
                            <div class="grid_layout-item small show_image" onclick="modal_show(this)" id="meme" style="--image_url:url(<%= post.getImage() %>);">
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
            <span class="close">&times;</span>
            <img class="modal-content" id="img01">
            <div id="caption"></div>
        </div>
                    
    <%@ include file="templates/footer.jsp" %>
    <script>
        function modal_show(memeElement){
            // Get the modal
            var modal = document.getElementById("myModal");
            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");
            memeElement.onclick = function(){
                modal.style.display = "block";
                modalImg.src = memeElement.getElementsByTagName("img")[0].src;
                captionText.innerHTML = memeElement.getElementsByTagName("p")[0].innerHTML;
            }

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
            modal.style.display = "none";
            }
        }
        
        meme_element = document.getElementById('meme');
        size_dice = Math.floor((Math.random() * 6) + 1);
        if (size_dice <= 2){
            meme_element.setAttribute('class', 'grid_layout-item small show_image');
        }
        else if(size_dice <= 4){
            meme_element.setAttribute('class', 'grid_layout-item medium show_image');
        }
        else{
            meme_element.setAttribute('class', 'grid_layout-item wide show_image');
        }
        
    </script>
    </body>
</html>

