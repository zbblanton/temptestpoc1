<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wind Power Dashboard</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

    <style type="text/css">
      .jumbotron {
        background-image: url('https://www.abb-conversations.com/wp-content/uploads/2014/02/Wind-turbines-in-Kemi-Finland_level_1.jpg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        height: 300px;
        min-height: 180px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <a class="navbar-brand" href="#">Wind Power Dashboard</a>
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item nav-link active" href="#">
              <a href="#" class="nav-link">Home</a>
            </li>
            <li class="nav-item nav-link" href="#">
              <a href="#" class="nav-link">Services</a>
            </li>
            <li class="nav-item nav-link" href="#">
              <a href="#" class="nav-link">Pricing</a>
            </li>
            <li class="nav-item nav-link disabled" href="#">
              <a href="#" class="nav-link">Contact Us</a>
            </li>
          </ul>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </nav>

      <div class="jumbotron">
        <h1 class="text-center text-white display-3">Wind Power Dashboard</h1>
      </div>
      <!--Alerts go here. -->
      <div class="alert alert-danger" role="alert">
        Wind Turbine us-east-region-2-23a will be down for maintenance on June 10th from 6:00 PM EST to 9:00 PM EST.
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-6 col-lg-6">
          <p class="text-center">Current Job Status</p>
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Status</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>Pending</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>On-Site</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>
                <td>Completed</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
          <div class="text-center">
            <label class="label label-primary">Current Region's kWh </label>
            <div id="barchart"></div>
          </div>
        </div>
      </div>
    </div>
    <p class="text-center">Generated on <%= new java.util.Date() %></p>

    <script type="text/javascript">
    new Morris.Bar({
      element: 'barchart',
      data: [
        { Ticket: 'US-East', value: 220 },
        { Ticket: 'US-West', value: 130 },
        { Ticket: 'EU-West', value: 133 }
      ],
      xkey: 'Ticket',
      ykeys: ['value'],
      labels: ['Amount']
    });
    </script>
  </body>
</html>
