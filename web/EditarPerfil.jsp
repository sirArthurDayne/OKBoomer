<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 07/28/2020
  Time: 7:55 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Ok Boomer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;800&display=swap" rel="stylesheet">
    <link href="assets/css/Editar_perfil.css" rel="stylesheet" type="text/css"/>
    <link rel="shorcut icon" href="logos/okboomer_minilogo.png"/>
</head>
<body>

    <%--navbar--%>
    <%@ include file="templates/navbar.jsp" %>
    <%--modal de postear--%>
    <%@ include file="templates/post_modal.jsp" %>
    <%--modal de notificaciones--%>
    <%@ include file="templates/notifications.jsp" %>

    <div class="main_content">
        <div class="edit_profile_container">
            <div class="edit_profile_container-item">

                <div class="edit_profile_container-section">
                    <span class="edit_profile-subtitle">Datos Personales</span>
                    <form method="get">
                        <div class="edit_profile_container-subitem">
                            <input class="edit_profile-textbox" type="text" id="fname" name="fname" placeholder="new name"><br>
                            <input class="edit_profile-textbox" type="text" id="lname" name="lname"placeholder="new lastname"><br>
                            <input class="edit_profile-textbox" type="text" id="bio" name="bio"placeholder="new description">
                        </div>
                    </form>
                </div>


                <div class="edit_profile_container-section">
                    <span class="edit_profile-subtitle">Datos de cuenta</span>
                    <form method="get">
                        <div class="edit_profile_container-subitem">
                            <div class="edit_profile_container-subsection">
                                <input class="edit_profile-textbox" type="text" id="fname" name="fname" placeholder="new user@name"><br>
                                <input class="edit_profile-textbox" style="margin-left: 10px;" type="text" id="fname" name="fname" placeholder="new account@mail"><br>
                            </div>
                            <span class="edit_profile-subtitle">contraseña</span>
                            <input class="edit_profile-textbox" type="text" id="fname" name="fname" placeholder="*******"><br>
                            <span class="edit_profile-subtitle">contraseña(repetir)</span>
                            <input class="edit_profile-textbox" type="text" id="fname" name="fname" placeholder="*******"><br>
                        </div>
                    </form>
                </div>

                <div class="edit_profile_container-section">
                    <span class="edit_profile-subtitle">Sexo</span>
                    <form method="get">
                        <div class="edit_profile_container-subitem">
                            <div class="edit_profile_container-subsection">
                                <input style="margin-left: 30px;" name="solic" type="radio" value="M" />Hombre
                                <input style="margin-left: 30px;" name="solic" type="radio" value="F" />Mujer
                                <input style="margin-left: 30px;" name="solic" type="radio" value="I" />Indefinido
                            </div>
                        </div>
                    </form>
                </div>


                <div class="edit_profile_container-section">
                    <form method="get" action="profile.jsp">
                        <div class="edit_profile_container-subitem" style="flex-direction: row;">
                            <button class="edit_profile-buttom">Cancelar</button>
                            <button  class="edit_profile-buttom">Guardar</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <%@ include file="templates/footer.jsp"%>
</body>
</html>
