const sortingOut = () => {

    const videos = document.getElementById('video-button');
    const images = document.getElementById('image-button');
    const texts = document.getElementById('text-button');
    const all = document.getElementById('all-button');
    const indexTimeline = document.getElementById("default-index");

    const videoContent = document.getElementById('video-tab');
    const imageContent = document.getElementById('image-tab');
    const textContent = document.getElementById('text-tab');

    function removeShow(content) {
        content.classList.remove("show");
        content.classList.add("unshow");
    }

    function addShow(content) {
        content.classList.remove("unshow");
        content.classList.add("show");
    }

    videos.addEventListener('click', function() {
        console.log("videos");

        removeShow(imageContent);
        removeShow(textContent);
        removeShow(indexTimeline);
        addShow(videoContent);

    })

    images.addEventListener('click', function() {
        console.log('images');

        removeShow(videoContent);
        removeShow(textContent);
        removeShow(indexTimeline);
        addShow(imageContent);

    })

    texts.addEventListener('click', function() {
        console.log('texts');

        removeShow(videoContent);
        removeShow(imageContent);
        removeShow(indexTimeline);
        addShow(textContent);
    })

    all.addEventListener('click', function() {
        console.log('all');

        removeShow(videoContent);
        removeShow(imageContent);
        removeShow(textContent);
        addShow(indexTimeline);

    })

}

export { sortingOut };
