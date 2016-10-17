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

#http://pwp.stevecassidy.net/bottle/forms-processing.html
@app.route('/')
def index():
    #return template("scenario_form.tpl", message="", scenario="")
    return template("template", message="", scenario="")

@app.route('/', method='POST')
def formhandler():
    scenario = request.forms.get('scenario')
    
    message = "Showing maps for scenario " + scenario + ":"    
    
    return template("template.tpl", message=message, scenario=scenario)    

# @app.route('/', method='POST')
# def formhandler():
#     scenario = request.forms.get('scenario')
    
#     message = "Showing maps for scenario " + scenario + ":"    
    
#     return template("scenario_form.tpl", message=message, scenario=scenario)


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