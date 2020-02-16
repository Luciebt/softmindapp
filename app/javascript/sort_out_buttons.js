const sortingOut = () => {

    const videos = document.getElementById('video-button');
    const images = document.getElementById('image-button');
    const texts = document.getElementById('text-button');
    const all = document.getElementById('all-button');

    const indexTimeline = document.getElementById("timeline-container-default");
    const defaultIndex = document.querySelectorAll("default-index");
    const videoContent = document.getElementById('video-tab');
    const imageContent = document.getElementById('image-tab');
    const textContent = document.getElementById('text-tab');
    const secondaryTabs = document.getElementById('secondary-tabs');

    function show(content) {
        console.log(content);

        content.classList.remove("unshow");
        content.classList.add("show");
    }

    function unshow(content) {
        console.log(content);

        content.classList.add("unshow");
        content.classList.remove("show");
    }

    function removeIndex(index) {
        index.forEach((moment) => {
            console.log(index);

            moment.classList.remove("show");
            moment.classList.add("unshow");
        })
    }

    function addIndex(index) {
        index.forEach((moment) => {
            console.log(index);

            moment.classList.remove("unshow");
            moment.classList.add("show");
        })
    }


    videos.addEventListener('click', function() {
        console.log("videos");

        show(secondaryTabs);
        show(videoContent);
        unshow(indexTimeline);
        removeIndex(defaultIndex);
        unshow(imageContent);
        unshow(textContent);

    })

    images.addEventListener('click', function() {
        console.log('images');

        show(secondaryTabs);
        removeIndex(defaultIndex);
        unshow(indexTimeline);
        unshow(videoContent);
        unshow(textContent);
        show(imageContent);

    })

    texts.addEventListener('click', function() {
        console.log('texts');

        show(secondaryTabs);
        removeIndex(defaultIndex);
        unshow(indexTimeline);
        unshow(videoContent);
        unshow(imageContent);
        show(textContent);
    })

    all.addEventListener('click', function() {
        console.log('all');

        unshow(secondaryTabs);
        unshow(videoContent);
        unshow(imageContent);
        unshow(textContent);
        show(indexTimeline);
        addIndex(defaultIndex);

    })
}

export { sortingOut };
