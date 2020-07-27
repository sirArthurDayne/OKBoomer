//recupera los objetos
const avatarFile = document.getElementById("avatar_file");
const imagePreview = document.querySelector(".img_preview_image");
const backToRegister_buttom = document.getElementById("return_to_register_buttom");

//TODO conectar con la pantalla de menu principal o perfil 
const Send_buttom = document.getElementById("upload_buttom");


//hace el cambio a la pantalla de login
backToRegister_buttom.addEventListener("click", function() {
    window.location = "index.html";
});

//Permite agregar imagenes 
avatarFile.addEventListener("change",function() {
    const file = this.files[0];//recupera la imagen
    if(file)
    {
        //muestra el img en pantalla
        const reader = new FileReader();
        imagePreview.style.display = "block";
        //setea los datos de la imagen
        reader.addEventListener("load", function(){
            //console.log(this);
            imagePreview.setAttribute("src", this.result);
        });
        //asigna la url de la imagen
        reader.readAsDataURL(file);
    }
    else//si no asigna, limpia la pantalla
    {
        imagePreview.style.display = null;
        imagePreview.setAttribute("src", "");
    }
} );
