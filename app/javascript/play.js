function setup() {
    const moments = document.querySelectorAll(".play-moments-media");
    const firstMoment = document.querySelector(".play-moments-media");

    if (firstMoment) {

        firstMoment.classList.remove('unshow');
        firstMoment.classList.add('show');

        const moveShow = (event) => {
            const currentMoment = event.currentTarget;

            const lastChild = document.querySelector('.play-moments-media:last-child');

            if (currentMoment == lastChild) {
                const firstChild = document.querySelector('.play-moments-media:first-child');
                firstChild.classList.add('show');
                firstChild.classList.remove('unshow');
            } else {
                const nextSibling = document.querySelector('.show + .unshow')
                nextSibling.classList.add('show');
                nextSibling.classList.remove('unshow');
            }

            currentMoment.classList.remove('show');
            currentMoment.classList.add('unshow');


            // identify the element currently shown
            // find out if it's the last element or not
            // if it's not: take the next sibling and remove display none
            // if it's the last element: take the first child
            // add display none to the first element
        }

        moments.forEach((moment) => {
            moment.addEventListener('click', moveShow);
        });

    } else {
        console.log("we are in the else - clean");

    }
}

function log() {
    console.log('hello');
};

// const video = document.querySelector("video");

// function loadVideo() {
//     document.addEventListener("DOMContentLoaded", () => video.click());
// }

export { log };
export { setup };
// export { loadVideo };
