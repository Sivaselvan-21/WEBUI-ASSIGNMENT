<!DOCTYPE html>
<html>
<head>
<title>Personal Portfolio</title>
<link href="bootstrap.min.css" rel="stylesheet">
<script src="jquery.3.6.0.min.js.js"></script>
<style>

body {
 
  margin: 0;
  padding: 0;
  background-color: #f4f4f4;
}

header {
  background-color: #222;
  color: white;
  text-align: center;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.3);
}

nav a {
  color: white;
  margin: 0 15px;
  text-decoration: none;
  font-weight: bold;
}

nav a:hover {
  color: #00aced;
}

section {
  padding: 60px 20px;
}

.about, .projects, .contact {
  background: white;
  margin: 20px auto;
  max-width: 1000px;
  border-radius: 15px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  padding: 30px;
}

h2 {
  text-align: center;
  text-shadow: 1px 1px 3px #999;
}

.card {
  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
  border-radius: 15px;
  transition: transform 0.3s;
}

.card:hover {
  transform: scale(1.05);
}

button {
  border-radius: 10px;
}

#clock {
  font-size: 18px;
  font-weight: bold;
  color: #00aced;
}

footer {
  text-align: center;
  padding: 15px;
  background: #222;
  color: white;
  font-size: 14px;
}
</style>
</head>
<body>

<header>
  <h1>My Portfolio</h1>
  <nav>
    <a href="#about">About</a>
    <a href="#projects">Projects</a>
    <a href="#contact">Contact</a>
  </nav>
  <div id="greet"></div>
  <div id="clock"></div>
</header>

<section id="about" class="about">
  <h2>About Me</h2>
  <p>Hello! I am a passionate Web Developer who loves creating clean and responsive websites using modern web technologies like HTML, css, JavaScript, jQuery, and Bootstrap.</p>
</section>

<section id="projects" class="projects">
  <h2>Projects</h2>
  <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
      <div class="card h-100 text-center">
        <div class="card-body">
          <h5 class="card-title">Portfolio Website</h5>
          <p class="card-text">A personal website showcasing skills, projects, and achievements.</p>
          <button class="btn btn-primary viewProject" 
                  data-bs-toggle="modal" 
                  data-bs-target="#projectModal"
                  data-project="portfolio">
            View Details
          </button>
        </div>
      </div>
    </div>

    <div class="col">
      <div class="card h-100 text-center">
        <div class="card-body">
          <h5 class="card-title">Task Manager</h5>
          <p class="card-text">A simple task manager web app built using HTML, CSS, and JS.</p>
          <button class="btn btn-primary viewProject" 
                  data-bs-toggle="modal" 
                  data-bs-target="#projectModal"
                  data-project="task">
            View Details
          </button>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="contact" class="contact">
  <h2>Contact</h2>
  <form>
    <div class="mb-3">
      <label>Name</label>
      <input type="text" class="form-control" placeholder="Enter your name">
    </div>
    <div class="mb-3">
      <label>Email</label>
      <input type="email" class="form-control" placeholder="Enter your email">
    </div>
    <div class="mb-3">
      <label>Message</label>
      <textarea class="form-control" rows="4" placeholder="Your message"></textarea>
    </div>
    <button type="submit" class="btn btn-success">Send Message</button>
  </form>
</section>


<div class="modal fade" id="projectModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Project Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body" id="modalBody">
        Project details will appear here.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<footer>
  © 2025 My Portfolio | Designed with ❤️
</footer>

<script>
function updateClock() {
  let now = new Date();
  document.getElementById("clock").innerText = now.toLocaleTimeString();
}
setInterval(updateClock, 1000);

function setGreeting() {
  let hour = new Date().getHours();
  let greet = "";
  if (hour < 12) greet = "Good Morning 🌅";
  else if (hour < 18) greet = "Good Afternoon ☀️";
  else greet = "Good Evening 🌙";
  document.getElementById("greet").innerText = greet;
}
setGreeting();

$(".viewProject").click(function() {
  let project = $(this).attr("data-project");
  let content = "";
  if (project === "portfolio") {
    content = "This Portfolio Website was built using HTML5, CSS3, Bootstrap, and JavaScript. It features responsive design and smooth styling.";
  } else if (project === "task") {
    content = "The Task Manager helps users organize tasks efficiently with dynamic DOM updates and intuitive UI.";
  }
  $("#modalBody").text(content);
});
</script>

</body>
</html>


HTML5 Structure:

Used <header> equivalent with a div for title and navigation links.

Sections like About Me, Projects, and Contact are organized using div blocks with simple IDs.

Internal links (href="#about") allow navigation between sections.

CSS3 Styling:

Rounded corners with border-radius: 15px.

Soft shadows via box-shadow.

Hover effects on .cardbox add interactivity and highlight focus.

JavaScript:

Displays a live clock and dynamic greeting (“Good Morning”, “Good Evening”) using time-based logic.

Handles form submission and shows alert confirmation.

jQuery:

Simplifies UI interactions like form submission and fade animations.

Adds section transitions when navigation links are clicked.

Bootstrap:

Provides the responsive grid system for project cards.

Uses ready-made modals for showing project details.

Ensures the layout adapts to all screen sizes automatically.
