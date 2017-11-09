var seats = document.querySelectorAll(".seat");
for (var i=0; i<seats.length; i++){
    seats[i].addEventListener("click",function(){
        var element = this;
        element.classList.toggle("selected");
        element.classList.toggle("available");
    });
}