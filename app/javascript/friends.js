function friendsEditToggle() {

  const editButtons = document.querySelectorAll(".edit-button");
  editButtons.forEach(button => {
    button.addEventListener("click", () => {
      let divId = button.dataset.target;
      let targetDiv = document.getElementById(divId);
      targetDiv.classList.toggle("d-none");
    });
  });
};

export { friendsEditToggle };
