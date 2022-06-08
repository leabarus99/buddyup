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


export { changeLabelClick };
