<!-- Link to Inter font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<nav style="background-color: black; padding: 15px 30px; display: flex; justify-content: flex-end; box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3); position: sticky; top: 0; z-index: 999;">
  <a href="/" style="color: white; margin-left: 25px; text-decoration: none; font-size: 16px; font-weight: 600; position: relative;">Home</a>
  <a href="/books" style="color: white; margin-left: 25px; text-decoration: none; font-size: 16px; font-weight: 600; position: relative;">Bookstore</a>
  <a href="/profile" style="color: white; margin-left: 25px; text-decoration: none; font-size: 16px; font-weight: 600; position: relative;">Profile</a>
  <a href="/users/signup" style="color: white; margin-left: 25px; text-decoration: none; font-size: 16px; font-weight: 600; position: relative;">Sign Up</a>
  <a href="/contact" style="color: white; margin-left: 25px; text-decoration: none; font-size: 16px; font-weight: 600; position: relative;">Contact</a>
</nav>

<style>
  body {
    background-color: white;
    color: black;
    font-family: 'Inter', sans-serif;
    margin: 0;
    padding: 0;
  }

  nav a::after {
    content: '';
    position: absolute;
    width: 0;
    height: 2px;
    bottom: -5px;
    left: 0;
    background-color: yellow;
    transition: width 0.3s ease;
  }

  nav a:hover {
    color: yellow;
  }

  nav a:hover::after {
    width: 100%;
  }
</style>
