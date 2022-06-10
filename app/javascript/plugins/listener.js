// TODO: React to a click on the button!
const changeLabelClick = () => {
  const button = document.getElementById("click-me");
    if (button) {
      button.addEventListener("click", (event) => {
        console.log("hello")
        event.currentTarget.classList.add("disabled");
        event.currentTarget.innerText = "Requested";
      });
    }
};

const listener = () => {
  const modal = document.querySelector('.text-background')
  const button = document.querySelector('.back-pop')

  const displayItem = () => {
    modal.classList.remove('text-background')
  }

  setTimeout(displayItem, 10000)

  button.addEventListener('click', (e) => {
    modal.classList.add('text-background')
  })

};

export { changeLabelClick, listener };
