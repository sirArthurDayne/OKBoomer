<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/26/2020
  Time: 10:41 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" %>
<link rel="stylesheet" href="assets/css/modal_post.css">
<%--modal de postear--%>
<div class="modal_post" id="new_post_modal">
    <div class="modal_post-content">
        <span class="close" id="close_span">&times;</span>
        <h2>New Post Incoming!</h2>
        <%--TODO: MANDAR DATOS A LA BD--%>
        <form method="POST" action="newpost.jsp">
            <input class="modal_post-textbox" type="text" name="post_title" id="new_post_tittle" placeholder="titulo" required>
            <textarea class="modal_post-textarea"  rows="5" cols="50" placeholder="mi descripcion" name="descripcion"   id="song_description" required></textarea><br>
            <input class="modal_post-textbox" type="text" name="image" placeholder="Imagen(url)" side="50" id="song_image"required><br/>
            <button class="modal_post-buttom" type="submit">Postear</button>
        </form>
    </div>
</div>
