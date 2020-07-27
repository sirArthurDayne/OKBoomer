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
//OVERlAY de modal_elements
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
