import sqlite3
from bottle import Bottle, route, run, debug, template, request, static_file, SimpleTemplate

app = Bottle()

#-------------------------------
#static files for css
@app.route('/static/<filename>')
def server_static(filename):
  return static_file(filename, root='static/')

#static files for images
@app.route('/images/<filename:re:.*\.jpg>')
def send_image(filename):
    return static_file(filename, root='images/', mimetype='image/jpg')

#-------------------------------
#Define main page using template

#http://pwp.stevecassidy.net/bottle/forms-processing.html
@app.route('/')
def index():
    return template("template", message="", scenario="", map1="", map2="", map3="", map4="")

@app.route('/', method='POST')
def formhandler():
    scenario = request.forms.get('scenario')

    if scenario == "rcp2.6":
    	map1="Logo-compact.jpg"
    	map2="Logo-compact.jpg"
    	map3="Logo-compact.jpg"
    	map4="Logo-compact.jpg"
    elif scenario == "rcp8.5":
    	map1="sst_rcp8.5.jpg"
    	map2="ph_rcp8.5.jpg"
    	map3="O2_rcp8.5.jpg"
    	map4="productivity_rcp8.5.jpg"
    
    message = "Showing maps for scenario " + scenario + ":"    
    
    return template("template.tpl", message=message, scenario=scenario, 
    	             map1=map1, map2=map2, map3=map3, map4=map4)

#-------------------------------
@app.route('/help')
def help():
	return static_file('help.html', root='.')

#-------------------------------
# # check against case where someone sends data without going through HTML form
# def validate_form(form, required):
# 	scenario = request.forms.get('scenario')

# 	errors = validate_form(request.forms, ['scenario'])

# 	if errors is []:
# 		message = "Showing maps for scenario " + scenario + ":"
# 	else:
# 		message = errors

# 	return template("scenario_form.tpl", message=message)	
    



debug(True)
#Start the web server included in Bottle
#By default, the web server serves the pages on localhost and port 8080
app.run(reloader=True)