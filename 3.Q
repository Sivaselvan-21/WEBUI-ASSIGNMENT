<html>
<head>
  <title>Travel Booking Webpage</title>
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery-3.6.0.min.js"></script>

  <style>
    body {
      background-color: #f7f9fc;
      margin: 0;
      padding: 0;
     
    }

    .main {
      width: 80%;
      margin: 30px auto;
    }

    .form-box {
      background: #ffffff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
      margin-bottom: 25px;
    }

    .dest-card {
      background: #fff;
      border-radius: 10px;
      padding: 15px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      margin-bottom: 20px;
      transition: transform 0.2s;
      position: relative;
    }

    .dest-card:hover {
      transform: scale(1.03);
      box-shadow: 0 6px 12px rgba(0,0,0,0.15);
    }

    .badge {
      position: absolute;
      top: 10px;
      right: 10px;
    }

    @media screen and (max-width: 600px) {
      .main {
        width: 95%;
      }
    }
  </style>
</head>

<body>

  <div class="main">
    <h2 class="text-center text-primary fw-bold mb-4">Travel Booking Portal</h2>

    <div class="form-box">
      <form id="travelForm">
        <div class="mb-3">
          <label for="place" class="form-label fw-bold">Destination:</label>
          <input type="text" id="place" name="place" class="form-control" list="places" autocomplete="on" required placeholder="Enter destination">
          <datalist id="places">
            <option value="Paris">
            <option value="Tokyo">
            <option value="New York">
            <option value="London">
            <option value="Bali">
          </datalist>
        </div>

        <div class="mb-3">
          <label for="date" class="form-label fw-bold">Travel Date:</label>
          <input type="date" id="date" name="date" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="budget" class="form-label fw-bold">Budget Range:</label>
          <input type="range" id="budget" name="budget" class="form-range" min="10000" max="100000" step="5000" value="50000">
          <span id="budgetValue">₹50000</span>
        </div>

        <div class="text-center">
          <button type="submit" class="btn btn-success">Search Destinations</button>
        </div>
      </form>
    </div>

    <h4 class="text-center mb-3 text-secondary">Popular Destinations</h4>

    <input type="text" id="search" class="form-control mb-3" placeholder="Search destinations...">

    <div id="destinations" class="row">
      <div class="col-md-4">
        <div class="dest-card">
          <span class="badge bg-info">Top Rated</span>
          <h5>Paris</h5>
          <p>The city of lights, love, and art. Visit the Eiffel Tower and Louvre Museum.</p>
          <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#bookModal">Book Now</button>
        </div>
      </div>

      <div class="col-md-4">
        <div class="dest-card">
          <span class="badge bg-warning">Trending</span>
          <h5>Tokyo</h5>
          <p>Experience Japan’s futuristic city with ancient temples and delicious food.</p>
          <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#bookModal">Book Now</button>
        </div>
      </div>

      <div class="col-md-4">
        <div class="dest-card">
          <span class="badge bg-success">New</span>
          <h5>Bali</h5>
          <p>Relax on tropical beaches and explore stunning temples and culture.</p>
          <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#bookModal">Book Now</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="bookModal" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header bg-primary text-white">
          <h5 class="modal-title">Booking Confirmation</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">
          <p>Your booking details are being processed. Confirm to continue.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-bs-dismiss="modal">Confirm</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>



  <script>
    $(document).ready(function(){

      $('#budget').on('input', function(){
        $('#budgetValue').text('₹' + $(this).val());
      });

      $('#travelForm').submit(function(event){
        event.preventDefault();
        let place = $('#place').val();
        let date = $('#date').val();
        if(place === '' || date === ''){
          alert('Please fill all fields!');
        } else {
          alert('Searching for trips to ' + place + ' on ' + date);
          $('html, body').animate({scrollTop: $('#destinations').offset().top}, 700);
        }
      });

      $('#search').on('keyup', function(){
        let val = $(this).val().toLowerCase();
        $('.dest-card').each(function(){
          $(this).toggle($(this).text().toLowerCase().indexOf(val) > -1);
        });
      });

    });
  </script>

</body>
</html>
Here we have used the media query '@media' it allows to protray the interface smoothly for different devices . Here we handled for the smaller devices which has the max width o
of 600 px for that the width will be adjusted here.
