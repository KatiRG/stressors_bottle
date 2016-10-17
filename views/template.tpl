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



    % if scenario == "rcp2.6":
      <img src="images/Logo-compact.jpg" alt="sst_rcp2.6" style="width:304px;height:304px;">
    % elif scenario == "rcp8.5": 
      <div id="id-sst">
        <img src="images/sst_rcp8.5.jpg" alt="sst_rcp2.6">
      </div>
      <div id="id-ph">
        <img src="images/ph_rcp8.5.jpg" alt="ph_rcp2.6">
      </div>
      <div id="id-O2">  
        <img src="images/O2_rcp8.5.jpg" alt="O2_rcp2.6">
      </div>
      <div id="id-prod">  
        <img src="images/productivity_rcp8.5.jpg" alt="prod_rcp2.6">
      </div>
    % end

    <script src="static/jquery-1.10.2.min.js"></script>
    <script src="static/bootstrap.min.js"></script>

    </div> <!-- ./container -->
  </body>
</html>
