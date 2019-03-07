
  function reviews_sliding(imgs) {
    // Get the expanded image
    var expandImgCheck = document.getElementById("expandedImg");
    if (expandImgCheck){
      var expandImg = expandImgCheck
    }
    // Get the image text
    var imgTextCheck = document.getElementById("imgtext");
    if (imgTextCheck){
      var imgText = imgTextCheck
    }
    // Use the same src in the expanded image as the image being clicked on from the grid
    expandImg.src = imgs.src;
    // Use the value of the alt attribute of the clickable image as text inside the expanded image
    imgText.innerHTML = imgs.alt;
    // Show the container element (hidden with CSS)
    expandImg.parentElement.style.display = "block";
  }

export { reviews_sliding };

