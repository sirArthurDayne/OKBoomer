<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/28/2020
  Time: 11:44 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <!--fuente agregada: Monserrat-->
    <title>OK Boomer</title>
</head>
<body>

<div class="main_container" id="main_container">
    <!--formulario de ingreso a plataforma-->
    <div class="form_container sign_in" id="signin_container">

        <h2>OK Boomer</h2>
        <form method="POST" action="login.jsp">
            <label>
                <span>Correo</span>
                <input type="email" name="user_email" placeholder="Jhon_Doe@okboomer.com" required>
            </label>
            <label>
                <span>Contraseña</span>
                <input type="password" name="user_password" placeholder="*******" required>
            </label>
            <button class="submit" id="sigin_buttom">Iniciar Sesión</button>
            <label>
                <!--transiccion a pantalla de recuperacion de contrasena-->
                <a href="forgot_password.jsp" class="forgot_password" id="forgot_password">¿Olvidaste la contraseña, verdad?</a>
            </label>
            <div class="social_media">
                <p>Iniciar sesión a través de:</p>
                <ul>
                    <li><img src="logos/google.png"></li>
                    <li><img src="logos/facebook.png"></li>
                    <li><img src="logos/twitter.png"></li>
                    <li><img src="logos/instagram.png"></li>
                </ul>
            </div>
        </form>
    </div>

    <!--formulario de registro de usuario-->
    <div class="form_container sign_up" id="signup_container">
        <form method="POST" action="add_profile_image.jsp">
            <h2>Registrate</h2>
            <div class="social_media">
                <p>Regístrate mediante:</p>
                <ul>
                    <li><img src="logos/google.png"></li>
                    <li><img src="logos/facebook.png"></li>
                    <li><img src="logos/twitter.png"></li>
                    <li><img src="logos/instagram.png"></li>
                </ul>
            </div>
            <label>
                <span>Nombre</span>
                <input type="text" name="new_name">
            </label>
            <label>
                <span>Apellido</span>
                <input type="text" name="new_lastName">
            </label>
            <label>
                <span>UserName</span>
                <input type="text" name="new_userName" required>
            </label>
            <label>
                <span>Correo</span>
                <input type="email" name="new_email" placeholder="@okboomer.com" required>
            </label>
            <label>
                <span>Contraseña</span>
                <input type="password" name="new_password" required>
            </label>
            <label>
                <span>Confirmar contraseña</span>
                <input type="password" name="new_password_2" required>
            </label>
            <label>
                <span>fecha de nacimiento</span>
                <input type="date" name="fecha" required>
            </label>
            <label>
                <span>sexo</span>
                <select id="gender">
                    <option value="0" selected="selected">masculino</option>
                    <option value="1">femenino</option>
                    <option value="2">bisexual</option>
                    <option value="3">otro</option>
                </select>
            </label>
            <button class="submit" id="signup_buttom">Registrarse</button>
        </form>
    </div>
    <!--control del overlay-->
    <div class="overlay_container">
        <div class="bg_container">
            <div class="overlay_text">
                <div>
                    <h2 id="overlay_title">¿No estás registrado?</h2>
                    <p id="overlay_subtitle">a qué estás esperando?</p>
                    <button class="submit" id="overlay_buttom">registrarse</button>
                    <%--TODO: Hacer que este tag diga si se logro registrar un user exitosamente--%>
                    <p id="output_message" name="output_message"></p>
                </div>

                <div class="image_text_logo">
                    <img src="logos/warning.png">
                    <h2>Contenido no apto para Boomers</h2>
                </div>
            </div>
        </div>

    </div>
</div>
<!--para que detecte los objetos como botones, el script se coloca al final-->
<script src="assets/js/overlay_script.js"></script>
</body>
</html>
