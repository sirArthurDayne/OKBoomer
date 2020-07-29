<%-- 
    Document   : register
    Created on : Jul 27, 2020, 1:54:34 AM
    Author     : John
--%>

<%@page import="Procesos.ProcesosUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    
    //Catching register request
    //String email = request.getParameter("new_email");
    //String password = request.getParameter("new_password");
    
    //debug
    //System.out.println("[DBG]" + email);
    //System.out.println("[DBG]" + password);
    //
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css"><!--recupera la clase principal-->
    <link rel="stylesheet" href="assets/css/add_picture_style.css"><!--todo el css que usara esta pantalla-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <title>OK Boomer: Foto de Perfil</title>
</head>
<body>
    <div class="main_container">
        <div class="image_preview_container">
            <h1>OK Boomer</h1>
            <form method="POST" action="register.jsp">
            <h2>Casi terminamos pequeño Timmy, danos tu imagen para la posteridad.</h2>
                <label>
                    <span>agrega foto de perfil</span>
                    <input type="file" name="avatar" id="avatar_file"  accept="image/gif, image/jpeg, image/png" >
                    <input type="hidden" name="new_email" value="<%= request.getParameter("new_email") %>" >
                    <input type="hidden" name="new_password" value="<%= request.getParameter("new_password") %>" >
                    <input type="hidden" name="new_name" value="<%= request.getParameter("new_name") %>" >
                    <div class="image_preview" id="img_preview">
                        <img class="img_preview_image" id="avatar_img" alt="">
                    </div>
                </label>
            <button class="submit" id="upload_buttom">subir y terminar</button>
            <button class="submit" id="return_to_register_buttom">cancelar</button>
            </form>
        </div>
    </div>
    <!--permite cargar la imagen y funciones de los botones-->
    <script src="assets/js/add_avatar_script.js"></script>
</body>
</html>