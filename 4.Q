<html>
<head>
<title>ELearn Portal</title>
<link rel="stylesheet" href="bootstrap.min.css">
<script src="jquery-3.6.0.min.js"></script>

<style>
body {
  background-color: #f2f2f2;
  margin: 0;
  font-family: Arial, sans-serif;
}

headpart {
  display: block;
  background: #1b6ef3;
  color: white;
  text-align: center;
  padding: 20px;
  font-size: 24px;
  font-weight: bold;
}

menupart {
  display: flex;
  justify-content: center;
  background: #1457c2;
  padding: 10px;
}

menupart a {
  color: white;
  text-decoration: none;
  margin: 0 15px;
  font-weight: 500;
}

cardbox {
  display: block;
  border: 1px solid #ccc;
  border-radius: 10px;
  padding: 20px;
  background: white;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  transition: all 0.3s;
}

cardbox:hover {
  transform: scale(1.03);
  box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

logindiv {
  display: block;
  border: 1px solid #ccc;
  border-radius: 10px;
  padding: 25px;
  background: white;
  box-shadow: 0 0 8px rgba(0,0,0,0.1);
}

errtext {
  display: none;
  color: red;
  font-size: 14px;
  margin-top: 5px;
}

footpart {
  display: block;
  text-align: center;
  background: #0d3c8e;
  color: white;
  padding: 10px;
  margin-top: 40px;
}

slideshow {
  display: none;
}

@media screen and (max-width: 600px) {
  cardbox {
    margin-bottom: 20px;
  }
}
</style>
</head>

<body>

<headpart>ELearn Portal</headpart>

<menupart>
  <a href="#top">Home</a>
  <a href="#learn">Courses</a>
  <a href="#user">Login</a>
</menupart>

<section id="top" class="container mt-4">
  <slideshow>
    <div class="alert alert-info text-center">Welcome to the E-Learning Portal</div>
  </slideshow>
</section>

<section id="learn" class="container mt-4">
  <h3 class="text-primary text-center mb-3">Featured Courses</h3>
  <div class="row">
    <div class="col-md-4">
      <cardbox>
        <h5>Web Design</h5>
        <p>Learn HTML, CSS, and JavaScript basics.</p>
        <button class="btn btn-primary btn-sm">Join</button>
      </cardbox>
    </div>
    <div class="col-md-4">
      <cardbox>
        <h5>Data Science</h5>
        <p>Master Python and ML models.</p>
        <button class="btn btn-primary btn-sm">Join</button>
      </cardbox>
    </div>
    <div class="col-md-4">
      <cardbox>
        <h5>Cloud Computing</h5>
        <p>Get started with AWS and Azure.</p>
        <button class="btn btn-primary btn-sm">Join</button>
      </cardbox>
    </div>
  </div>
</section>

<article id="user" class="container mt-5">
  <h4 class="text-center text-success mb-3">User Login</h4>
  <logindiv class="mx-auto" style="max-width:400px;">
    <form id="formlogin">
      <label>Email</label>
      <input type="email" id="emailbox" class="form-control mb-2" placeholder="Enter email">
      <label>Password</label>
      <input type="password" id="passbox" class="form-control mb-2" placeholder="Enter password">
      <errtext id="warn">Please fill all fields correctly</errtext>
      <div class="text-center mt-3">
        <button type="submit" class="btn btn-success w-100">Login</button>
      </div>
    </form>
  </logindiv>
</article>

<footpart>&copy; 2025 ELearn Portal. All Rights Reserved.</footpart>

<script>
$(document).ready(function(){
  $("slideshow").fadeIn(1000);
  $("#formlogin").submit(function(e){
    e.preventDefault();
    let email = $("#emailbox").val().trim();
    let pass = $("#passbox").val().trim();
    if(email === "" || pass === ""){
      $("#warn").fadeIn();
    } else {
      $("#warn").hide();
      alert("Login Successful");
    }
  });
});
</script>

</body>
</html>


Explanation:

HTML5 Semantic Structure

headpart, menupart, section, article, and footpart define the page flow.

The top has navigation links; middle has course list; bottom has login and footer.

CSS3 Styling

Each cardbox represents a course card.

box-shadow and transform make hover animation.

Media queries ensure cards stack properly on mobile.

Bootstrap Layout

Used container, row, and col-md-4 for a grid-based layout.

Buttons and alerts from Bootstrap make UI clean and responsive.

JavaScript Validation

On form submission, it checks if both fields are filled.

Shows or hides error text dynamically without page reload.

jQuery Animations

Used fadeIn() for the welcome text to appear smoothly.

All interactivity handled cleanly using minimal code.

Cross-Device Usability

Layout scales automatically using Bootstrap grid.

Font sizes, buttons, and spacing are mobile-friendly.
