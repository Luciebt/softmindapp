function setup() {
    const moments = document.querySelectorAll(".play-moments-media");
    const firstMoment = document.querySelector(".play-moments-media");
    let ids = [];

    if (firstMoment) {

        firstMoment.classList.remove('unshow');
        firstMoment.classList.add('show');
        ids.push(firstMoment.dataset.id);
        console.log(ids);

        const moveShow = (event) => {
            const currentMoment = event.currentTarget;
            const momentId = event.currentTarget.dataset.id
            !ids.includes(momentId) && ids.push(momentId);

            const lastChild = document.querySelector('.play-moments-media:last-child');

            if (currentMoment == lastChild) {
                const firstChild = document.querySelectorAll('.play-moments-media')[0];
                if (firstChild) {
                    firstChild.classList.add('show');
                    firstChild.classList.remove('unshow');
                }
            } else {
                const nextSibling = document.querySelector('.show + .unshow')
                if (nextSibling) {

                    nextSibling.classList.add('show');
                    nextSibling.classList.remove('unshow');
                }
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

    updateStatus(ids);
}


function updateStatus(ids) {

    const button2 = document.getElementById("seen-exit");
    console.log(button2);


    if (button2)  {

            button2.addEventListener('click', event => {
                console.log(event);
                event.preventDefault()
                const hiddenTag = document.querySelector('.input-seen')
                if (hiddenTag) {
                    hiddenTag.value = ids
                }
            const form = document.querySelector('.form-seen')
            if (form) {
                form.submit()
            }
        })
    }
}

export { setup };
