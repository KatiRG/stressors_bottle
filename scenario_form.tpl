<head>
      <title>Changes in stressor intensity for four variables</title>
      <link type="text/css" href="static/style.css" rel="stylesheet">
</head>

<p>Choose scenario:</p>

<!-- Drop-down menu -->
<!-- <form action="/" method="post">	
	<select name="scenario">
	    <option>rcp2.6</option>
	    <option>rcp4.5</option>
	 </select>
	
	<input type='submit' value='Submit'>
</form>
 -->

<!-- Radio buttons -->
<form action="/" method="post">
  <input type="radio" name="scenario" value="rcp2.6"> RCP 2.6
  <input type="radio" name="scenario" value="rcp4.5"> RCP 4.5
  <input type="radio" name="scenario" value="rcp6"> RCP 6.0
  <input type="radio" name="scenario" value="rcp8.5"> RCP 8.5

  <br><br>
  <input type="submit" value="Submit" />
</form>

<p>{{message}}</p>


% if scenario == "rcp2.6":
  <p>Scenario {{scenario}}</p>
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

