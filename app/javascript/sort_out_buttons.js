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
        content.classList.add("unshow");
        content.classList.remove("show");
    }

    function addShow(content) {
        content.classList.add("show");
        content.classList.remove("unshow");
    }

    videos.addEventListener('click', function() {
        console.log("videos");

        removeShow(indexTimeline);
        removeShow(imageContent);
        removeShow(textContent);
        addShow(videoContent);

    })

    images.addEventListener('click', function() {
        console.log('images');

        removeShow(indexTimeline);
        removeShow(videoContent);
        removeShow(textContent);
        addShow(imageContent);

    })

    texts.addEventListener('click', function() {
        console.log('texts');

        removeShow(indexTimeline);
        removeShow(videoContent);
        removeShow(imageContent);
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
