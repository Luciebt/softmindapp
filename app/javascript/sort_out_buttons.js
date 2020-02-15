const sortingOut = () => {

    const videos = document.getElementById('video-button');
    const images = document.getElementById('image-button');
    const texts = document.getElementById('text-button');
    const all = document.getElementById('all-button');
    const indexTimeline = document.getElementById("default-index");

    const videoContent = document.getElementById('video-tab');
    const imageContent = document.getElementById('image-tab');
    const textContent = document.getElementById('text-tab');

    videos.addEventListener('click', function() {
        console.log("hello you");

        imageContent.classList.remove("show");
        imageContent.classList.add("unshow");

        textContent.classList.remove("show");
        textContent.classList.add("unshow");

        indexTimeline.classList.add("unshow");
        videoContent.classList.remove("unshow");
        videoContent.classList.add("show");
    })

    images.addEventListener('click', function() {

        videoContent.classList.remove("show");
        videoContent.classList.add("unshow");

        textContent.classList.remove("show");
        textContent.classList.add("unshow");

        indexTimeline.classList.add("unshow");
        imageContent.classList.remove("unshow");
        imageContent.classList.add("show");
    })

    texts.addEventListener('click', function() {

        videoContent.classList.remove("show");
        videoContent.classList.add("unshow");

        imageContent.classList.remove("show");
        imageContent.classList.add("unshow");

        indexTimeline.classList.add("unshow");
        textContent.classList.remove("unshow");
        textContent.classList.add("show");
    })

    all.addEventListener('click', function() {

        videoContent.classList.remove("show");
        videoContent.classList.add("unshow");

        imageContent.classList.remove("show");
        imageContent.classList.add("unshow");

        textContent.classList.remove("show");
        textContent.classList.add("unshow");

        indexTimeline.classList.remove("unshow");
        indexTimeline.classList.add("show");
    })

}

export { sortingOut };
