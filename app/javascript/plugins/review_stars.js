const review_stars = () => {
  const reviewInputCheck = document.querySelector("#review_stars")
  if (reviewInputCheck) {
    var reviewInput = reviewInputCheck
  }
  const stars = document.querySelectorAll('.rating > input')

  // if (stars) {
  //   stars.forEach(star => {
  //     star.addEventListener('click', event => {
  //       reviewInput.value = event.currentTarget.value
  //     })
  //   })
  // }
};

export { review_stars };

