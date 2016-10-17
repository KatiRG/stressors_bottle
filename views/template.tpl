<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Stressors</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link type="text/css" href="static/style.css" rel="stylesheet">
    <link type="text/css" href="static/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>
    <div class="container-fluid">
      <h1>Changes in stressor intensity</h1>

      <p>Choose a scenario. Changes in variables SST, pH, O2 and productivity will be displayed below.</p>

      <form role="form" action="/" method="post">
        <input type="radio" name="scenario" value="rcp2.6"> RCP 2.6
        <input type="radio" name="scenario" value="rcp4.5"> RCP 4.5
        <input type="radio" name="scenario" value="rcp6"> RCP 6.0
        <input type="radio" name="scenario" value="rcp8.5"> RCP 8.5

        <br><br>
        <input type="submit" value="Submit" />
      </form>
    
    <br>

    <p>{{message}}</p>

    % if scenario:
      <!-- Display map image -->
      <div id="id-sst">
        <img src="images/{{map1}}">
      </div>
      <div id="id-ph">
        <img src="images/{{map2}}">
      </div>
      <div id="id-O2">  
        <img src="images/{{map3}}">
      </div>
      <div id="id-prod">  
        <img src="images/{{map4}}">
      </div>
    % end

    <script src="static/jquery-1.10.2.min.js"></script>
    <script src="static/bootstrap.min.js"></script>

    </div> <!-- ./container -->
  </body>
</html>
