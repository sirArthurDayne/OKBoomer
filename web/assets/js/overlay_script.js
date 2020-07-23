/*CONTROLES DE OVERLAYS ENTRE LOGIN Y SIGNUP*/

//recuperar los botones.
var overlay_buttom = document.getElementById("overlay_buttom");
var change_to_login = document.getElementById("change_to_login_buttom");


var signin_buttom = document.getElementById("sigin_buttom");
var signup_buttom = document.getElementById("signup_buttom");


//funciones de control
let overlay_to_register = false;
function DisplayRegisterOverlay()
{
    if(!overlay_to_register)
    {
        // //manda el registro para adelante
        let signup_overlay = document.querySelector(".sign_up");
        signup_overlay.style.zIndex = "2";
        signup_overlay.style.opacity = "1.0";
        
        // //manda el login para atras
        let sigin_overlay = document.querySelector(".sign_in");
        sigin_overlay.style.zIndex = "0";
        sigin_overlay.style.opacity = "0.0";
        
        //cambia textos en el ovelay
        overlay_buttom.textContent = "Login";
        document.getElementById("overlay_title").textContent ="Ya tienes cuenta?";
        document.getElementById("overlay_subtitle").textContent = "regresa, te entrañamos mucho. ^__^";
    }
    else
    {
        //manda el register para atras
        let signup_overlay = document.querySelector(".sign_up");
        signup_overlay.style.zIndex = "0";
        signup_overlay.style.opacity = "0";
        
        //manda el login para adelante
        let sigin_overlay = document.querySelector(".sign_in");
        sigin_overlay.style.zIndex = "2";
        sigin_overlay.style.opacity = "1.0";
        
        //cambia textos en el ovelay
        overlay_buttom.textContent = "Registrate";
        document.getElementById("overlay_title").textContent ="¿No estás registrado?";
        document.getElementById("overlay_subtitle").textContent = "a qué estás esperando?. -__-";
    }
    overlay_to_register = !overlay_to_register;
}

//activar el listener para cambia el overlay
overlay_buttom.addEventListener('click', DisplayRegisterOverlay);
signup_buttom.addEventListener('click', function(){window.location="add_profile_image.html";} );