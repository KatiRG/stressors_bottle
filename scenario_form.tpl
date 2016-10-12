<head>
      <title>Changes in stressor intensity for four variables</title>
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
<p>{{scenario}}</p>

% name = "Bob"
% if name == "Bob":
  <p>Hello {{scenario}}</p>
% end



