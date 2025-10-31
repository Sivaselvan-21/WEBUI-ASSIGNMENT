<html>
<head>
  <title>Online Event Registration Portal</title>
  <link rel="stylesheet" href="bootstrap.min.css">

  <style>
    body {
      background-color: #ffffff;
      margin: 0;
      padding: 0;
    }

    .content {
      width: 70%;
      margin: 40px auto;
      background: #f9f9f9;
      padding: 25px 35px;
      border-radius: 15px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    label {
      font-weight: 600;
      margin-top: 10px;
      display: block;
    }

    .subform {
      width: 100%;
      padding: 8px;
      border-radius: 8px;
      border: 1px solid #ccc;
    }

    #preview {
      display: none;
      background: #f0f8ff;
      padding: 20px;
      margin-top: 20px;
      border-radius: 12px;
    }

    @media screen and (max-width: 600px) {
      .content {
        width: 90%;
        padding: 20px;
      }
    }
  </style>
</head>

<body>

  <div class="content">
    <h2 class="text-center mt-4 mb-4 text-primary fw-bold">Online Event Registration Portal</h2>

    <form id="registrationForm">
      <fieldset>
        <legend class="fw-bold mb-3">Participant Details</legend>

        <label for="name">Full Name:</label>
        <input type="text" class="subform" id="name" name="name" required placeholder="Enter your name">

        <label for="email">Email:</label>
        <input type="email" class="subform" id="email" name="email" required placeholder="example@gmail.com">

        <label for="phone">Mobile Number:</label>
        <input type="tel" class="subform" id="phone" name="phone" pattern="[0-9]{10}" placeholder="10-digit number">

        <label for="college">College:</label>
        <input list="colleges" class="subform" id="college" name="college" placeholder="Select or type your college">
        <datalist id="colleges">
          <option value="Anna University">
          <option value="IIT Madras">
          <option value="NIT Trichy">
          <option value="KPR Institute of Technology">
          <option value="PSG College of Technology">
        </datalist>

        <label for="event">Select Event:</label>
        <select id="event" class="subform" name="event" required>
          <option value="">-- Choose an Event --</option>
          <option value="Coding Contest">Coding Contest</option>
          <option value="Tech Quiz">Tech Quiz</option>
          <option value="Project Expo">Project Expo</option>
          <option value="Paper Presentation">Paper Presentation</option>
        </select>

        <label for="date">Preferred Date:</label>
        <input type="date" class="subform" id="date" name="date" required>

        <div class="text-center mt-4">
          <input type="submit" class="btn btn-primary btn-lg" value="Register">
        </div>
      </fieldset>
    </form>

    <div id="preview">
      <h4 class="text-primary fw-bold">Registration Preview</h4>
      <p id="previewData"></p>
    </div>

    <div class="row mt-5">
      <h4 class="text-center text-success mb-3">Available Events</h4>

      <div class="col-md-6 mb-3">
        <div class="card p-3 shadow-sm">
          <h5 class="card-title text-primary">Coding Contest</h5>
          <p class="card-text">Test your coding logic and speed in real-time challenges.</p>
        </div>
      </div>

      <div class="col-md-6 mb-3">
        <div class="card p-3 shadow-sm">
          <h5 class="card-title text-primary">Tech Quiz</h5>
          <p class="card-text">Compete with others and show your tech knowledge.</p>
        </div>
      </div>

      <div class="col-md-6 mb-3">
        <div class="card p-3 shadow-sm">
          <h5 class="card-title text-primary">Project Expo</h5>
          <p class="card-text">Showcase your innovative projects to the audience.</p>
        </div>
      </div>

      <div class="col-md-6 mb-3">
        <div class="card p-3 shadow-sm">
          <h5 class="card-title text-primary">Paper Presentation</h5>
          <p class="card-text">Present your research and ideas to a panel of judges.</p>
        </div>
      </div>
    </div>
  </div>

  <script src="jquery-3.6.0.min.js"></script>
  <script src="bootstrap.bundle.min.js"></script>

  <script>
    $(document).ready(function(){
      $('input, select').focus(function(){
        $(this).css('background-color', '#e0f7fa');
      }).blur(function(){
        $(this).css('background-color', '');
      });

      $('#registrationForm').submit(function(event){
        event.preventDefault();
        if($('#name').val() === '' || $('#email').val() === '' || $('#event').val() === ''){
          alert('Please fill all required fields!');
          return;
        }
        let data = `
          <strong>Name:</strong> ${$('#name').val()}<br>
          <strong>Email:</strong> ${$('#email').val()}<br>
          <strong>Phone:</strong> ${$('#phone').val()}<br>
          <strong>College:</strong> ${$('#college').val()}<br>
          <strong>Event:</strong> ${$('#event').val()}<br>
          <strong>Date:</strong> ${$('#date').val()}
        `;
        $('#previewData').html(data);
        $('#preview').slideDown();
      });
    });
  </script>
</body>
</html>
