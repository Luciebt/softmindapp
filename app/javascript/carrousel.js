function carrouselFct() {
    let firstMoment = document.querySelector('.show-carrousel');
    const moments = document.querySelectorAll(".timeline-media");

    if (firstMoment) {

        const moveShow = (event) => {
            const currentMoment = event.currentTarget;
            const lastChild = document.querySelector(".timeline-media:last-child");

            if (currentMoment == lastChild) {
                const firstChild = document.querySelector(".timeline-media:first-child");
                firstChild.classList.add("show-carrousel");
                firstChild.classList.remove('unshow-carrousel');
            } else {
                const nextSibling = document.querySelector('.show-carrousel + .unshow-carrousel')
                nextSibling.classList.add('show-carrousel');
                nextSibling.classList.remove('unshow-carrousel');
            }

            currentMoment.classList.remove('show-carrousel');
            currentMoment.classList.add('unshow-carrousel');
        }

        moments.forEach((moment) => {
            moment.addEventListener('click', moveShow);
        });
    } else {
        console.log("else of carrousel");

    }



}

export { carrouselFct };
