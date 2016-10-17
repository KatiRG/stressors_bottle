import sqlite3
from bottle import route, run, debug, template, request, static_file

#static files for e.g. css
@route('/static/<filename>')
def server_static(filename):
  return static_file(filename, root='static/')

#http://pwp.stevecassidy.net/bottle/forms-processing.html
@route('/')
def index():
    # return template("ex_form.tpl", message="Please enter your name")
    return template("scenario_form.tpl", message="Please select scenario", scenario="", mapFile="")

@route('/', method='POST')
def formhandler():
    scenario = request.forms.get('scenario')
    
    message = "Showing maps for scenario " + scenario + ":"
    map_var1 = 'Logo-compact.jpg'
    
    return template("scenario_form.tpl", message=message, scenario=scenario, mapFile=map_var1) 

@route('/images/<filename:re:.*\.jpg>')
def send_image(filename):
    return static_file(filename, root='images/', mimetype='image/jpg')


@route('/help')
def help():
	return static_file('help.html', root='.')

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
run(reloader=True)