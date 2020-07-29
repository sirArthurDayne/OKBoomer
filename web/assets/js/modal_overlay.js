//OVERlAY de elementos de new post
const new_post_buttom = document.getElementById("new_post_buttom");
const new_post_modal = document.getElementById("new_post_modal");
//event trigger when click navbar element
new_post_buttom.addEventListener('click',function(){
    new_post_modal.classList.add('modal_post-active');//add class and make visible
    console.log("clic");
});
// When the user clicks on <span> (x), close the modal
const close_span = document.getElementById("close_span");
close_span.onclick = function() {
    new_post_modal.classList.remove('modal_post-active');
};

//OVERLAY de elementos notifications
const notification_buttom = document.getElementById("notification_buttom");
const notification_modal = document.getElementById("notification_container");

notification_buttom.addEventListener('click', function () {
    notification_modal.classList.add('notification-active');//make visible
    console.log('modal de notificaciones activo');
});
const notification_close = document.getElementById("close_notification");
notification_close.onclick = function () {
    notification_modal.classList.remove('notification-active');
};

//OVERlAY de modal_elements
// Get the modal
let modal = document.getElementById("myModal");
function modal_show(memeElement){
    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    memeElement.onclick = function(){
        modal.style.display = "block";
        modalImg.src = memeElement.getElementsByTagName("img")[0].src;
        captionText.innerHTML = memeElement.getElementsByTagName("p")[0].innerHTML;
    }

}

// Get the <span> element that closes the modal
let span = document.getElementById("close_meme_button");
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
    console.log("clic en boton salir de meme element");
}



//Size de los items del grid variable con uso de un dado simple.
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
