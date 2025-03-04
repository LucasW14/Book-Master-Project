document.getElementById('review-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission

    // Get form values
    const title = document.getElementById('review-title').value;
    const rating = document.querySelector('input[name="rating"]:checked').value;
    const reviewText = document.getElementById('review-text').value;
    const image = document.getElementById('image-upload').files[0];
    const userInfo = document.getElementById('user-info').value;
    const isAnonymous = document.getElementById('anonymous').checked;
    const termsAccepted = document.getElementById('terms').checked;

    // Validation
    if (!title || !reviewText || !termsAccepted) {
        alert('Please fill out all required fields and accept the terms and conditions.');
        return;
    }

    // Create new review element
    const newReview = document.createElement('div');
    newReview.classList.add('review');

    const userName = isAnonymous ? 'Anonymous' : userInfo;
    const reviewDate = new Date().toLocaleDateString();

    newReview.innerHTML = `
        <h3>${title}</h3>
        <div class="stars">${'★'.repeat(rating)}${'☆'.repeat(5 - rating)}</div>
        <p>"${reviewText}"</p>
        <span class="customer-name">- ${userName}</span>
        <span class="review-date"> | ${reviewDate}</span>
    `;

    // If image is uploaded, add it to the review
    if (image) {
        const img = document.createElement('img');
        img.src = URL.createObjectURL(image);
        img.alt = 'Review Image';
        img.width = 134;
        img.height = 142;
        newReview.prepend(img); // Add image before the review text
    }

    // Add the new review to the reviews section
    document.querySelector('.review-section').appendChild(newReview);

    // Reset the form after submission
    document.getElementById('review-form').reset();
});
