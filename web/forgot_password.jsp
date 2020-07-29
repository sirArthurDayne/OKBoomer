<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/28/2020
  Time: 3:43 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/forgot_password_style.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <title>OkBoomer</title>
</head>
<body>
    <div class="main_container">
        <div class="forgot_password_container">
            <div class="forgot_password-item">
                <img src="logos/okboomer_logo.png" alt="">
            </div>
            <div class="forgot_password-item">
                <span class="forgot_password_container-subtitle">¿Que ha pasado pequeño Timmy, has olvidado tu contraseña?</span>
            </div>
            <div class="forgot_password-item">
                <input class="forgot_password-textbox" type="email" name="recover_email" placeholder="escribe tu correo aqui..." required>
            </div>
            <div class="forgot_password-item">
                <div class="forgot_password_container-buttom-container">
                    <button class="forgot_password_buttom" type="submit" id="return_to_login_buttom">Cancelar</button>
                    <button class="forgot_password_buttom" type="submit" id="send_buttom" style="margin-left:10px;">Enviar</button>
                </div>
            </div>

            <div class="forgot_password-item">
                <div class="success_message_class">
                    <span class="forgot_password_container-subtitle" id="success_recover_title">Listo Campeón</span>
                    <span id="success_recover_message">Revisa tu email para seguir con la recuperación UwU...</span>
                    <button class="forgot_password_buttom">Retornar</button>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/forgot_password_script.js"></script>
</body>
</html>
