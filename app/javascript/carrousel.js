function carrouselFct() {
    const moments = document.querySelectorAll(".moments-media");
    const firstMoment = document.querySelector(".moments-media");

    firstMoment.classList.remove('timeline-unshow');
    firstMoment.classList.add('timeline-show');

    const moveShow = (event) => {
        const currentMoment = event.currentTarget;

        const lastChild = document.querySelector('.play-moments-media:last-child');

        if (currentMoment == lastChild) {
            const firstChild = document.querySelector('.play-moments-media:first-child');
            firstChild.classList.add('timeline-show');
            firstChild.classList.remove('timeline-unshow');
        } else {
            const nextSibling = document.querySelector('.show + .unshow')
            nextSibling.classList.add('timeline-show');
            nextSibling.classList.remove('timeline-unshow');
        }

        currentMoment.classList.remove('timeline-show');
        currentMoment.classList.add('timeine-unshow');


        // identify the element currently shown
        // find out if it's the last element or not
        // if it's not: take the next sibling and remove display none
        // if it's the last element: take the first child
        // add display none to the first element
    }

    moments.forEach((moment) => {
        moment.addEventListener('click', moveShow);
    });
}

export { carrouselFct };
