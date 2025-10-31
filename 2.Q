<html>
<head>
  <title>Event Dashboard</title>
  <link rel="stylesheet" href="bootstrap.min.css">
 <script src="jquery.min.js.js"></script>
  <style>
    body {
      background-color: #f5f5f5;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .main {
      width: 80%;
      margin: 30px auto;
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .top {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .btn-theme {
      background-color: #007bff;
      color: white;
      border: none;
      padding: 8px 15px;
      border-radius: 8px;
    }

    .panel {
      background: #e9ecef;
      padding: 15px;
      border-radius: 8px;
      margin-bottom: 10px;
      cursor: pointer;
    }

    .panel-content {
      display: none;
      padding: 10px;
      background: #f8f9fa;
      border-radius: 8px;
      margin-top: 5px;
    }

    @media screen and (max-width: 600px) {
      .main {
        width: 95%;
        padding: 15px;
      }
      .top {
        flex-direction: column;
        gap: 10px;
      }
    }
  </style>
</head>

<body>
  <div class="main">
    <div class="top">
      <h3 class="text-primary fw-bold">Event Dashboard</h3>
      <button id="themeBtn" class="btn-theme">Switch Theme</button>
    </div>

    <hr>

    <div class="row mt-4">
      <div class="col-md-6">
        <h5 class="text-success">Registration Progress</h5>
        <div class="progress mb-3">
          <div class="progress-bar bg-success" style="width: 70%">70%</div>
        </div>
      </div>

      <div class="col-md-6">
        <h5 class="text-info">Event Preparation</h5>
        <div class="progress mb-3">
          <div class="progress-bar bg-info" style="width: 55%">55%</div>
        </div>
      </div>
    </div>

    <div class="mt-4">
      <div class="panel">Participant List</div>
      <div class="panel-content">
        <ul>
          <li>Arun - Coding Contest</li>
          <li>Priya - Project Expo</li>
          <li>Ravi - Tech Quiz</li>
        </ul>
      </div>

      <div class="panel">Event Details</div>
      <div class="panel-content">
        <p>The symposium includes 4 major events: Coding Contest, Project Expo, Tech Quiz, and Paper Presentation.</p>
      </div>
    </div>
  </div>




  <script>
    $(document).ready(function(){
      let darkMode = false;

      $('#themeBtn').click(function(){
        if(!darkMode){
          $('body').css({'background-color':red,'color':'#fff'});
          $('.main').css({'background':'#333','color':'#fff'});
          darkMode = true;
        } else {
          $('body').css({'background-color':'#f5f5f5','color':'#000'});
          $('.main').css({'background':'#fff','color':'#000'});
          darkMode = false;
        }
      });

      $('.panel').click(function(){
        $(this).next('.panel-content').slideToggle();
      });
    });
  </script>
</body>
</html>


HTML5 Structure

<div class="main"> acts as the main container.

Inside it, sections like header, progress bars, and expandable panels organize the content neatly.

Semantic tags like <h3>, <div>, <ul>, <li>, and <button> create a clear layout.

CSS3 Styling

The .main class uses the box model (padding, margin, border-radius, shadow).

Rounded corners (border-radius) give a smooth modern look.

A media query ensures the dashboard fits smaller screens (phones and tablets).

Bootstrap Integration

Bootstrap’s grid system (col-md-6) arranges performance statistics side by side.

Progress bars visually represent the completion percentage of events.

JavaScript (Theme Switching)

A variable darkMode keeps track of the theme.

When the user clicks the Switch Theme button, background and text colors toggle dynamically using .css() updates.

jQuery (Smooth Interactions)

Clicking a .panel triggers a slide toggle animation (slideToggle()) to show/hide the corresponding .panel-content.

This makes the UI interactive without page reloads or complex logic.
