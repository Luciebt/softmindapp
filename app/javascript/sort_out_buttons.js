const sortingOut = () => {


    const videos = document.getElementById('video-button');
    const images = document.getElementById('image-button');
    const indexTimeline = document.getElementById("default-index");

    const videoContent = document.getElementById('video-tab');
    const imageContent = document.getElementById('image-tab');

    videos.addEventListener('click', function() {
        console.log("hello you");

        indexTimeline.classList.add("unshow");
        videoContent.classList.remove("unshow");
        videoContent.classList.add("show");
    })

    images.addEventListener('click', function() {
        indexTimeline.classList.add("unshow");
        imageContent.classList.remove("unshow");
        imageContent.classList.add("show");
    })

}

export { sortingOut };
