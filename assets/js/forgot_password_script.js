//script de forgot_pasword.html



//recuperacion de objetos
var return_to_login_buttom = document.getElementById("return_to_login_buttom"); 

//TODO: agregar transicion a otra pantalla
var send_email_buttom = document.getElementById("send_buttom");

//llamar a los listeners.
return_to_login_buttom.addEventListener('click', function(){ window.location = 'index.html';});//regresa al login
send_email_buttom.addEventListener('click', function() { 
                                            let message_div = document.querySelector(".success_message_class");
                                                message_div.style.opacity = "1.0"; 
                                            });