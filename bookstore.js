
// Function to filter books based on the search term and selected genre
function filterBooks() {
    const searchQuery = document.getElementById("search").value.toLowerCase();
    const selectedGenre = document.getElementById("filter").value;

    const books = document.querySelectorAll(".book");

    books.forEach(book => {
        const title = book.querySelector("h3 a").textContent.toLowerCase();
        const genre = book.getAttribute("data-genre");

        // Check if the book matches the search query and genre
        const matchesSearch = title.includes(searchQuery);
        const matchesGenre = selectedGenre === "all" || genre === selectedGenre;

        // If the book matches both criteria, show it, otherwise hide it
        if (matchesSearch && matchesGenre) {
            book.style.display = "block";
        } else {
            book.style.display = "none";
        }
    });
}

// Optional: Function to simulate pressing 'Search' button (already handled by the filter function)
function searchBooks() {
    filterBooks(); // This will call the filter function when the search button is clicked
}