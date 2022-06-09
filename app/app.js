const modalContainer =  document.querySelector(".modal-container");
const modalComments = document.querySelectorAll(".modal-comment");

modalComments.forEach(comment=> comment.addEventListener("click", toggleModal))

function toggleModal(){
  modalContainer.classList.toggle("active")
}
