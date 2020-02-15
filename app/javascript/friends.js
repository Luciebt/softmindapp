function friendsEditToggle() {

  const editButtons = document.querySelectorAll(".edit-button");
  editButtons.forEach(button => {
    button.addEventListener("click", () => {
      let divId = button.dataset.target;
      let targetDiv = document.getElementById(divId);
      targetDiv.classList.toggle("d-none");


      let friendDetails = button.closest(".friend-details");
      friendDetails.classList.toggle("d-none");
    });
  });

  const resetButtons = document.querySelectorAll("button[type='reset']");
  resetButtons.forEach(button => {
    button.addEventListener("click", () => {
      let friendId = button.dataset.target;
      let friendDetails = document.querySelector(`[data-friend="${friendId}"]`);
      friendDetails.classList.toggle("d-none");

      let friendEditForm = button.closest(".friend-edit-form");
      console.log(friendEditForm);
      friendEditForm.classList.toggle("d-none");
    });
  });
};

export { friendsEditToggle };
